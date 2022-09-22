import 'package:boscassignment/models/note.dart';
import 'package:boscassignment/models/note_operation.dart';
import 'package:boscassignment/widgets/dialogue.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
       floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => Showdialog())));
        },
      ),
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.white,
        title: Text('Notes App',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 3,
      ),
     
      backgroundColor: Colors.green,
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
      height: MediaQuery.of(context).size.height*0.2,
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