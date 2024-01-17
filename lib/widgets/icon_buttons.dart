import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonScreen extends StatelessWidget {
  const IconButtonScreen({
    super.key,
    this.iconPath,
    this.color,
    this.iconMargin,
    this.iconPadding,
    this.iconWidth,
    this.iconHeight,
    this.borderColor,
    this.label,
    this.labelStyle,
  });

  final String? iconPath;
  final Color? color;
  final Color? borderColor;
  final double? iconHeight;
  final double? iconWidth;
  final EdgeInsetsGeometry? iconMargin;
  final EdgeInsetsGeometry? iconPadding;
  final String? label;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: iconWidth ?? 78,
        height: iconHeight ?? 40,
        margin: iconMargin ??
            const EdgeInsets.only(top: 53.5, bottom: 0, left: 9, right: 9),
        padding: iconPadding ?? const EdgeInsets.fromLTRB(29, 10, 29, 10),
        decoration: ShapeDecoration(
          color: color ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(width: 1, color: borderColor ?? Colors.white),
          ),
        ),
        child: Stack(
          children: [
            if (iconPath != null)
              SvgPicture.asset(
                iconPath!,
              ),
            if (label != null)
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  label!,
                  style: labelStyle,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
