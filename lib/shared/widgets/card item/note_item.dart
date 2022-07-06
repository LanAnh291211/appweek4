import 'package:flutter/material.dart';
import 'package:nsg_biolabs/presentation/pages/pages.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/widgets/widges.dart';

import '../../../data/model/infor.dart';

class NoteItem extends StatelessWidget {
  final NotesModel info;

  const NoteItem({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const NotePage()),
      ),
      child: Container(
        margin: CustomEdgeInsets.symmetric(vertical: Space.spacing5),
        height: ShapeSize.size150.h,
        width: ShapeSize.size366.w,
        // margin: CustomEdgeInsets.only(bottom: Space.spacing15),
        padding: CustomEdgeInsets.symmetric(horizontal: Space.spacing32, vertical: Space.spacing20),
        decoration: BoxDecoration(
          color: info.color,
          borderRadius: BorderRadius.circular(AppRadius.radius5),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.5),
          //     spreadRadius: 5,
          //     blurRadius: 7,
          //     offset: Offset(1, 2), // changes position of shadow
          //   ),
          // ],
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              info.title!,
              style: CustomTextStyle.bold(color: AppColors.black, fontSize: FontSize.veryLarge),
            ),
            Expanded(
              child: Container(
                margin: CustomEdgeInsets.only(
                  top: Space.spacing8,
                  bottom: Space.spacing12,
                ),
                height: 93,
                child: Text(
                  info.subTitle!,
                  style: CustomTextStyle.regular(color: AppColors.black, fontSize: FontSize.verySmall),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
