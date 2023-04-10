import 'package:flutter/material.dart';
import 'package:untitled/bottomNavigation.dart';
import 'header.dart';

class ShopPage extends StatelessWidget{
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
                        header("Sepetim", context),
                        SizedBox(height: 32,),
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 13,
                            crossAxisSpacing: 10,
                          ),
                        ),
                      ],),
                  ),
//bottomNavigation
                  bottomNavigationBar("cart"),

                ])));
  }
}
