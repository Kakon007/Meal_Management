import 'package:flutter/material.dart';

class MemberListCardBody extends StatelessWidget {
  const MemberListCardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 120,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.black54,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/download.jpeg'),
              radius: 30,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Member Name',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Last Month \nTotal Meal',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Icon(
              Icons.arrow_circle_down_sharp,
              color: Colors.redAccent,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '20',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
