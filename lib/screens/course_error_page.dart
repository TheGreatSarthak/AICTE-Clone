import 'package:flutter/material.dart';

class CourseErrorPage extends StatelessWidget {
  final String title;
  // ignore: use_key_in_widget_constructors
  const CourseErrorPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(title), backgroundColor: const Color.fromRGBO(244, 85, 4, 1)),
        body: SizedBox(
          width: 600,
          height: 700,
          child: Image.network(
            "https://png.pngtree.com/png-clipart/20200224/original/pngtree-socket-404-error-page-for-desktop-and-mobile-png-image_5228459.jpg",
            fit: BoxFit.fill,
          ),
        ));
  }
}
