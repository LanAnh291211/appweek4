import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/values/strings.dart';

import '../../../shared/widgets/widges.dart';


class EditNotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      appBar: CustomAppBar(),
      children: [
        CustomTextField(
          hintText: AppString.enterTitle,
          hintStyle: CustomTextStyle.bold(color: AppColors.nobel, fontSize: FontSize.veryBig),
          haveOutlineBorder: false,
          style: CustomTextStyle.bold(fontSize: FontSize.veryBig),
        ),
        CustomTextField(
          hintText: AppString.enterContent,
          haveOutlineBorder: false,
          maxLine: null,
          style: CustomTextStyle.regular(),
        ),
      ],
    );
  }
}
