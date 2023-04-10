

import 'package:flutter/material.dart';
import 'package:untitled/bottomNavigation.dart';
import 'package:untitled/category.dart';
import 'package:untitled/header.dart';

class CategoriesPage extends StatelessWidget {
 final List<String> categories= [
"Üst Giyim",
    "Alt Giyim",
    "Dış Giyim",
    "Elbise",
    "Aksesuar",
    "Ayakkabı",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
    child: Stack(
    children: [
    Padding(
    padding: const EdgeInsets.symmetric(horizontal:16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     header("Kategoriler", context),
     SizedBox(height: 16,) ,

      Expanded(
        child:ListView(
        children:categories
            .map((String title) => buildCategory(title,context))
          .toList()),),
      ],
    ),
    ),
bottomNavigationBar("search"),


        ])));
  }
}

Widget buildCategory(String title,context,
    ){
  return GestureDetector(
    onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context){
  return CategoryPace(title);
}));
    },
    child: Container(
    padding: EdgeInsets.all(24),
    margin: EdgeInsets.only(bottom:16),
    width: double.infinity,
    decoration:BoxDecoration(
      color: Colors.pinkAccent,
      borderRadius: BorderRadius.circular(6),

    ),
    child: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
  ));
}