import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/widgets/widges.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final Color labelColor;
  final Color? buttonColor;
  final double? width;
  final double verticalPadding;
  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.width,
    this.labelColor = Colors.white,
    this.verticalPadding = Space.spacing16,
    this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        onPrimary: labelColor,
        textStyle: CustomTextStyle.regular(),
        primary: buttonColor,
        padding: CustomEdgeInsets.symmetric(vertical: verticalPadding.h),
        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(
        //       LayoutNotifier().sizeToBorderRadiusSize(borderRadius),
        //     ),
        //     side: borderColor != null
        //         ? BorderSide(
        //             width: borderWidth,
        //             color: borderColor!,
        //           )
        //         : BorderSide.none,
        //   ),
        fixedSize: Size.fromWidth(width ?? Get.width),
      ),
      child: Text(label.tr),
    );
  }
}
