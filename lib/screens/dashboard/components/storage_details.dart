import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    Key key,
  }) : super(key: key);
  static int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(defaultPadding * 2),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(width: 2.0, color: secondaryColor)),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/images/profile_pic.png",
                    fit: BoxFit.cover,
                    height: 140,
                  ),
                ),
                SizedBox(height: defaultPadding * 2),
                Text(
                  "Report for",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "John Doe",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: defaultPadding),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(defaultPadding * 2),
              child: Chart()
          ),
        ],
      ),
    );
  }
}
