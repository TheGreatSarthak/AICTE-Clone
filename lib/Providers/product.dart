import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem {
  final String id;
  final String title;
  final Image imageUrl;
  final int number;

  ProductItem(
      {required this.imageUrl,
      required this.id,
      required this.number,
      required this.title});
}

class Products with ChangeNotifier {
  final List<ProductItem> _items = [
    ProductItem(
        imageUrl: Image.network(
            'https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-educational-institute-icon-png-image_539558.jpg'),
        id: '1',
        number: 10425,
        title: 'Institutions'),
    ProductItem(
        imageUrl: Image.network(
            'https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-educational-institute-icon-png-image_539558.jpg'),
        id: '2',
        number: 528,
        title: 'Colleges'),
    ProductItem(
        imageUrl: Image.network(
            'https://cdn-icons-png.flaticon.com/128/2000/2000920.png'),
        id: '3',
        number: 8,
        title: 'Courses'),
    ProductItem(
        imageUrl: Image.network(
            'https://png.pngtree.com/png-vector/20190215/ourlarge/pngtree-vector-educational-institute-icon-png-image_539558.jpg'),
        id: '4',
        number: 89,
        title: 'Closed Institutions'),
    ProductItem(
        imageUrl: Image.network(
            'https://cdn-icons-png.flaticon.com/512/146/146005.png?w=360'),
        id: '5',
        number: 25861,
        title: "Girl's Enrollment"),
    ProductItem(
        imageUrl: Image.network(
            'https://cdn-icons-png.flaticon.com/512/145/145867.png'),
        id: '6',
        number: 1329248,
        title: "Boy's Enrollment"),
    ProductItem(
        imageUrl: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHUGnOBCzoVcVB3p1V3-DuWPJB0lzqCPecQQ&usqp=CAU'),
        id: '7',
        number: 7,
        title: 'Faculty Members'),
    ProductItem(
        imageUrl: Image.network(
            'https://cdn-icons-png.flaticon.com/128/8012/8012880.png'),
        id: '8',
        number: 9729021,
        title: 'Student Passesd'),
    ProductItem(
        imageUrl: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwUKNmxu0Q9_yDhjnDHlOIGMHyjJMa-IswKQ&usqp=CAU'),
        id: '9',
        number: 783622,
        title: 'Placements'),
  ];

  List<ProductItem> get items {
    return [..._items];
  }

  ProductItem byId(String id) {
    return _items.firstWhere((element) => element.id == id);
  }
}
