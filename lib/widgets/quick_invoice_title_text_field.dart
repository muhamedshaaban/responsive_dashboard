import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class QuickInvoiceTitlTextField extends StatelessWidget {
  const QuickInvoiceTitlTextField(
      {super.key, required this.hintText, required this.title});

  final String hintText, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xffFAFAFA),
              hintText: hintText,
              hintStyle: AppStyles.styleRegular16(context)
                  .copyWith(color: const Color(0xffAAAAAA)),
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder()),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xffFAFAFA)));
  }
}
