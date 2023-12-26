import 'package:flutter/material.dart';
import '../widgets/courseblock.dart';

class Item {
  final String id;
  final String title;

  const Item({
    required this.id,
    required this.title,
  });
}

class Course extends StatelessWidget {
  static const routeName = './course';

  const Course({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const dummy = [
      Item(
        id: 'd1',
        title: "Applied Arts And Crafts",
      ),
      Item(
        id: 'd2',
        title: "Architecture",
      ),
      Item(
        id: 'd3',
        title: "Engineering And Technology",
      ),
      Item(
        id: 'd4',
        title: "Hotel Management And Catering ",
      ),
      Item(
        id: 'd5',
        title: "MCA",
      ),
      Item(
        id: 'd6',
        title: "Management",
      ),
      Item(
        id: 'd7',
        title: "Pharmacy",
      ),
      Item(
        id: 'd8',
        title: "Town Planning",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
          title: const Text("Courses"),
          backgroundColor: const Color.fromRGBO(244, 85, 4, 1)),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 450,
          childAspectRatio: 10 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
        children: dummy
            .map((item) => Courseblock(
                  item.id,
                  item.title,
                ))
            .toList(),
      ),
    );
  }
}
