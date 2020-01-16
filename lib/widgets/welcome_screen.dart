import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:m05_row_column_stack/app/app_colors.dart';
import 'package:m05_row_column_stack/app/app_textstyles.dart';
import 'package:m05_row_column_stack/hera_objects/example_hera_model.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heraObjectInstance = Provider.of<HeraObject>(context);
    return ValueListenableBuilder<String>(
      valueListenable: heraObjectInstance.mainAppBarString,
      builder: (BuildContext context, String mainAppBarString, Widget child) {
        heraObjectInstance.changeAppBarTitle('Rows, Columns and Stacks');
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                      style: AppTextStyles.normal22.copyWith(
                        color: AppColors.whiteTextColor,
                        height: 1.1,
                      ),
                      children: [
                        const TextSpan(
                            text: "Rows and Columns are actually just convenience "
                                "Widgets created to help make sure people don't "
                                "get confused. They both extend the"),
                        const TextSpan(text: " Flex", style: AppTextStyles.boldItalic22),
                        const TextSpan(
                            text: " class. Normally when extending a class you add "
                                "functionality to the class doing the extending, but in the "
                                "case of Rows and Columns we're taking away a parameter,"
                                " the"),
                        const TextSpan(text: " direction", style: AppTextStyles.boldItalic22),
                        const TextSpan(text: " parameter. \n\n"),
                        const TextSpan(text: " The direction parameter takes an"),
                        const TextSpan(text: " Axis", style: AppTextStyles.boldItalic22),
                        const TextSpan(
                            text: ", which can be horizontal or vertical. "
                                " Rows and Columns are nothing more than Flexes that have "
                                "their direction parameters hard-coded to vertical or "
                                "horizontal, respectively. \n\n"),
                        const TextSpan(
                            text: " An important thing to understand "
                                "when dealing with Rows and Columns is that, like the"),
                        const TextSpan(text: " Container", style: AppTextStyles.boldItalic22),
                        const TextSpan(
                            text: ", the Widget the Render Layer uses to render "
                                "them to the screen isn't a direct equivalent to the one you use in the Widget Layer. "
                                "Remember, the Render Layer breaks a Container down to it's component "
                                "pieces and renders only the things you need, but not the ones you don't. "
                                "There's no such thing as a RenderContainer, "
                                "nor are there a RenderColumn or RenderRow. \n\n"),
                        const TextSpan(
                            text: "Instead, what you see in your error messages is "
                                "something called a "),
                        const TextSpan(text: " RenderFlex", style: AppTextStyles.boldItalic22),
                        const TextSpan(
                            text: ". Though the RenderFlex isn't a direct equivalent to a Row or Column, it "),
                        const TextSpan(text: " is", style: AppTextStyles.italic22),
                        const TextSpan(
                            text: " a direct equivalent to the Flex. "
                                "Since Rows and Columns are nothing more than Flexes "
                                "that have their direction parameter hard-coded, this makes sense. \n\n"
                                ""),
                        const TextSpan(text: "So when you see an error in your IDE that say something "
                          "went wrong with a RenderFlex, now you'll know what it's talking about!\n\n"),
                        const TextSpan(
                          text: "And just so you know, working with Stacks is easy. You can think of them as being like a Row or Column, but in the Z axis!"),
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
