import 'package:flutter/material.dart';

class UntitlesPage extends StatefulWidget {
  const UntitlesPage({Key? key}) : super(key: key);

  @override
  State<UntitlesPage> createState() => _UntitlesPageState();
}

List<String> States = [
  'Maharashtra',
  'Madhya Pradesh',
];

class _UntitlesPageState extends State<UntitlesPage> {

  String selectedValue = States.first;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Select State'),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 15.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10.0, vertical: 5),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  menuMaxHeight: 200,
                  value: selectedValue,
                  items: States.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                          () {
                        selectedValue = '${value}';
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
