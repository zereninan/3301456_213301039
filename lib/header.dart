import 'package:flutter/material.dart';
Widget header(String title,context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 29),
//Geri işareti
    GestureDetector(
  onTap: (){
    Navigator.pop(context);
  },
     child: Icon(Icons.arrow_back_outlined,color: Colors.black,size:30),),
      SizedBox(height:24),
      //Kategoriler
      Text(title,style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Colors.pink,
      ),),

    ],

  );

}