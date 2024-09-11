import 'package:flutter/material.dart';
import 'custom_bcackground_container.dart';
import 'quick_invoice_forms.dart';
import 'quick_invoice_header.dart';
import 'quick_invoice_latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        QuickInvoiceLatestTransaction(),
        Divider(
          height: 30,
          color: Color(0xffF1F1F1),
        ),
        QuickInvoiceForms(),
        QuickInvoiceCustomButtons()
      ],
    ));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor});

  final String text;
  final Color backgroundColor, textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 42,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0,
                backgroundColor: backgroundColor),
            onPressed: () {},
            child: Text(text,
                style: TextStyle(
                    fontSize: 18,
                    color: textColor,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600))));
  }
}

class QuickInvoiceCustomButtons extends StatelessWidget {
  const QuickInvoiceCustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
          child: CustomButton(
        textColor: Color(0xff4EB7F2),
        text: 'Add more details',
        backgroundColor: Colors.white,
      )),
      SizedBox(
        width: 12,
      ),
      Expanded(
          child: CustomButton(
        textColor: Colors.white,
        text: 'Send Money',
        backgroundColor: Color(0xff4EB7F2),
      )),
    ]);
  }
}
