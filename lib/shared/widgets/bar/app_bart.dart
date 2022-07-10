import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/service/navigation_service.dart';
import 'package:nsg_biolabs/shared/widgets/icons/custom_icon.dart';

class CustomAppBar extends AppBar {
  final bool haveBackButton;
  final String? actionIcon;
  final String? labelTitle;
  final Widget? titleWidget;
  final void Function()? actionOnPressed;
  CustomAppBar( {
    this.haveBackButton = true,
    this.actionIcon,
     this.labelTitle,
    this.titleWidget,

    this.actionOnPressed,
  }) : super(
          leading: haveBackButton
              ? IconButton(
                  icon: const CustomIcon(
                    svgIcon: AppImages.icBack,
                    size: IconSize.small,
                  ),
                  onPressed: () => Navigator.pop(NavigationService.navigatorKey.currentContext!),
                )
              : null,
          actions: actionIcon != null
              ? [
                  IconButton(
                      icon: CustomIcon(
                        svgIcon: actionIcon,
                        size: IconSize.small,
                      ),
                      onPressed: actionOnPressed)
                ]
              : null,
          title: labelTitle != null ? Text(
            labelTitle,
            style: CustomTextStyle.bold(color: AppColors.black, fontSize: FontSize.veryLarge),
          ) : titleWidget,
          centerTitle: true,
          backgroundColor: Colors.white,
        );
}
