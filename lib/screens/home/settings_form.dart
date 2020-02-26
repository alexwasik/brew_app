import 'package:flutter/material.dart';
import 'package:brew_crew/shared/constants.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  
  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];

  // Form Values
  String _currentName;
  String _currentSugars;
  String _currentStrength;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text(
            'Update your brew settings',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          TextFormField(
          decoration: textInputDecoration,
          validator: (val) => val.isEmpty ? 'Please Enter a Name' : null,
          onChanged: (val) => setState(() => _currentName = val),
          ),
          SizedBox(height: 10.0),
          DropdownButtonFormField(
            value: _currentSugars ?? '0',
            decoration: textInputDecoration,
            items: sugars.map((sugar) {
              return DropdownMenuItem(
                value: sugar,
                child: Text('$sugar sugars'),
              );
            }).toList(),
            onChanged: (val) => setState(() => _currentSugars = val ),
          ),
          //slider,
          SizedBox(height: 10.0),
          RaisedButton(
            color: Colors.pink,
            child: Text(
              'Update',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () async {
              print(_currentName);
              print(_currentSugars);
              print(_currentStrength);
          })
        ],
      )
    );
  }
}
