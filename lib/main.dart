import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/bck/block/notes_cubit.dart';
import 'package:notes/scr/main_scr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
          title: 'Notes App',
          
          home: MainScreen()
        ),
    );
  }
  
}



class MainBloc{

  static List allBloc(){
    return[
    BlocProvider(create: (ctx)=>NotesCubit()),
    ];
  }
}