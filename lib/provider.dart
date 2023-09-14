
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bck/block/notes_cubit.dart';

class MainBloc{

  static List<Widget> allBloc(){
    return[
    Column(
      children: [
        BlocProvider(create: (ctx)=>NotesCubit()),
      ],
    ),
    ];
  }
}

