
import 'package:flutter/material.dart';
import 'package:foodcourt/dummy_data.dart';
import 'package:foodcourt/Models/cate.dart';
import 'package:foodcourt/widgets/category_item.dart';


class Categoryscreen extends StatelessWidget {
  final List<Category>categoryloaded=[
    Category(id: 'c1',
        title: 'Italian',
        imageurl: 'https://cashkaro.com/blog/wp-content/uploads/sites/5/2019/12/Italian-Food.jpg'
    ),
    Category(id: 'c2',
        title:'Chinese',
        imageurl: 'https://www.thestate.com/latest-news/z3t8p9/picture238660373/alternates/LANDSCAPE_1140/GettyImages-472188222.jpg'
    ),
    Category(
      id: 'c3',
      title: 'German',
      imageurl: 'https://res.cloudinary.com/wegowordpress/image/upload/h_500,w_750/v1533303091/Schnitzel_qfryve.jpg',
    ),
    Category(
      id: 'c4',
      title: 'South Indian',
      imageurl: 'https://qphs.fs.quoracdn.net/main-qimg-a8aefecd801a43f6e1ada1084217de07',
    ),
    Category(
      id: 'c5',
      title: 'North Indian',
      imageurl: 'https://davidsbeenhere.com/wp-content/uploads/2019/10/25_indian_Street_Foods_You_Must_Try_in_Mumbai_India2.jpg',
    ),
    Category(
      id: 'c6',
      title: 'French',
      imageurl: 'https://media.cntraveler.com/photos/5d4994058759db0008f75317/master/w_820,c_limit/Salmon%2520waterzooi_GettyImages-135596852.jpg',

    ),
    Category(
      id: 'c7',
      title: 'African',
      imageurl: 'https://flavorverse.com/wp-content/uploads/2017/06/South-African-Food.jpg',

    ),
    Category(
      id: 'c8',
      title: 'Arabian',
      imageurl: 'https://www.dontgobaconmyheart.co.uk/wp-content/uploads/2019/06/bbq-chicken-wrap-744x900.jpg',

    ),
    Category(
      id: 'c9',
      title: 'Indonesian',
      imageurl: 'https://baliandbeyond.co.id/gallery/teaser/8b9a0049f55cc89ddd638e95963b746a.jpg',

    ),
    Category(
      id: 'c10',
      title: 'Cakes',
      imageurl: 'https://mygoodnesskitchen.com/wp-content/uploads/2017/06/Beetroot-and-Chocolate-Cupcakes-2954-683x1024.jpg.webp',

    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text("FoodCourt")),
        body: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: categoryloaded.length,
          itemBuilder: (ctx,i)=>CategoryItem(categoryloaded[i].id,
          categoryloaded[i].title,
          categoryloaded[i].imageurl),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2/3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        )
    );
  }
}