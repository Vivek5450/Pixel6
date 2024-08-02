
import 'package:flutter/material.dart';

Widget customDropDown(String text,List<String> items,ValueChanged<String?> onChanged){
  return DropdownButton<String>
    (
    value: text,
    items: items.map<DropdownMenuItem<String>>((String value){
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
    onChanged: onChanged,
  );
}

