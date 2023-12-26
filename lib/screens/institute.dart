import 'package:flutter/material.dart';
import '../widgets/instituteblock.dart';

class Item {
  final String id;
  final String title;

  const Item({
    required this.id,
    required this.title,
  });
}

class Institute extends StatelessWidget {
  static const routeName = './institutes';

  const Institute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const dummy = [
      Item(
        id: 'd1',
        title: "Central University",
      ),
      Item(
        id: 'd2',
        title: "Deemed University (Government)",
      ),
      Item(
        id: 'd3',
        title: "Deemed University (Private)",
      ),
      Item(
        id: 'd4',
        title: "Government",
      ),
      Item(
        id: 'd5',
        title: "Govt-Aided",
      ),
      Item(
        id: 'd6',
        title: "Private-Aided",
      ),
      Item(
        id: 'd7',
        title: "Unaided-Private",
      ),
      Item(
        id: 'd8',
        title: "University Managed-Govt",
      ),
      Item(
        id: 'd9',
        title: "University Managed-Private",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
          title: const Text("Institutes"),
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
            .map((item) => Instituteblock(
                  item.id,
                  item.title,
                ))
            .toList(),
      ),
    );
  }
}
