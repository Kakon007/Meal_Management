import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meal_management/Home/view/sub_bodies.dart/meal_list_card_body.dart';
import 'package:meal_management/Home/view/sub_bodies.dart/member_list_card_body.dart';
import 'package:meal_management/Home/view/sub_bodies.dart/quick_view_body.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.red,
          backgroundColor: Colors.white,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 80),
          child: ClipRRect(
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.blueAccent,
                            Colors.black,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Meal Management',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),
                    ),
                  ))),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 5),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Quick View',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return const QuickViewBody();
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Member List',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 210,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) {
                      return const MemberListCardBody();
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Novemeber 2022',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                Expanded(
                    flex: 2,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 38,
                        itemBuilder: (context, index) {
                          return const MealListBody();
                        })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
