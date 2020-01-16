import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:m05_row_column_stack/hera_objects/example_hera_model.dart';
import 'package:m05_row_column_stack/pages/home.dart';

void main() => runApp(M05RowsAndColumns());

class M05RowsAndColumns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<HeraObject>(
      create: (context) => HeraObject(),
      child: MaterialApp(
        title: 'M05 Rows and Columns',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const Home(
        ),
      ),
    );
  }
}
