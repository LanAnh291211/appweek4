// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nsg_biolabs/presentation/bloc/todo_bloc.dart';
import 'package:nsg_biolabs/presentation/pages/note/add_note_page.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/widgets/widges.dart';

import '../../../shared/values/strings.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      appBar: CustomAppBar(
        labelTitle: AppString.notes,
        haveBackButton: false,
      ),
      children: [
        const CustomTextField(
          hintText: AppString.searchNote,
          prefixIcon: AppImages.icSearch,
        ),
        const SizedBox(
          height: Space.spacing15,
        ),
        _listviewItem(),
      ],
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) =>  AddNotePage()),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: Space.spacing17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<TodosBloc, TodoState>(
              builder: (context, state) {
                if (state is TodoLoadedState) {
                  return Text('${state.todos.length} ${AppString.notes}');
                }
                return const Text(AppString.loading);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _listviewItem() {
    return BlocBuilder<TodosBloc, TodoState>(
      builder: (context, state) {
        if (state is TodoLoadingState) {
          return const CircularProgressIndicator();
        }
        if (state is TodoLoadedState) {
          return Expanded(
              child: ListView.builder(
            // separatorBuilder: ( context,  index) => CustomSizedBox(height: 10,),
            shrinkWrap: true,
            itemCount: state.todos.length,
            itemBuilder: (BuildContext context, int index) => GestureDetector(
              child: NoteItem(info: state.todos[index]),
              // onTap: () => Navigator.of(context).push(
              //   MaterialPageRoute(
              //       builder: (context) => NoteDetail(
              //             info: state[index],
              //           )),
              // ),
            ),
          ));
        }
        return const Text(AppString.error);
      },
    );
  }
}
