import 'package:boscassignment/models/note_operation.dart';
import 'package:boscassignment/widgets/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Showdialog extends StatefulWidget {
  const Showdialog({ Key? key }) : super(key: key);

  @override
  State<Showdialog> createState() => _ShowdialogState();
}

class _ShowdialogState extends State<Showdialog> {
 
  String? title;
  String? description;
    
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 10,
        content: Column(
          mainAxisSize: MainAxisSize.min,

children: [
  Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
TextFormField(      
  onChanged: (value) {
    title = value;
  },              
                decoration: InputDecoration(                
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300)),
                  focusedBorder: OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
  ),
                  fillColor: Colors.grey.shade300,
                  filled: true,                                    
                  hintText: 'Enter Title',labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 14 ),
                  
                ),
              ),
              SizedBox(height: 25,),
              TextFormField(   
                onChanged: (value) {
    description= value;   
                },
                decoration: InputDecoration(                
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300)),
                  focusedBorder: OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
  ),
                  fillColor: Colors.grey.shade300,
                  filled: true,                                    
                  hintText: 'Enter Description',labelStyle: TextStyle(color: Colors.black, fontSize: 14 ),
                  
        )
),
  SizedBox(height: 50,),
Button1(name: 'Add', func: (){
  Provider.of<NotesOperation>(context,listen: false).addNewNotes(title!, description!);
  Navigator.pop(context);
})
  //  Navigator.push(context, MaterialPageRoute(builder: ((context) => Loginwithmail())));

    ]),
  )
  
  
],      ),
    );
    
        }  }