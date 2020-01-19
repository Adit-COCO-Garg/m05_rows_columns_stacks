import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:m05_row_column_stack/app/app_colors.dart';
import 'package:m05_row_column_stack/app/app_images.dart';
import 'package:m05_row_column_stack/app/app_textstyles.dart';
import 'package:m05_row_column_stack/hera_objects/example_hera_model.dart';

class Solutions extends StatelessWidget {
  const Solutions({
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


          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[


                Container(
                  width: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          height: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primaryDarkGreen,
                              style: BorderStyle.solid,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            gradient: LinearGradient(
                              colors: [
                                Colors.green.shade50,
                                Colors.green.shade600,
                                Colors.green.shade50,
                              ],
                              stops: [0.0, 0.5, 1.0],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          child: Icon(
                            Icons.cloud_done,
                            size: 80,
                            color: Colors.white70,
                          ),
                        ),
                        Container(
                          height: 180,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            gradient: LinearGradient(
                              colors: [
                                Colors.purple.shade300,
                                Colors.purple.shade900,
                              ],
                              stops: [0.0, 1.0],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Text(
                              'Purple\nPeople\nEater!',
                              style: AppTextStyles.normal30.copyWith(
                                color: Colors.white,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 3,
                                    color: Colors.black87,
                                    offset: Offset(-3, 3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            margin: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.blueAccent,
                                style: BorderStyle.solid,
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(AppImages.flutterLogo),
                          ),
                        ),
                        Container(
                          height: 180,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(100),
                            gradient: SweepGradient(
                              colors: [
                                Colors.red.shade200,
                                Colors.red.shade500,
                                Colors.red.shade900,
                                Colors.red.shade500,
                                Colors.red.shade200,
                              ],
                              stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  width: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            margin: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.blueAccent,
                                style: BorderStyle.solid,
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(AppImages.flutterLogo),
                          ),
                        ),
                        Container(
                          height: 180,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(100),
                            gradient: SweepGradient(
                              colors: [
                                Colors.red.shade200,
                                Colors.red.shade500,
                                Colors.red.shade900,
                                Colors.red.shade500,
                                Colors.red.shade200,
                              ],
                              stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primaryDarkGreen,
                              style: BorderStyle.solid,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            gradient: LinearGradient(
                              colors: [
                                Colors.green.shade50,
                                Colors.green.shade600,
                                Colors.green.shade50,
                              ],
                              stops: [0.0, 0.5, 1.0],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          child: Icon(
                            Icons.cloud_done,
                            size: 80,
                            color: Colors.white70,
                          ),
                        ),
                        Container(
                          height: 180,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            gradient: LinearGradient(
                              colors: [
                                Colors.purple.shade300,
                                Colors.purple.shade900,
                              ],
                              stops: [0.0, 1.0],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Text(
                              'Purple\nPeople\nEater!',
                              style: AppTextStyles.normal30.copyWith(
                                color: Colors.white,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 3,
                                    color: Colors.black87,
                                    offset: Offset(-3, 3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          height: 180,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            gradient: LinearGradient(
                              colors: [
                                Colors.purple.shade300,
                                Colors.purple.shade900,
                              ],
                              stops: [0.0, 1.0],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Text(
                              'Purple\nPeople\nEater!',
                              style: AppTextStyles.normal30.copyWith(
                                color: Colors.white,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 3,
                                    color: Colors.black87,
                                    offset: Offset(-3, 3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primaryDarkGreen,
                              style: BorderStyle.solid,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            gradient: LinearGradient(
                              colors: [
                                Colors.green.shade50,
                                Colors.green.shade600,
                                Colors.green.shade50,
                              ],
                              stops: [0.0, 0.5, 1.0],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          child: Icon(
                            Icons.cloud_done,
                            size: 80,
                            color: Colors.white70,
                          ),
                        ),
                        Container(
                          height: 180,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(100),
                            gradient: SweepGradient(
                              colors: [
                                Colors.red.shade200,
                                Colors.red.shade500,
                                Colors.red.shade900,
                                Colors.red.shade500,
                                Colors.red.shade200,
                              ],
                              stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                            ),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            margin: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.blueAccent,
                                style: BorderStyle.solid,
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(AppImages.flutterLogo),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          height: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primaryDarkGreen,
                              style: BorderStyle.solid,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            gradient: LinearGradient(
                              colors: [
                                Colors.green.shade50,
                                Colors.green.shade600,
                                Colors.green.shade50,
                              ],
                              stops: [0.0, 0.5, 1.0],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          child: Icon(
                            Icons.cloud_done,
                            size: 80,
                            color: Colors.white70,
                          ),
                        ),
                        Container(
                          height: 180,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            gradient: LinearGradient(
                              colors: [
                                Colors.purple.shade300,
                                Colors.purple.shade900,
                              ],
                              stops: [0.0, 1.0],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Text(
                              'Purple\nPeople\nEater!',
                              style: AppTextStyles.normal30.copyWith(
                                color: Colors.white,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 3,
                                    color: Colors.black87,
                                    offset: Offset(-3, 3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            margin: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.blueAccent,
                                style: BorderStyle.solid,
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(AppImages.flutterLogo),
                          ),
                        ),
                        Container(
                          height: 180,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(100),
                            gradient: SweepGradient(
                              colors: [
                                Colors.red.shade200,
                                Colors.red.shade500,
                                Colors.red.shade900,
                                Colors.red.shade500,
                                Colors.red.shade200,
                              ],
                              stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            margin: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.blueAccent,
                                style: BorderStyle.solid,
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(AppImages.flutterLogo),
                          ),
                        ),
                        Container(
                          height: 180,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(100),
                            gradient: SweepGradient(
                              colors: [
                                Colors.red.shade200,
                                Colors.red.shade500,
                                Colors.red.shade900,
                                Colors.red.shade500,
                                Colors.red.shade200,
                              ],
                              stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primaryDarkGreen,
                              style: BorderStyle.solid,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            gradient: LinearGradient(
                              colors: [
                                Colors.green.shade50,
                                Colors.green.shade600,
                                Colors.green.shade50,
                              ],
                              stops: [0.0, 0.5, 1.0],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          child: Icon(
                            Icons.cloud_done,
                            size: 80,
                            color: Colors.white70,
                          ),
                        ),
                        Container(
                          height: 180,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            gradient: LinearGradient(
                              colors: [
                                Colors.purple.shade300,
                                Colors.purple.shade900,
                              ],
                              stops: [0.0, 1.0],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Text(
                              'Purple\nPeople\nEater!',
                              style: AppTextStyles.normal30.copyWith(
                                color: Colors.white,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 3,
                                    color: Colors.black87,
                                    offset: Offset(-3, 3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          height: 180,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            gradient: LinearGradient(
                              colors: [
                                Colors.purple.shade300,
                                Colors.purple.shade900,
                              ],
                              stops: [0.0, 1.0],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Text(
                              'Purple\nPeople\nEater!',
                              style: AppTextStyles.normal30.copyWith(
                                color: Colors.white,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 3,
                                    color: Colors.black87,
                                    offset: Offset(-3, 3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primaryDarkGreen,
                              style: BorderStyle.solid,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            gradient: LinearGradient(
                              colors: [
                                Colors.green.shade50,
                                Colors.green.shade600,
                                Colors.green.shade50,
                              ],
                              stops: [0.0, 0.5, 1.0],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          child: Icon(
                            Icons.cloud_done,
                            size: 80,
                            color: Colors.white70,
                          ),
                        ),
                        Container(
                          height: 180,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(100),
                            gradient: SweepGradient(
                              colors: [
                                Colors.red.shade200,
                                Colors.red.shade500,
                                Colors.red.shade900,
                                Colors.red.shade500,
                                Colors.red.shade200,
                              ],
                              stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                            ),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            margin: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.blueAccent,
                                style: BorderStyle.solid,
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(AppImages.flutterLogo),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
