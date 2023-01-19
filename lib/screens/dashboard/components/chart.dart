import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:admin/responsive.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TabWidget();
  }
}

class TabWidget extends StatefulWidget {
  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  int pageIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: 0, vertical: defaultPadding),
            child: Text(
              "Daily",
              style: TextStyle(
                fontWeight: pageIndex == 0 ? FontWeight.w800 : FontWeight.w100,
                color: pageIndex == 0 ?Colors.white: Colors.white.withOpacity(0.6),
              ),
            ),
          ),
          onTap: () {
            setState(() {
              pageIndex = 0;
            });
          },
        ),
        GestureDetector(
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: 0, vertical: defaultPadding),
            child: Text(
              "Weekly",
              style: TextStyle(
                fontWeight: pageIndex == 1 ? FontWeight.w800 : FontWeight.w100,
                  color: pageIndex == 1 ?Colors.white: Colors.white.withOpacity(0.6),
              ),
            ),
          ),
          onTap: () {
            setState(() {
              pageIndex = 1;
            });
          },
        ),
        GestureDetector(
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: 0, vertical: defaultPadding),
            child: Text(
              "Monthly",
              style: TextStyle(
                fontWeight: pageIndex == 2 ? FontWeight.w800 : FontWeight.w100,
                color: pageIndex == 2 ?Colors.white: Colors.white.withOpacity(0.6),
              ),
            ),
          ),
          onTap: () {
            setState(() {
              pageIndex = 2;
            });
          },
        ),
      ],
    );
  }
}
