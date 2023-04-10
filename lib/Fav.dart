import 'package:flutter/material.dart';
import 'package:untitled/bottomNavigation.dart';
import 'header.dart';

class IndirimPage extends StatelessWidget{
  List<Map> products=[
    {"isim":"Siyah Mont","fiyat":"200 TL"},
    {"isim":"Cat Bot","fiyat":"250 Tl"},
    {"isim":"Atkı Bere Takım","fiyat":"150 TL"},
    {"isim":"Mavi Kazak","fiyat":"60 TL"},
    {"isim":"Kırmızı Kazak","fiyat":"60 TL"},
    {"isim":"Beyaz Mont","fiyat":"250 TL"},
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
                        header("İndirimdekiler", context),
                        SizedBox(height: 32,),

                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 13,
                            crossAxisSpacing: 10,
                            children: products.map((Map product) => buildContent(

                              product["isim"],product["fiyat"],

                            ),).toList(),
                          ),
                        ),
                      ],),
                  ),
//bottomNavigation
                  bottomNavigationBar("cart"),

                ])));
  }
}

Widget buildContent(String title,String price){
 return Container(
   padding: EdgeInsets.symmetric(horizontal: 12,vertical: 16),
   decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(6),
     color: Colors.pinkAccent,
   ),
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
     SizedBox(height: 16,),

     Column(children: [
       Text(title,style: TextStyle(
         color: Colors.black,
         fontSize: 16,
         fontWeight: FontWeight.w500,
       ),),
       Text(price,style: TextStyle(
         color: Colors.black,
         fontSize: 12,
         fontWeight: FontWeight.w500,
       ),)
     ],)
   ],),
 );
}