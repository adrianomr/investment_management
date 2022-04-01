import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class NavigatorUtil{
  static open(ModuleWidget widget, BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => widget));
  }

}