import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/extensions/image_assets_path_extension.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController? controller;
  final double borderRadius;
  final String? Function(String?)? validator; // SOlid và denpencies injection, khi dung getx
  final String? suffixIcon;
  final String? prefixIcon;
  final bool obscureText;
  final double suffixIconSize;
  final double prefixIconSize;
  final bool haveOutlineBorder;
  final TextInputType? keyboardType;
  final void Function()? suffixIconOnTap;
  final void Function()? prefixIconOnTap;
  final int? minLine;
  final int? maxLine;
  final TextStyle? style;
  final TextStyle? hintStyle;

  const CustomTextField({
    super.key,
    this.label = "",
    required this.hintText,
    this.borderRadius = AppRadius.radius5,
    this.controller,
    this.suffixIcon,
    this.validator,
    this.suffixIconSize = IconSize.verySmall,
    this.keyboardType,
    this.suffixIconOnTap,
    this.obscureText = false,
    this.prefixIcon,
    this.prefixIconOnTap,
    this.prefixIconSize = IconSize.small,
    this.haveOutlineBorder = true,
    this.minLine = 1,
    this.maxLine = 1,
    this.style,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: label.isEmpty ? false : true,
          child: Container(
              margin: const EdgeInsets.only(bottom: Space.spacing7),
              child: Text(
                label,
              )),
        ),
        TextFormField(
          validator: validator,
          keyboardType: keyboardType,
          controller: controller,
          obscureText: obscureText,
          maxLines: maxLine,
          minLines: minLine,
          style: style,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: hintStyle,
              prefixIcon: prefixIcon == null
                  ? null
                  : Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: Space.spacing14,
                      ),
                      child: GestureDetector(
                        onTap: prefixIconOnTap,
                        child: SvgPicture.asset(
                          prefixIcon!.getSVGImageAssets,
                        ),
                      ),
                    ),
              suffixIcon: suffixIcon == null
                  ? null
                  : Container(
                      margin: const EdgeInsets.only(right: Space.spacing21),
                      child: GestureDetector(
                        onTap: suffixIconOnTap,
                        child: SvgPicture.asset(
                          suffixIcon!.getSVGImageAssets,
                        ),
                      ),
                    ),
              suffixIconConstraints: BoxConstraints(maxHeight: suffixIconSize),
              prefixIconConstraints: BoxConstraints(maxHeight: prefixIconSize),
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: Space.spacing14, vertical: Space.spacing16),
              border: haveOutlineBorder
                  ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(borderRadius),
                      borderSide: const BorderSide(color: AppColors.gainsboro),
                    )
                  : InputBorder.none),
        )
      ],
    );
  }
}
