import 'package:flutter/material.dart';

class MealInfoBody extends StatefulWidget {
  MealInfoBody({Key? key}) : super(key: key);

  @override
  State<MealInfoBody> createState() => _MealInfoBodyState();
}

class _MealInfoBodyState extends State<MealInfoBody> {
  String dropdownValue = 'jahid';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              DropdownButtonFormField(
                  value: dropdownValue,
                  items: <String>['jahid', 'Hasan', 'kakon']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
