import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interview_task/widgets/bottom_container.dart';
import 'package:interview_task/widgets/horizontal_container.dart';

import '../widgets/bottom_navigation_bar.dart';
import '../widgets/upper_introduction_row.dart';
import '../widgets/welcome_container.dart';
import '../widgets/whole_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    print("helooooo sdjfl jskldfj jsdlkfjsldf   $isLandScape");
    double size = MediaQuery.of(context).size.height - // total height
        MediaQuery.of(context).padding.top - // top padding
        kBottomNavigationBarHeight;
    return Scaffold(
      body: isLandScape
          ? SingleChildScrollView(child: WholeScreen(isLandScape))
          : WholeScreen(isLandScape),
      bottomNavigationBar: NavigationB(),
    );
  }
}
