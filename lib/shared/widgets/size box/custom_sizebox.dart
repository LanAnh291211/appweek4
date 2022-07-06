import 'package:flutter/cupertino.dart';
import 'package:nsg_biolabs/shared/config/config.dart';

class CustomSizedBox extends SizedBox {
  CustomSizedBox({
    double width = 0,
    double height = 0,
  }) : super(
          width: width.w,
          height: height.h,
        );
}
