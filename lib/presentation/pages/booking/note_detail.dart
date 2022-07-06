// import 'package:flutter/material.dart';
// import 'package:nsg_biolabs/shared/config/config.dart';

// import '../../../data/model/infor.dart';
// import '../../../shared/widgets/widges.dart';

// class NotePage extends StatefulWidget {
//   const NotePage({Key? key}) : super(key: key);

//   @override
//   State<NotePage> createState() => _NotePageState();
// }

// class _NotePageState extends State<NotePage> {
//   late final NotesModel info;
//   @override
//   Widget build(BuildContext context) {
//     return ScreenFrame(
//       appBar: CustomAppBar(),
//       children: [
//         Text(
//           info.title!,
//           style: CustomTextStyle.bold(
//             fontSize: FontSize.veryBig,
//           ),
//         ),
//         Container(
          
//           child: Text(
//             info.subTitle!,
//             style: CustomTextStyle.regular(fontSize: FontSize.veryLarge),
//           ),
//         ),
//       ],
//       bottomNavigationBar: CustomBottomNavigationBar(),
//     );
//   }

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
// }
import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/widgets/widges.dart';

import '../../../data/model/infor.dart';
import '../../../shared/config/config.dart';
import '../../../shared/widgets/screen_frame/screen_frame.dart';

class NoteDetail extends StatelessWidget {
  final NotesModel info;
  final  bool haveTime  ;
  const NoteDetail({Key? key, required this.info,  this.haveTime=true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      appBar: CustomAppBar(),
      
      children: [
        Text(
          info.title!,
          style: CustomTextStyle.bold(
            fontSize: FontSize.veryBig,
          ),
        ),
        Padding(
          padding: CustomEdgeInsets.symmetric(vertical: Space.spacing40),
          child: Text(
            haveTime ?  info.time!  : '',
              style: CustomTextStyle.regular(fontSize: FontSize.veryLarge),
            ),
        ),
        Text(
         info.subTitle! ,
          style: CustomTextStyle.regular(fontSize: FontSize.veryLarge),
        ),
      ],
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
