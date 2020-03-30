import 'package:flutter/material.dart';
import 'package:foodcourt/dummy_data.dart';
import 'package:foodcourt/widgets/mealitem.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;
  // CategoryMealsScreen(this.categoryId,this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routArgs=ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle=routArgs['title'];
    final categoryId=routArgs['id'];
    final categoryMeals=DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  Image.asset(
                 'assets/icons.jpeg',
                  fit: BoxFit.contain,
                  height: 60,
                  width: 40,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0), child: Text(categoryTitle))
            ],

          ),
      ),
      body: ListView.builder(itemBuilder: (ctx,index){
        return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity:categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability);

      },itemCount:categoryMeals.length ,),
      // body: Center(child: Text("The recipe of food!"),
      // )
    );
  }
}