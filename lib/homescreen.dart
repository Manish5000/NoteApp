import 'package:boscassignment/models/note.dart';
import 'package:boscassignment/models/note_operation.dart';
import 'package:boscassignment/widgets/dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? getvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
       floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => Showdialog())));
        },
      ),
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.blue,
        title: Text('Notes App'),
        centerTitle: true,
        elevation: 0,
      ),
     
      backgroundColor: Colors.white,
      body: Consumer<NotesOperation>(
        builder: (context, NotesOperation data, child)  {
          return ListView.builder(
            itemCount: data.getNotes.length,
            itemBuilder: (context, index) {
              return NotesCard(data.getNotes[index]);
            }
            );
        },
        
      ),
    );
  }
}

class NotesCard extends StatelessWidget {
  final Note notes;

  NotesCard(this.notes);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(notes.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text(notes.description,style: TextStyle(fontSize: 17),)
        ],
      ),
    );
  }
}

// 