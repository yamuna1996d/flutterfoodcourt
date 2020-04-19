import 'package:flutter/material.dart';
class Category {
  final String id;
  final String title;
  final String imageurl;
  final color;
  const Category({@required this.id,@required this.title, this.color=Colors.orange,@required this.imageurl});
}