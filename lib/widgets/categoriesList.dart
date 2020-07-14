import 'package:flutter/material.dart';
import 'package:test_http/data/data.dart';
import 'package:test_http/functions/fromHexToColor.dart';
import 'package:test_http/models/categories_modal.dart';

class CategoriesList extends StatelessWidget {
  final Categories categories;
  const CategoriesList({Key key, this.categories}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: HexColor(categories.backgroundColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 25.0,
              left: 25,
            ),
            child: Text(
              categories.name,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 6,
              left: 25,
              bottom: 6,
            ),
            child: Text(
              "${categories.numberOfExample} Examples",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              categories.image,
              width: double.infinity,
              height: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
