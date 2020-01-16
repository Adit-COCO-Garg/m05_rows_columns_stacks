import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:m05_row_column_stack/app/app_colors.dart';
import 'package:m05_row_column_stack/hera_objects/example_hera_model.dart';

class StackExample extends StatelessWidget {
  const StackExample({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heraObjectInstance = Provider.of<HeraObject>(context);
    return ValueListenableBuilder<String>(
      valueListenable: heraObjectInstance.mainAppBarString,
      builder: (BuildContext context, String mainAppBarString, Widget child) {
        heraObjectInstance.changeAppBarTitle('Working Samples');
        return Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColors.darkTheme12dpElevationOverlay,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 100,
                left: 55,
                child: Folder(
                  color: Colors.red[100],
                ),
              ),
              Positioned(
                top: 80,
                left: 40,
                child: Folder(
                  color: Colors.green[300],
                ),
              ),
              Positioned(
                top: 60,
                left: 25,
                child: Folder(
                  color: Colors.orange[200],
                ),
              ),
              Positioned(
                top: 40,
                left:10,
                child: Folder(
                  color: Colors.yellow[100],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Folder extends StatelessWidget {
  const Folder({
    Key key,
    this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 350,
      child: Stack(
        children: <Widget>[
          Container(
            height: 400,
            width: 320,
            decoration: BoxDecoration(
              color: color,
              border: Border.all(
                color: color,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Positioned(
            top: 0,
            right: 00,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: color,
                border: Border.all(
                  color: color,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
