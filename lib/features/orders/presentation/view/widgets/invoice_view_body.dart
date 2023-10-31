import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:nectar/core/utils/color_manager.dart';
import 'package:nectar/core/utils/pdf_invoice.dart';
import 'package:nectar/core/utils/strings_manager.dart';

class InvoiceViewBody extends StatelessWidget {
  const InvoiceViewBody({super.key, required this.file});
  final File file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.invoice.tr()),
        actions: [
          IconButton(
            onPressed: onPrint,
            icon: const Icon(Icons.print_outlined),
          ),
          IconButton(
            onPressed: onShare,
            icon: const Icon(Icons.share_outlined),
          ),
        ],
        backgroundColor: ColorManager.green,
      ),
      backgroundColor: ColorManager.green,
      body: PDFView(
        filePath: file.path,
      ),
    );
  }

  Future<void> onPrint() async {
    await PdfApi.print(await file.readAsBytes());
  }

  Future<void> onShare() async {
    await PdfApi.share(await file.readAsBytes());
  }
}
