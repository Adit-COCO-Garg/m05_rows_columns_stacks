import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:m05_row_column_stack/hera_objects/example_hera_model.dart';

class WorkingSamples extends StatelessWidget {
  const WorkingSamples({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final heraObjectInstance = Provider.of<HeraObject>(context);
    return ValueListenableBuilder<String>(
      valueListenable: heraObjectInstance.mainAppBarString,
      builder: (BuildContext context, String mainAppBarString, Widget child) {
        heraObjectInstance.changeAppBarTitle('Working Samples');
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ///
                    /// Note that you don't *have to* use all the space available within the container.
                    /// The empty space to the right of our container is still inside the Column,
                    /// our Row did not end up being shorter than others here. It only looks that
                    /// way because there is no border around it to let you know that it extends past
                    /// the point where our orange Container ends.
                    ///
                    /// Remembering this becomes important  when dealing with a loose fit Flexible.
                    Container(
                      height: 100,
                      width: 200,
                      color: Colors.orange,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ///
                    /// Here there is no width set because we don't need it. The Expanded is forcing it's
                    /// child to be as large as it can  be, along the mainAxis.
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                ///
                /// This is showing how to make your flex parameter add up to 100, so as to make it easier to envision
                /// what you're going to get when you render your code to the screen.
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 10,
                      child: Container(
                        height: 100,
                        color: Colors.purple,
                      ),
                    ),
                    Expanded(
                      flex: 60,
                      child: Container(
                        height: 100,
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex: 30,
                      child: Container(
                        height: 100,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                ///
                /// PITFALL ALERT!
                /// This one can give you headaches for hours if you don't remember what's really
                /// going on under the hood when the multi-child layout algorithm does it's thing.
                /// You never wont to forget that calculating the space reserved for a Flexible
                /// is done separately, and before, having that Flexible return back how much
                /// space it's actually going to use... *and any reserved space left unused does
                /// NOT get given to any other children.* It's left blank, instead.
                ///
                /// People are often told that using an Expanded automatically uses up all
                /// of the leftover space but that's not true if there's a loose fit Flexible
                /// in your Row or Column. This is because a loose fit Flexible often won't
                /// use all of the space reserved for it when the flex calculations are done.
                /// Since any space the loose fit Flexible didn't use is going to left blank,
                /// and not get re-assigned to any other children, you're going to end
                /// up with dead space inside of your Row or Column no matter how many
                /// Expandeds you use.
                ///
                /// And because a Row or Column with dead space in it looks exactly like one
                /// that is short, it looks like your Row or Column isn't taking up all of the space
                /// offered to it... but it is. There's just dead space inside of it because your
                /// loose fit Flexible didn't use all of the space that had been reserved for it.
                ///
                /// This is why we have empty black space to the right of our red Container.
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.grey,
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),



                const SizedBox(height: 100,),




                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 10,
                      child: Container(
                        height: 100,
                        color: Colors.purple,
                      ),
                    ),
                    Expanded(
                      flex: 60,
                      child: Container(
                        height: 100,
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex: 30,
                      child: Container(
                        height: 100,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 200,
                      color: Colors.teal,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 10,
                      child: Container(
                        height: 100,
                        color: Colors.purple,
                      ),
                    ),
                    Expanded(
                      flex: 60,
                      child: Container(
                        height: 100,
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex: 30,
                      child: Container(
                        height: 100,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 200,
                      color: Colors.teal,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}