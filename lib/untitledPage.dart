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
  String selectedValue = States.last;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              dropDownTitle(
                selectedValue: selectedValue,
                list: States,
                title: 'Select States',
                onChanged: (value) {
                  setState(
                    () {
                      selectedValue = '${value}';
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class dropDownTitle extends StatelessWidget {
  const dropDownTitle({
    super.key,
    required this.selectedValue,
    this.onChanged,
    required this.list,
    required this.title,
  });

  final String selectedValue;
  final Function(String?)? onChanged;
  final List<String> list;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: TextStyle(fontSize: 25),),
        dropDownWidget(
          selectedValue: selectedValue,
          list: States,
          onChanged: (value) {},
        ),
      ],
    );
  }
}

class dropDownWidget extends StatelessWidget {
  const dropDownWidget({
    super.key,
    required this.selectedValue,
    this.onChanged,
    required this.list,
  });

  final String selectedValue;
  final Function(String?)? onChanged;
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              menuMaxHeight: 200,
              value: selectedValue,
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: onChanged,
            ),
          ),
        ),
      ),
    );
  }
}
