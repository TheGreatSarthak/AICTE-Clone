import 'package:flutter/material.dart';

class Graph extends StatefulWidget {
  const Graph({Key? key}) : super(key: key);
  static const routeName = '/graphs';
  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  final _expanded = [false, false, false, false, false, false];

  List<Map<String, String>> k = [
    {
      "title": "Program vs Institute's with Intake/Enrollment",
      "url": "assets/images/chart.png"
    },
    {
      "title": "Institute-Type vs Institute's with Intake/Enrollment",
      "url": "assets/images/chart1.png"
    },
    {
      "title": "State vs Enrollment and Intake",
      "url": "assets/images/chart2.png"
    },
    {
      "title": "Enrollment (Gender & Category wise)",
      "url": "assets/images/chart3.png"
    },
    {
      "title": "Categorywise Enrollment (PieChart)",
      "url": "assets/images/chart4.png"
    },
    {
      "title":
          "Engineering/MBA/MCA/Pharmacy-Course vs Intake/Enrollment/Passed/Placement",
      "url": "assets/images/chart5.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Graphs &  Charts"),
          backgroundColor: const Color.fromRGBO(244, 85, 4, 1)),
      body: ListView.builder(
          itemCount: k.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text(
                    k[index]["title"] as String,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(244, 85, 4, 1),
                    )),
                    child: Text(
                      _expanded[index] ? "Close Chart" : "Load Chart",
                    ),
                    onPressed: (() {
                      setState(() {
                        _expanded[index] = !_expanded[index];
                      });
                    }),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                if (_expanded[index])
                  SizedBox(
                    width: double.infinity,
                    height: 500,
                    child: Image.asset(k[index]["url"] as String),
                  )
              ],
            );
          }),
    );
  }
}
