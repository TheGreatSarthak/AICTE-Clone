import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/product.dart';
import '../widgets/product_item.dart';

class OverviewScreen extends StatelessWidget {
  static const routeName = '/overviewscreen';

  final List<String> image = [
    "assets/images/aic.png",
    "assets/images/dhaka.png",
    "assets/images/vikas.png",
    "assets/images/shanu.png"
  ];

  OverviewScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('AICTE Approved Colleges '),
        backgroundColor: const Color.fromRGBO(244, 85, 4, 1),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          CarouselSlider(
              items: image.map((i) {
                return Builder(builder: (BuildContext context) {
                  return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(i));
                });
              }).toList(),
              options: CarouselOptions(
                  autoPlay: true, height: 200, enlargeCenterPage: true)),
          // Container(
          //   margin: EdgeInsets.all(15),
          //   width: double.infinity,
          //   height: 200,
          //   child: Image.asset('assets/images/vikas.png'),
          // ),
          Expanded(
            child: ListView.builder(
                itemCount: products.items.length,
                itemBuilder: (context, index) =>
                    ItemProducts(products.items[index])),
          ),
        ],
      ),
      drawer: const AppDrawer(),
    );
  }
}
