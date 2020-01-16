import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:m05_row_column_stack/app/app_colors.dart';
import 'package:m05_row_column_stack/app/app_textstyles.dart';
import 'package:m05_row_column_stack/hera_objects/example_hera_model.dart';

class BrokenSamples extends StatefulWidget {
  const BrokenSamples({
    Key key,
  }) : super(key: key);

  @override
  _BrokenSamplesState createState() => _BrokenSamplesState();
}

class _BrokenSamplesState extends State<BrokenSamples> {
  int _page = 0;

  Widget selectPage() {
    Widget result;

    if (_page == 0) {
      return Container(
        /// This is the classic error: "RenderFlex children have non-zero flex but incoming height
        /// constraints are unbounded."
        ///
        /// The problem here is that you use a SingleChildScrollView in places where your
        /// child is larger than the screen, so the Column's mainAxisSize will never have any
        /// limits..o how could there be any extra space for the
        ///
        /// Also, using an Expanded here makes no sense. If the Column is going to be bigger then the
        /// screen size, there is no reason to use an Expanded to take up extra space here?
        ///
        /// The only way to get this situation under control is to wrap the Column in a Container
        /// and then set a *specific* height for the Container.  Try 600.
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 200,
                color: Colors.green[900],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.topCenter,
                  child: RaisedButton(
                    color: AppColors.darkTheme8dpElevationOverlay,
                    onPressed: () => setState(
                      () {
                        _page = 1;
                      },
                    ),
                    child: Text(
                      'Next: \nBoxConstraints Forces Infinite Width...',
                      style: AppTextStyles.normal30.copyWith(color: AppColors.whiteTextColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (_page == 1) {
      result = Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              /// This is the other classic: "BoxConstraints forces an infinite width."
              /// The easy way to fix this is to put the Container in an Expanded
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blue,
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 200,
                  color: Colors.grey,
                  /// Notice that the Expanded overrides this width setting
                  width: 1,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: RaisedButton(
                color: AppColors.darkTheme8dpElevationOverlay,
                onPressed: () => setState(
                  () {
                    _page = 2;
                  },
                ),
                child: Text(
                  'Next: \nOverflow Error Example',
                  style: AppTextStyles.normal30.copyWith(color: AppColors.whiteTextColor),
                ),
              ),
            ),
          ),
        ],
      );
    } else if (_page == 2) {
      result = Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ///
          /// After you understand why this isn't working, fix it and move on to the next error
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.green,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                width: 200,

                /// By the way, there is another way to use the shades of colors that are in [ ].
                /// Instead of green[900], we can use green.shade900 like this:
                color: Colors.green.shade900,
              ),
              Container(
                height: 100,
                width: 700,
                color: Colors.red,
              ),
            ],
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: RaisedButton(
                color: AppColors.darkTheme8dpElevationOverlay,
                onPressed: () => setState(
                  () {
                    _page = 0;
                  },
                ),
                child: Text(
                  'Return to the RenderFlex Error Example',
                  style: AppTextStyles.normal30.copyWith(color: AppColors.whiteTextColor),
                ),
              ),
            ),
          ),
        ],
      );
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final heraObjectInstance = Provider.of<HeraObject>(context);
    return ValueListenableBuilder<String>(
      valueListenable: heraObjectInstance.mainAppBarString,
      builder: (BuildContext context, String mainAppBarString, Widget child) {
        heraObjectInstance.changeAppBarTitle('Broken Samples');
        return selectPage();
      },
    );
  }
}
