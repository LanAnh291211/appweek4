import 'package:flutter/material.dart';
import 'package:nsg_biolabs/data/model/infor.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/values/strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/bloc_bloc.dart';
import '../../../shared/widgets/widges.dart';

class NotePage extends StatelessWidget {
  const NotePage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    TextEditingController controllerTitle = TextEditingController();
    TextEditingController controllerSubTitle = TextEditingController();
    return BlocProvider(
      create: (context) => ToDoListBloc(),
      child: BlocConsumer<ToDoListBloc, ToDoListState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(),
            body: Column(
              children: [
                CustomTextField(
                  controller: controllerTitle,
                  hintText: AppString.enterTitle,
                  hintStyle: CustomTextStyle.bold(color: AppColors.nobel, fontSize: FontSize.veryBig),
                  haveOutlineBorder: false,
                  style: CustomTextStyle.bold(fontSize: FontSize.veryBig),
                ),
                CustomTextField(
                  controller: controllerSubTitle,
                  hintText: AppString.enterContent,
                  haveOutlineBorder: false,
                  maxLine: null,
                  style: CustomTextStyle.regular(),
                ),
                ElevatedButton(
                  onPressed: () {
                    var todo = NotesModel(
                      color: Colors.blue,
                      title: controllerTitle.value.text,
                      subTitle: controllerSubTitle.value.text,
                    );
                    context.read<ToDoListBloc>().add(Add(todo));
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                  ),
                  child: const Text('Add ToDo'),
                ),
              ],
            ),
          );
        },
      ),
    );

    // bottomNavigationBar: CustomBottomNavigationBar(),
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
