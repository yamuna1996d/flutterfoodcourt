import 'package:flutter/material.dart';
import 'package:foodcourt/Screens/Category.dart';
import 'package:foodcourt/Screens/category_screen.dart';
import 'package:foodcourt/Screens/meal_deatail.dart';

void main() => runApp(Food());

class Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Cook Book',
      theme:ThemeData(primarySwatch: Colors.lightGreen,
          accentColor: Colors.brown,
          canvasColor: Colors.brown,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1:TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2:TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoCondensed'
              )
          )
      ),
      home:Categoryscreen() ,
      routes: {
        '/category-meals':(ctx)=>CategoryMealsScreen(),
        '/meal_detail':(ctx)=>MealDetailScreen(),
      },

    );
  }
}