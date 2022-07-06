import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/config.dart';

class CustomFloatingActionButton extends FloatingActionButton {
  final void Function()? onPressed;
  CustomFloatingActionButton({this.onPressed})
      : super(
          backgroundColor: AppColors.nightRider,
          onPressed: onPressed,
          child: const Icon(Icons.add),
        );
}
