import 'package:flutter/material.dart';

class MealListBody extends StatefulWidget {
  const MealListBody({Key? key}) : super(key: key);

  @override
  State<MealListBody> createState() => _MealListBodyState();
}

class _MealListBodyState extends State<MealListBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 90,
        width: 100,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [
              Colors.grey,
              Colors.blueAccent,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '20-10-2022',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Member Name',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text('2',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ],
              ),
              const SizedBox(
                width: 170,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    '20-10-2022',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Guest Meal',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text('2',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
