import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nectar/features/orders/presentation/view/widgets/invoice_view_body.dart';

class InvoiceView extends StatelessWidget {
  const InvoiceView({super.key, required this.file});
  final File file;
  @override
  Widget build(BuildContext context) {
    return InvoiceViewBody(
      file: file,
    );
  }
}
