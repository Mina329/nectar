import 'dart:developer';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

import '../../features/orders/data/models/order_details_model/order_details_model.dart';

class PdfInvoice {
  static Future<File> generate(OrderDetailsModel invoice) async {
    final pdf = Document();
    pdf.addPage(MultiPage(
      build: (context) => [buildTitle(invoice)],
    ));
    return PdfApi.saveDocument(name: 'my_invoice.pdf', pdf: pdf);
  }

  Future<File> saveDoc({required String name, required Document pdf}) async {
    final bytes = await pdf.save();
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');
    await file.writeAsBytes(bytes);
    return file;
  }

  static Widget buildTitle(OrderDetailsModel invoice) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'INVOICE',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 0.8 * PdfPageFormat.cm),
      ]);
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

  static Future openFile(File file) async {
    final url = file.path;
    log('message');
    await OpenFile.open(url);
  }
}
