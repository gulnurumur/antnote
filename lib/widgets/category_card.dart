import 'package:flutter/material.dart';


class CardCategory extends StatelessWidget {
  final String categoryName;
  final Color categoryColor;
  final Function press;
  const CardCategory({Key key, this.categoryName, this.categoryColor,this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
       borderRadius: BorderRadius.circular(15),
          child: Container(
        decoration: BoxDecoration(
          color: categoryColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 10,
                spreadRadius: -9,
                color: Colors.grey)
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    categoryName,
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}