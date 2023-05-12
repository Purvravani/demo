import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'student_bloc.dart';
import 'student_event.dart';

class StudentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => StudentBloc()..add(InitEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<StudentBloc>(context);

    return Scaffold();
  }
}

