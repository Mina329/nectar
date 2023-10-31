import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';

import '../../features/delivery_address/data/models/address_model/address_model.dart';
import '../../features/orders/data/models/order_details_model/order_details_model.dart';

class PdfInvoice {
  static Future<File> generate(
      OrderDetailsModel invoice, AddressModel? address) async {
    final pdf = Document();
    pdf.addPage(
      MultiPage(
        build: (context) => [
          buildHeader(invoice, address),
          SizedBox(height: 1 * PdfPageFormat.cm),
          buildTitle(invoice),
          buildInvoice(invoice),
          Divider(),
          buildTotal(invoice),
        ],
        pageFormat: PdfPageFormat.a4,
        footer: (context) => buildFooter(),
      ),
    );
    return PdfApi.saveDocument(name: 'my_invoice.pdf', pdf: pdf);
  }

  Future<File> saveDoc({required String name, required Document pdf}) async {
    final bytes = await pdf.save();
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');
    await file.writeAsBytes(bytes);
    return file;
  }

  static Widget buildHeader(OrderDetailsModel invoice, AddressModel? address) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 1 * PdfPageFormat.cm),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Order Id : ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(invoice.id!),
              Spacer(),
              Container(
                height: 50,
                width: 50,
                child: BarcodeWidget(
                  data: invoice.id!,
                  barcode: Barcode.qrCode(),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Date : ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                  '${invoice.createdAt!.day}/${invoice.createdAt!.month}/${invoice.createdAt!.year}'),
            ],
          ),
          SizedBox(height: 1 * PdfPageFormat.cm),
          Center(
            child: Text(
              'Client Info',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 0.3 * PdfPageFormat.cm),
                  buildText("Name : ",
                      "${invoice.user!.firstName ?? ''} ${invoice.user!.lastName ?? ''}"),
                  buildText(
                    "Email : ",
                    invoice.user!.email!,
                  ),
                  buildText(
                    "Phone Number : ",
                    invoice.user!.phoneNumber!,
                  ),
                  buildText(
                    "Date of Birth : ",
                    "${invoice.user!.dayOfBirth}",
                  )
                ],
              ),
              Spacer(),
              if (address != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 0.3 * PdfPageFormat.cm),
                    if (address.appartmentNumber != null)
                      buildText(
                          "Appartment Number : ", address.appartmentNumber!),
                    if (address.buildingNumber != null)
                      buildText("Building Number : ", address.buildingNumber!),
                    if (address.floor != null)
                      buildText("Floor : ", address.floor!),
                    if (address.street != null)
                      buildText("Street : ", address.street!),
                    if (address.district != null)
                      buildText("Neighbourhood : ", address.district!),
                    if (address.gorvernorate != null)
                      buildText("Gorvernorate : ", address.gorvernorate!),
                  ],
                ),
            ],
          ),
        ],
      );
  static Widget buildTitle(OrderDetailsModel invoice) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'INVOICE',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 0.8 * PdfPageFormat.cm),
        ],
      );
  static Widget buildFooter() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(),
          SizedBox(height: 2 * PdfPageFormat.mm),
          Text(
            'Nectar',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      );
  static Widget buildInvoice(OrderDetailsModel invoice) {
    final headers = [
      'Description',
      'Amount',
      'Date',
      'Quantity',
      'Unit Price',
      'Offer Price',
      'Total'
    ];
    final data = invoice.items!.map((item) {
      late double total;
      if (item.item!.offerPrice != 0) {
        total = item.qty! * item.item!.offerPrice!;
      } else {
        total = item.qty! * item.item!.price!;
      }

      return [
        item.item!.name,
        item.item!.qtyType,
        '${invoice.createdAt!.day}/${invoice.createdAt!.month}/${invoice.createdAt!.year}',
        item.qty.toString(),
        '${item.item!.price} \$',
        item.item!.offerPrice == 0 ? '-' : '${item.item!.offerPrice} \$',
        '${total.toStringAsFixed(2)} \$'
      ];
    }).toList();
    return TableHelper.fromTextArray(
        headers: headers,
        data: data,
        border: null,
        headerStyle: TextStyle(fontWeight: FontWeight.bold),
        headerDecoration: const BoxDecoration(color: PdfColors.grey300),
        cellHeight: 30,
        cellAlignments: {
          0: Alignment.centerLeft,
          1: Alignment.centerRight,
          2: Alignment.centerRight,
          3: Alignment.centerRight,
          4: Alignment.centerRight,
          5: Alignment.centerRight,
          6: Alignment.centerRight,
        });
  }

  static Widget buildTotal(OrderDetailsModel invoice) {
    final total = invoice.items!.map((item) {
      if (item.item!.offerPrice != 0) {
        return item.qty! * item.item!.offerPrice!;
      } else {
        return item.qty! * item.item!.price!;
      }
    }).reduce((value, element) => value + element);

    return Container(
      alignment: Alignment.centerRight,
      child: Row(
        children: [
          Spacer(flex: 6),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Price',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${total.toStringAsFixed(2)} \$',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 2 * PdfPageFormat.mm),
                Container(height: 1, color: PdfColors.grey400),
                SizedBox(height: 0.5 * PdfPageFormat.mm),
                Container(height: 1, color: PdfColors.grey400),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static buildText(String key, String value) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text(
        key,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        value,
      ),
    ]);
  }
}

class PdfApi {
  static Future<File> saveDocument({
    required String name,
    required Document pdf,
  }) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);

    return file;
  }

  static Future<void> share(Uint8List pdfData) async {
    await Printing.sharePdf(bytes: pdfData);
  }

  static Future<void> print(Uint8List pdfData) async {
    await Printing.layoutPdf(onLayout: (format) => pdfData);
  }
}
