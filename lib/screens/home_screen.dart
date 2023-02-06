import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interview_task/widgets/bottom_container.dart';
import 'package:interview_task/widgets/horizontal_container.dart';

import '../widgets/bottom_navigation_bar.dart';
import '../widgets/upper_introduction_row.dart';
import '../widgets/welcome_container.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height - // total height
        MediaQuery.of(context).padding.top - // top padding
        kBottomNavigationBarHeight;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        //minHeight: 500,
                        ),
                    child: Container(
                      height: size * 0.55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xF007362C),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15))),
                    ),
                  ),
                  Container(color: Color(0xFFF2F2F2), height: size * 0.45)
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Column(
                  children: [
                    const UpperIntroduction(),
                    SizedBox(
                      height: size * 0.03,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: 155,
                      ),
                      child: Container(
                        height: size * 0.23,
                        child: WelcomeContainer(),
                      ),
                    ),
                    SizedBox(
                      height: size * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Reminder Task',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size * 0.02,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 80),
                      child: SizedBox(
                        height: size * 0.14,
                        width: double.infinity,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return HorizontalContainer();
                          },
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size * 0.025,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'All Tasks',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xF007362C)),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(color: Colors.green.shade500),
                        ),
                      ],
                    ),
                    SizedBox(height: size * 0.01),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: 150,
                      ),
                      child: SizedBox(
                        height: size * 0.355,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return BottomContainer();
                          },
                          itemCount: 5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationB(),
    );
  }
}
