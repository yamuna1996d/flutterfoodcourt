import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageurl;
  CategoryItem(this.id,this.title,this.imageurl);
//  final Color color;
//  CategoryItem(this.id,this.title,this.color);
  void selectCategory(BuildContext ctx){
    // Navigator.of(ctx).pushNamed(MaterialPageRoute(builder: (_){
    //   return CategoryMealsScreen(id,title);
    Navigator.of(ctx).pushNamed('/category-meals',
        arguments: {
          'id':id,
          'title':title,
        });
  }
  @override
  Widget build(BuildContext context) {
    return
      GridTile(
        child:GestureDetector(
          onTap: ()=>selectCategory(context),
            child: Image.network(imageurl,fit: BoxFit.cover,)),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(
        title,textAlign: TextAlign.right,),
      ),
    );

 }
//    return InkWell(
//      onTap:()=>selectCategory(context),
//      splashColor: Theme.of(context).primaryColor,
//      borderRadius: BorderRadius.circular(15),
//      child: Container(
//          padding: const EdgeInsets.all(15),
//          child:Image.network(imageurl,fit: BoxFit.cover,),
//
////          decoration: BoxDecoration(gradient: LinearGradient(colors: [color.withOpacity(0.7),
////            color,
////          ],
////              begin: Alignment.bottomCenter,
////              end: Alignment.bottomLeft),
////            borderRadius: BorderRadius.circular(15),
////
////          )),
//
//      ),
//    );
//
//  }
}