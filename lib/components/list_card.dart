import 'package:flutter/material.dart';
import 'package:sipara/constant.dart';

class ListCard extends StatelessWidget {
  final String text;

  const ListCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: lightGreyColor,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: InkWell(
          child: SizedBox(
              height: 75,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              text,
                              style: TextStyle(
                                  color: blackColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ))),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_right_alt),
                        color: blackColor,
                        iconSize: 24,
                        onPressed: () {},
                      ),
                    ),
                  ]))),
    );
  }
}
