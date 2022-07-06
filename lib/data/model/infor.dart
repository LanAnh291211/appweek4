import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/app_colors.dart';

class NotesModel {
  Color? color;
  String? title;
  String? time;
  String? subTitle;

  NotesModel({
    required this.color,
    this.title = '',
    this.subTitle = '',
    this.time,

  });
}

List<NotesModel> inforListDemo = [
  NotesModel(
    color: AppColors.burntSienna,
    time: '16/11/2021',
    title: 'Shopping List',
    subTitle: 
        'Neque egestas congue quisque egestas diam. Eu augue ut lectus arcu bibendum at varius vel pharetra. Aliquam faucibus purus in massa. Placerat duis ultricies lacus sed turpis tincidunt id. Adipiscing at in tellus integer feugiat. Pretium vulputate sapien nec sagittis. Integer enim neque volutpat ac tincidunt vitae. \n' +
        'Lectus quam id leo in vitae turpis massa sed. Amet justo donec enim diam vulputate ut pharetra sit. Aliquam ultrices sagittis orci a scelerisque purus semper eget duis. Id semper risus in hendrerit gravida. Lorem ipsum dolor sit amet consectetur. Turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie. \n' +
        'Duis at consectetur lorem donec massa. Pellentesque habitant morbi tristique senectus et netus et malesuada. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla.\n' +
        '',
  ),
  NotesModel(
    color: AppColors.portica,
    title: 'Reminder 29/11 ',
    subTitle: 'Go and buy a new pair of headphones - old ones are broken',
  ),
  NotesModel(
    color: AppColors.mediumOrchid,
    title: 'Shopping List ',
    time: '25/11/2021',
    subTitle: 
        'Neque egestas congue quisque egestas diam. Eu augue ut lectus arcu bibendum at varius vel pharetra. Aliquam faucibus purus in massa. Placerat duis ultricies lacus sed turpis tincidunt id. Adipiscing at in tellus integer feugiat. Pretium vulputate sapien nec sagittis. Integer enim neque volutpat ac tincidunt vitae. \n' +
        'Lectus quam id leo in vitae turpis massa sed. Amet justo donec enim diam vulputate ut pharetra sit. Aliquam ultrices sagittis orci a scelerisque purus semper eget duis. Id semper risus in hendrerit gravida. Lorem ipsum dolor sit amet consectetur. Turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie. \n' +
        'Duis at consectetur lorem donec massa. Pellentesque habitant morbi tristique senectus et netus et malesuada. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla.\n' +
        '',
  ),
  NotesModel(
    color: AppColors.seaBuckthorn,
    title: 'Reminder 23/11 ',
    subTitle: 'It’s little sis’ birthday - get her a gift or anything. Last resort is to just give an allowance.',
  ),
  NotesModel(
    color: AppColors.mediumAquamarine,
    title: 'Spending Nov 21 ',
    subTitle: 'It’s little sis’ birthday - get her a gift or anything. Last resort is to just give an allowance.',
  ),
];
