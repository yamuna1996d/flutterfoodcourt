import 'package:flutter/material.dart';
import 'package:foodcourt/Screens/chiewe.dart';
import 'package:google_fonts/google_fonts.dart';
import '../dummy_data.dart';
import 'package:chewie/chewie.dart';
import '../Screens/chiewe.dart';
import 'package:video_player/video_player.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal_detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.blueGrey,
          ),
          borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: child,
    );
  }

  Widget videoContainer(Widget child) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.blueGrey,
          ),
          borderRadius: BorderRadius.circular(20)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealid = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealid);
    return Scaffold(
      appBar: AppBar(
          title: Text(
        '${selectedMeal.title}',
        style: GoogleFonts.dancingScript(
            color: Colors.brown,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900,
            fontSize: 25),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'Ingredients'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Colors.lightGreen,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(selectedMeal.ingredients[index]),
                  ),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            buildSectionTitle(context, 'Steps'),
            buildContainer(ListView.builder(
              itemBuilder: (ctx, index) => Column(children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Text('# ${(index + 1)}'),
                  ),
                  title: Text(
                    selectedMeal.steps[index],
                  ),
                ),
                Divider(),
              ]),
              itemCount: selectedMeal.steps.length,
            )),
            buildSectionTitle(context, 'Video'),
            Container(
              child: RaisedButton(onPressed: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) => 
                 ChewieListItem(playerController:VideoPlayerController.asset(
                   selectedMeal.vedioUrl,
                 ) )),
  );
              },
              child:Text("Video",style: TextStyle(color: Colors.black),)),
            ),
          ],
        ),
      ),
    );
  }
}
