// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nsg_biolabs/presentation/pages/booking/note_detail.dart';
import 'package:nsg_biolabs/presentation/pages/booking/note_page.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/widgets/widges.dart';

import '../../../bloc/bloc_bloc.dart';
import '../../../data/model/infor.dart';
import '../../../shared/values/strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ToDoListBloc(),
      child: BlocConsumer<ToDoListBloc, ToDoListState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return ScreenFrame(
            appBar: CustomAppBar(
              labelTitle: AppString.notes,
              // titleWidget: Container(
              //   color: Colors.amber,
              //   width: 12,
              //   height: 12,
              // ),
              haveBackButton: false,
            ),
            children: [
              const CustomTextField(
                hintText: AppString.searchNote,
                prefixIcon: AppImages.icSearch,
              ),
              CustomSizedBox(
                height: Space.spacing15,
              ),
              
                
                  _listviewItem(state),
                

              // ConstrainedBox(
              //   constraints: BoxConstraints(),
              //   child: SingleChildScrollView(
              //     scrollDirection: Axis.vertical,

              //     child: Column(
              //       children: List.generate(inforListDemo.length, (index) => _item(inforListDemo[index])),
              //     ),
              //   ),
              // ),
            ],
            floatingActionButton: CustomFloatingActionButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => NotePage()),
              ),
            ),
            bottomNavigationBar: Padding(
              padding: CustomEdgeInsets.symmetric(vertical: Space.spacing17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${state.list.length} ${AppString.notes}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _listviewItem(ToDoListState state) {
     switch (state.type) {
      case ToDoStateType.initial:
        return Container(
          color: Colors.red,
        );

      case ToDoStateType.loaded:
    return Expanded(
        child: ListView.builder(
      // separatorBuilder: ( context,  index) => CustomSizedBox(height: 10,),
      shrinkWrap: true,
      itemCount: state.list.length,
      itemBuilder: (BuildContext context, int index) => GestureDetector(
        child: NoteItem(info: list[index]),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => NoteDetail(
                    info: state.list[index],
                  )),
        ),
      ),
    )); default:
        return Container(
          color: Colors.green,
        );
    }
  }
}
