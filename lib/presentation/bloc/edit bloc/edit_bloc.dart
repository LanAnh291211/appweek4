// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'edit_event.dart';
part 'edit_state.dart';

class EditBloc extends Bloc<EditEvent, EditState> {
  EditBloc() : super(DisableEditState()) {
    on<PressEditEvent>(_onEdit);
  }

  void _onEdit(EditEvent event, Emitter<EditState> emit) {
    final state = this.state;
    if (state is DisableEditState) 
      emit(EnableEditState());
    else 
      emit(DisableEditState());
    
  }
}
