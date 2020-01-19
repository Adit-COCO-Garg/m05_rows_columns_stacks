import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:m05_row_column_stack/app/app_colors.dart';
import 'package:m05_row_column_stack/app/app_images.dart';
import 'package:m05_row_column_stack/app/app_textstyles.dart';
import 'package:m05_row_column_stack/hera_objects/example_hera_model.dart';

class Exercise extends StatelessWidget {
  const Exercise({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heraObjectInstance = Provider.of<HeraObject>(context);
    return ValueListenableBuilder<String>(
      valueListenable: heraObjectInstance.mainAppBarString,
      builder: (BuildContext context, String mainAppBarString, Widget child) {
        heraObjectInstance.changeAppBarTitle('Exercise Solutions');
        return Padding(
          padding: const EdgeInsets.all(8),



        );
      },
    );
  }
}
