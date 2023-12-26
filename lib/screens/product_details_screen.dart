import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/product.dart';

class ProductDetailsScreem extends StatelessWidget {
  static const routeNmae = '/Details';

  const ProductDetailsScreem({Key? key}) : super(key: key);
  // final String id;

  // ProductDetailsScreem(this.id);

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;
    final prodData = Provider.of<Products>(context).byId(id);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(244, 85, 4, 1),
          title: Text(prodData.title),
        ),
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
