import 'package:flutter/material.dart';
import 'package:login_signup/assets/RoundedButton.dart';

class UntitlesPage extends StatefulWidget {
  const UntitlesPage({Key? key}) : super(key: key);

  @override
  State<UntitlesPage> createState() => _UntitlesPageState();
}

List<String> States = [
  'Maharashtra',
  'Madhya Pradesh',
  'Andhra Pradesh',
  'Punjab',
  'Rajasthan',
  'Tamil Nadu',
  'Kerala',
];

class _UntitlesPageState extends State<UntitlesPage> {
  String selectedValue1 = States.last;
  String selectedValue2 = States.last;
  String selectedValue3 = States.last;
  String selectedValue4 = States.last;
  String selectedValue5 = States.last;
  String selectedValue6 = States.last;
  String selectedValue7 = States.last;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: ListView(
            padding: EdgeInsets.zero,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Select State', style: TextStyle(fontSize: 25),),
                  Padding(
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            menuMaxHeight: 200,
                            value: selectedValue1,
                            items: States.map<DropdownMenuItem<String>>(
                                (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(
                                () {
                                  selectedValue1 = '${value}';
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ), //Select State
              SizedBox(height: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Select District', style: TextStyle(fontSize: 25),),
                  Padding(
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            menuMaxHeight: 200,
                            value: selectedValue2,
                            items: States.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            onChanged: (value) {
                              setState(
                                    () {
                                  selectedValue2 = '${value}';
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ), //Select District
              SizedBox(height: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Select Development Land Type', style: TextStyle(fontSize: 25),),
                  Padding(
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            menuMaxHeight: 200,
                            value: selectedValue3,
                            items: States.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            onChanged: (value) {
                              setState(
                                    () {
                                  selectedValue3 = '${value}';
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ), //Select Development Land Type
              SizedBox(height: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Select Taluka', style: TextStyle(fontSize: 25),),
                  Padding(
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            menuMaxHeight: 200,
                            value: selectedValue4,
                            items: States.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            onChanged: (value) {
                              setState(
                                    () {
                                  selectedValue4 = '${value}';
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Select Village', style: TextStyle(fontSize: 25),),
                  Padding(
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            menuMaxHeight: 200,
                            value: selectedValue5,
                            items: States.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            onChanged: (value) {
                              setState(
                                    () {
                                  selectedValue5 = '${value}';
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ), //Select Village
              SizedBox(height: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Select Location Level', style: TextStyle(fontSize: 25),),
                  Padding(
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            menuMaxHeight: 200,
                            value: selectedValue6,
                            items: States.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            onChanged: (value) {
                              setState(
                                    () {
                                  selectedValue6 = '${value}';
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ), //Select Location Level
              SizedBox(height: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Select Location Level List Area', style: TextStyle(fontSize: 25),),
                  Padding(
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            menuMaxHeight: 200,
                            value: selectedValue7,
                            items: States.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            onChanged: (value) {
                              setState(
                                    () {
                                  selectedValue7 = '${value}';
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ), //Select Location Level List Area
              SizedBox(height: 30,),
              RoundedButton(text: 'View Valuation Rates', press: (){}, color: Colors.blue, textColor: Colors.white, length: 0.85,)
            ],
          ),
        ),
      ),
    );
  }
}
