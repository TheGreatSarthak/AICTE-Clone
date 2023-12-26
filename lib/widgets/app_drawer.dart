import 'package:aicte/screens/aicte_overview_screen.dart';
import 'package:aicte/screens/institute.dart';
import 'package:aicte/screens/announemenst.dart';
import 'package:aicte/screens/graph.dart';
import 'package:aicte/screens/quicklinks.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(20),
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/en/e/eb/All_India_Council_for_Technical_Education_logo.png',
                  width: double.infinity,
                  height: 100,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'अखिल भारतीय तकनीकी शिक्षा परिषद ',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'All India Council For Technical Education',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            leading: Image.network(
              'https://iconarchive.com/download/i91616/icons8/windows-8/Science-University.ico',
              width: 40,
            ),
            title: const Text('AICTE'),
            onTap: () {
              Navigator.of(context).pushNamed(OverviewScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: Image.network(
              'http://cdn.onlinewebfonts.com/svg/img_456677.png',
              width: 40,
            ),
            title: const Text('Announcements'),
            onTap: () {
              Navigator.of(context).pushNamed(Announcements.routeNmae);
            },
          ),
          const Divider(),
          ListTile(
            leading: Image.network(
              'https://iconarchive.com/download/i91616/icons8/windows-8/Science-University.ico',
              width: 40,
            ),
            title: const Text('Universities/Institutes'),
            onTap: () {
              Navigator.of(context).pushNamed(Institute.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: Image.network(
              'https://cdn-icons-png.flaticon.com/512/61/61353.png',
              width: 40,
            ),
            title: const Text('Quick Links'),
            onTap: () {
              Navigator.of(context).pushNamed(QuickLinks.routeName);
            },
          ),
          const Divider(),
          // ListTile(
          //   leading: Image.network(
          //     'https://image.shutterstock.com/image-vector/segmented-circle-arrow-circular-icon-260nw-524503603.jpg',
          //     width: 40,
          //   ),
          //   title: Text('NBA'),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
          // Divider(),
          // ListTile(
          //   leading: Image.network(
          //     'https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-ios7-bell-512.png',
          //     width: 40,
          //   ),
          //   title: Text('Autonomous'),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
          // Divider(),
          // ListTile(
          //   leading: Image.network(
          //     'https://image.shutterstock.com/image-vector/conference-icon-vector-graphic-illustration-260nw-1511728778.jpg',
          //     width: 40,
          //   ),
          //   title: Text('Faculties'),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
          const Divider(),
          ListTile(
            leading: Image.network(
              'https://image.shutterstock.com/image-vector/graph-icon-chart-increase-vector-260nw-1192636495.jpg',
              width: 40,
            ),
            title: const Text('Graphs & Charts'),
            onTap: () {
              Navigator.of(context).pushNamed(Graph.routeName);
            },
          ),
          // Divider(),
          // ListTile(
          //   leading: Image.network(
          //     'https://cdn3.iconfinder.com/data/icons/pyconic-icons-1-2/512/close-512.png',
          //     width: 40,
          //   ),
          //   title: Text('Closed Courses'),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
          const Divider(),
          ListTile(
            leading: Image.network(
              'https://cdn-icons-png.flaticon.com/512/152/152534.png',
              width: 40,
            ),
            title: const Text('Logout'),
            onTap: () => FirebaseAuth.instance.signOut(),
          )
        ],
      ),
    );
  }
}
