
import 'package:flutter/material.dart';
import 'package:untitled/Fav.dart';
import 'package:untitled/bottomNavigation.dart';
import 'package:untitled/Sepet.dart';
import 'package:untitled/satanlar.dart';
import 'package:untitled/kategori.dart';
void main(){runApp(MaterialApp(home: HomePage(),));}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=> _HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16.0),
                child: Column(
                  children: [
                        //BASLIK
                        buildBaslik(),
                    //BANNER
                    buildBanner(),
                    //BUTONLAR
                    Padding(padding:EdgeInsets.only(top:48),child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      //ilk eleman

                        buildNavigation(text:"Kategoriler", icon:Icons.menu,widget:CategoriesPage(),context: context,),
                        buildNavigation(text:"İndirimdekiler", icon:Icons.star,widget: IndirimPage(),context: context,),
                        buildNavigation(text:"Sepetim", icon:Icons.shopping_cart,widget: ShopPage(),context: context,),
                        buildNavigation(text:"Çok Satanlar", icon:Icons.people,widget: SellingPage(),context: context,),
],),),
                    SizedBox(height: 40),
                    //İNDİRİM
                    Text("İNDİRİMDEKİLER",
style: TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 27,
  color: Colors.black,
),),
                    SizedBox(height: 16),

                    //indirim itemleri
                    buildSaleItem(text:"MONT ve KABANLAR", discount: "-40% a varan",),
                    buildSaleItem(text: "BOTLAR", discount: "-50% ye varan"),
                    buildSaleItem(text: "ATKI ve BERELER", discount:"-25% e varan"),
                  ],
    ),
              ),
             bottomNavigationBar("home"),
            ],
          ),
        ),
      );
  }
}

Widget buildNavIcon({required IconData iconData,required bool active}){
return Icon(iconData,
  size: 20,color: Color(active ? 0xFF0001FC:0xFFF0A1034));
}
Widget buildBaslik(){
  return Padding(
    padding: const EdgeInsets.only(top:24.0),
    child: Text(
      "ZEREN GİYİM" ,
      style: TextStyle(
        fontSize:32,
        color: Colors.pink,
        fontWeight:FontWeight.bold,
      ),
    ),
  );
}

Widget buildBanner() {
  return Padding(
      padding: EdgeInsets.only(top: 24),

      child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(6)),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    "%50'ye Varan Sezon Sonu İndirimi",
                    style: TextStyle(
                      color: Colors.white,
                    ),

                  ),
                ],
              ),
            ],
          )));
}

Widget buildNavigation({
  required String text,
  required IconData icon,
  Widget? widget,
  BuildContext? context,

}){

  return GestureDetector(
    onTap: (){
      Navigator.push(context!, MaterialPageRoute(builder: (context) {
 return widget!;
      }));
    },
    child:Column(
    children:[
      Container(
        padding:EdgeInsets.symmetric(
            horizontal:19,vertical:22),
        decoration:BoxDecoration(
            shape:BoxShape.circle,
            color:Colors.pink),
        child:Icon(
          icon,
          color:Colors.white,
          size:18,
        ),
      ),
      Text(text,style:TextStyle(
        color:Colors.pink,
        fontSize:14,
        fontWeight: FontWeight.w700,
      )),

    ],
    ),
  );
}

Widget buildSaleItem({required String text,required String discount,}){
  return Container(
    padding: EdgeInsets.only(left: 12,top: 12,bottom: 21,right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: (300),
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.black),
          child:Text(
          discount,
            style: TextStyle(color:Colors.white,fontSize: 13 ),
          ),),
        SizedBox(height: 22),
        Text(text,
          style: TextStyle(
            fontSize: 18,color: Colors.pink,),),
      ],
    ),
  );
}






