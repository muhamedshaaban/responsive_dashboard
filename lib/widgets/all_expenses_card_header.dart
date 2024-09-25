import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class AllExpItemHeader extends StatelessWidget {
  const AllExpItemHeader(
      {super.key,
      required this.image,
      this.imageBackgroundColor,
      this.imageColor});
  final String image;
  final Color? imageBackgroundColor, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                    shape: const OvalBorder(),
                    color: imageBackgroundColor ?? const Color(0xfffafafa)),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? const Color(0xff4eb7f2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Icon(
          Icons.keyboard_arrow_right_rounded,
          color: imageColor == null ? const Color(0xff064061) : Colors.white,
        ),
      ],
    );
  }
}
