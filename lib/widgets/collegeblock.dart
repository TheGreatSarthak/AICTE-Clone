import 'package:flutter/material.dart';
import '../screens/college_error_page.dart';

class CollegeBlock extends StatelessWidget {
  final String id;
  final String title;
  final String address;
  final String type;

  const CollegeBlock(this.id, this.title, this.address, this.type,{Key? key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    const Color color = Colors.black;

    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CollegeErrorPage(title)));
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [color.withOpacity(1), color],
            )),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_pin,
                  color: Colors.white,
                  size: 23,
                ),
                Text(
                  address,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(Icons.assured_workload_sharp, color: Colors.white),
                Text(
                  type,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
