import 'package:bloc/bloc.dart';

import 'student_event.dart';
import 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentState().init()) {
    on<InitEvent>(_init);
  }

  void _init(InitEvent event, Emitter<StudentState> emit) async {
    emit(state.clone());
  }
}
