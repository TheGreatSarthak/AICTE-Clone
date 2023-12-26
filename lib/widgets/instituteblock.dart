import 'package:flutter/material.dart';
import '../screens/institute_error_page.dart';

class Instituteblock extends StatelessWidget {
  final String id;
  final String title;
  // ignore: use_key_in_widget_constructors
  const Instituteblock(this.id, this.title);
  @override
  Widget build(BuildContext context) {
    const Color color = Colors.black;

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InstituteErrorPage(title),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [color.withOpacity(1), color],
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
