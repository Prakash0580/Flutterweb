import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/bck/resp/notes_repo.dart';

// // Notes Cubit////

class NotesCubit extends Cubit<NotesState> {
  NotesRepo notesRepo = NotesRepo();
  NotesCubit() : super(NotesInitialState());

  void notesGetCubit() async {
    emit(LoadingState());
    try {
      var res = await notesRepo.getAllData();
      if (res['success'] == true) {
        emit(SuccessState(data: res['data']));
      } else {
        emit(NotesInitialState());
      }
    } catch (e) {
      emit(ErrorState());
    }
  }

  void notesPostCubit({dynamic data, BuildContext? context}) async {
    emit(LoadingState());

    try {
      var res = await notesRepo.createData();
       if (res['success'] == true) {
        emit(SuccessState(data: res['data']));
      } else {
        emit(NotesInitialState());
      }
    } catch (e) {
      emit(ErrorState());
    }
  }
}

// // Notes State////

abstract class NotesState extends Equatable {
  NotesState();
  @override
  List<Object> get props => [];
}

class NotesInitialState extends NotesState {}

class LoadingState extends NotesState {}

class SuccessState extends NotesState {
  final dynamic? data;
  SuccessState({this.data});
}

class ErrorState extends NotesState {
  final String? messege;
  ErrorState({this.messege});
}
