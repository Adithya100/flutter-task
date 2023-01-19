import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import '../../constants.dart';
import 'components/my_fiels.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({this.pageIndex});
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding * 3),
                child: Column(
                  children: [
                    SizedBox(height: defaultPadding),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (!Responsive.isMobile(context))
                          Expanded(
                            flex: 2,
                            child: StarageDetails(),
                          ),
                        SizedBox(width: defaultPadding),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              if (Responsive.isMobile(context))
                                // Sorry for wrong spelling
                                StarageDetails(),
                              if (Responsive.isMobile(context))
                                SizedBox(height: defaultPadding),
                              MyFiels(),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
