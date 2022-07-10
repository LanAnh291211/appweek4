import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/extensions/image_assets_path_extension.dart';

class CustomIcon extends StatelessWidget {
  final String? svgIcon;
  final IconData? icon;
  final Color? color;
  final double size;
  final double? width;

  const CustomIcon({
    Key? key,
    this.svgIcon,
    this.icon,
    this.color,
    this.size = IconSize.medium,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: svgIcon != null ? true : false,
      replacement: Icon(
        icon,
        color: color,
        size: size,
      ),
      child: SvgPicture.asset(
        "$svgIcon".getSVGImageAssets,
        height: size,
        width: width != null ? width! : null,
        color: color,
      ),
    );
  }
}
