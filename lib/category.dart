import 'package:flutter/material.dart';
import 'package:untitled/bottomNavigation.dart';
import 'package:untitled/detay.dart';
import 'package:untitled/header.dart';
class CategoryPace extends StatelessWidget{
  String categoryTitle;
  CategoryPace(this.categoryTitle);

   List<Map>products=[
    {"isim":"Crop","fiyat":"50  TL"},
    {"isim":"Sweat","fiyat":"90  TL"},
    {"isim":"Body","fiyat":"75  TL"},
    {"isim":"Kazak","fiyat":"80  TL"},
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SafeArea(
        child: Stack(
        children: [
        Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      header(categoryTitle, context),
        SizedBox(height: 32,),
        Expanded(
          child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 13,
crossAxisSpacing: 10,
          children: products.map((Map product) => buildContent(

              product["isim"],product["fiyat"],context,

          ),).toList(),
        ),
        ),
      ],),
        ),
//bottomNavigation
bottomNavigationBar("search"),

        ])));
  }
}
Widget buildContent(String title,String price,context){
return   GestureDetector(
  onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return ProductDetayPage(title);
    }));
  },
     child: Container(

      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 16),

      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(6),

        color: Colors.pinkAccent,

      ),

      child: Column(children:[

        SizedBox(height: 16),

        Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),

        SizedBox(height: 16),

        Text(price,style: TextStyle(color:Colors.white,fontSize: 13 ),),

      ],),

    ),

);
}