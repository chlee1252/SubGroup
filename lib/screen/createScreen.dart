import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:subgroup/constant.dart';
import 'package:subgroup/widget/customAppBar.dart';
import 'package:subgroup/widget/gradientContainer.dart';
import 'package:subgroup/widget/inputTile.dart';

class CreateScreen extends StatelessWidget {
  static final id = 'CreateScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GradientContainer(
        gradientColor: greenGradient,
        child: Stack(
          children: [
            Column(
              children: [
                CustomAppBar(
                  iconAlignment: MainAxisAlignment.start,
                  icon: Icons.arrow_back,
                  iconOnPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Center(
                  child: Container(
                    height: size.height * 0.15,
                    child: Text(
                      "Create Group",
                      style: titleTextStyle,
                    ),
                  ),
                ),
              ],
            ),
            SlidingUpPanel(
              panel: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    InputTile(leadingTitle: "Title",),
                    InputTile(leadingTitle: "Subscription",),
                  ],
                ),
              ),
              borderRadius: homeMenuRadius,
              minHeight: size.height * 0.8,
              maxHeight: size.height * 0.9,
            )
          ],
        ),
      ),
    );
  }
}
