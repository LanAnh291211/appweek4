import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/values/strings.dart';

import '../../../shared/widgets/widges.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
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
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

//   Align _retote(double offsetx, double offsety, double rt, Color backgroundColor, double height, double width) {
//     return Align(
//       alignment: Alignment(offsetx, offsety),
//       child: RotationTransition(
//         turns: AlwaysStoppedAnimation(rt / 360),
//         child: Container(
//           height: height,
//           width: width,
//           decoration: BoxDecoration(color: backgroundColor),
//         ),
//       ),
//     );
//   }
}
