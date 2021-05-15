
import 'package:flutter/material.dart';
import 'package:gp/FiltersResult.dart';
import 'package:gp/categorieslistdata.dart';

import '../../../Size_Config.dart';
import 'CategoriesListWidget.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(height: 15,),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: getProptionateScreenHeight(102 ),
            child: CategoriesWidget()
        ),
        SizedBox(height: 10,),
        Expanded(

          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TabBarView(
              children: [
                Text("Explore "+categoriesdata[modelCategory.SelectedCategory].name),
                Text("Recommended "+categoriesdata[modelCategory.SelectedCategory].name),
                Text("Saved "+categoriesdata[modelCategory.SelectedCategory].name)

              ],
            ),
          ),
        ),
      ],
    );
  }
}
