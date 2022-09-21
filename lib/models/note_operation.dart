import 'package:boscassignment/models/note.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesOperation extends ChangeNotifier{
  List<Note> _notes = [];
  
  List<Note> get getNotes {
    return _notes;
  }

NotesOperation(){
  addNewNotes('Title', 'Description');
}

  void addNewNotes(String title, String description){
    Note note = Note(title,description);
    _notes.add(note);
    notifyListeners();
  }
}