import 'package:flutter/material.dart';

class Button1 extends StatefulWidget {
final String? name;
final VoidCallback? func;

Button1({@required this.name, r, @required this.func});
  @override
  _Button1State createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: ElevatedButton(
        onPressed: widget.func,
        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          elevation: 5,          
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          fixedSize: Size(MediaQuery.of(context).size.width, 47,),
        ),                
        child: InkWell(
          child: Text(widget.name!,style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600)),
          
          )),
    );
    
  }
}