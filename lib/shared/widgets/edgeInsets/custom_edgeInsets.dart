import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/config.dart';

class CustomEdgeInsets extends EdgeInsets {
  CustomEdgeInsets.only({
    double top = 0,
    double bottom = 0,
    double right = 0,
    double left = 0,
  }) : super.only(
          top: top.h,
          bottom: bottom.h,
          right: right.w,
          left: left.w,
        );

  CustomEdgeInsets.symmetric({
    double horizontal = 0,
    double vertical = 0,
  }) : super.symmetric(
          vertical: vertical.h,
          horizontal: horizontal.w,
        );
}
