import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/bck/block/notes_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NotesApp"),
      ),
      body: BlocBuilder(
        bloc: BlocProvider.of<NotesCubit>(context)..notesGetCubit(),
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(
                child: CircularProgressIndicator(
              strokeWidth: 2,
            ));
          }
          if (state is SuccessState) {
            print("data1: ${state.data}");
            List dataLst = state.data;
            return Text(
              "Name: ${dataLst[2]["userId"]}",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
