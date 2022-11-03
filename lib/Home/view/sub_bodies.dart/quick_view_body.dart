import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class QuickViewBody extends StatefulWidget {
  const QuickViewBody({Key? key}) : super(key: key);

  @override
  State<QuickViewBody> createState() => _QuickViewBodyState();
}

class _QuickViewBodyState extends State<QuickViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 60,
        width: 100,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [
              Colors.pinkAccent,
              Colors.blueAccent,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: Colors.grey,
          period: const Duration(milliseconds: 2500),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Total Meal',
                style: TextStyle(color: Colors.white),
              ),
              Text('100',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
            ],
          ),
        ),
      ),
    );
  }
}
