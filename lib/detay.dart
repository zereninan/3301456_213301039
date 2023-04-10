import 'package:flutter/material.dart';
import 'package:untitled/bottomNavigation.dart';
import 'package:untitled/header.dart';

class ProductDetayPage extends StatefulWidget {
  String productTitle;
  ProductDetayPage(this.productTitle);
  @override
  _ProductDetayPageState createState() => _ProductDetayPageState();
}

class _ProductDetayPageState extends State<ProductDetayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(widget.productTitle, context),
                  SizedBox(height: 32,),

                ],
              ),
            ),
            bottomNavigationBar("search"),
          ],
        ),
      ),
    );
  }
}
