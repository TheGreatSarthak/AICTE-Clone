import 'package:aicte/screens/courses.dart';
import 'package:aicte/screens/institute.dart';
import 'package:aicte/screens/college.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Providers/product.dart';
import 'package:flutter/material.dart';
import '../screens/product_details_screen.dart';

class ItemProducts extends StatelessWidget {
  final ProductItem singleProduct;

  const ItemProducts(this.singleProduct, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        // Navigator.of(context).pushNamed(ProductDetailsScreem.routeNmae,
        //     arguments: singleProduct.id);
        if (singleProduct.id == '1') {
          Navigator.of(context).pushNamed(Institute.routeName);
        } else if (singleProduct.id == '2') {
          Navigator.of(context).pushNamed(College.routeName);
        } else if (singleProduct.id == '3') {
          Navigator.of(context).pushNamed(Course.routeName);
        } else if (singleProduct.id == '4') {
          await launchUrl(Uri.parse(
              'https://facilities.aicte-india.org/dashboard/pages/angulardashboard.php#!/closedcourse'));
        } else {
          Navigator.of(context).pushNamed(ProductDetailsScreem.routeNmae,
              arguments: singleProduct.id);
        }
      },
      child: Card(
        margin: const EdgeInsets.all(15),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: ListTile(
            leading: singleProduct.imageUrl,
            title: Text(
              singleProduct.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              // textAlign: TextAlign.center,
            ),
            trailing: Text(
              singleProduct.number.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
