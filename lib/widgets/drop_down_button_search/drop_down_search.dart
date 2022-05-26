import 'package:flutter/material.dart';

class DropDownSearch extends StatefulWidget {
   DropDownSearch({Key? key}) : super(key: key);

  @override
  State<DropDownSearch> createState() => _DropDownSearchState();
}

class _DropDownSearchState extends State<DropDownSearch> {

  List<String> location = ['One', 'Two', 'Three', 'Four'];
    String ? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fuel Entry')),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Center(
          child: Column(
            children: [
              DropdownButton<String>(
                hint: Text('Select a vehicle '),
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 15,
                elevation: 2,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: location.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );}}