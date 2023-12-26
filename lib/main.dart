import 'package:aicte/screens/courses.dart';
import 'package:aicte/screens/institute.dart';
import 'package:aicte/screens/announemenst.dart';
import 'package:aicte/screens/auth_screen.dart';
import 'package:aicte/screens/college.dart';
import 'package:aicte/screens/graph.dart';
import 'package:aicte/screens/quicklinks.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/aicte_overview_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './Providers/product.dart';
import './screens/product_details_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const Aicte());
}

class Aicte extends StatelessWidget {
  const Aicte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Lato'),
        debugShowCheckedModeBanner: false,
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                return OverviewScreen();
              }
              return const AuthScreen();
            })),
        routes: {
          College.routeName: (context) => const College(),
          Institute.routeName: (context) => const Institute(),
          OverviewScreen.routeName: (context) => OverviewScreen(),
          Announcements.routeNmae: (context) => Announcements(),
          Graph.routeName: (context) => const Graph(),
          QuickLinks.routeName: (context) => QuickLinks(),
          ProductDetailsScreem.routeNmae: ((context) => const ProductDetailsScreem()),
          Course.routeName: (context) => const Course(),
        },
      ),
    );
  }
}
