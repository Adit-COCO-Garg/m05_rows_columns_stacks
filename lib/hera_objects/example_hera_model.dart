import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeraObject {
  ValueNotifier<String> mainAppBarString = ValueNotifier<String>('Rows, Columns and Stacks');

  void changeAppBarTitle(String newTitle) {
    mainAppBarString.value = newTitle;
  }
}
