import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChipData {
  final String title;
  final Color background;
  IconData? icon;
  bool isSelected = false;

  ChipData({required this.title, required this.background, this.icon});


}

class Chips {
  static final all = <ChipData>[
    ChipData(title: 'Summer', background: Colors.amber, icon: Icons.wb_sunny),
    ChipData(title: 'Winter', background: Colors.lightBlueAccent, icon: Icons.ac_unit),
    ChipData(title: 'Vintage', background: Colors.orange, icon: Icons.accessibility_sharp),
    ChipData(title: 'River', background: Colors.brown, icon: Icons.agriculture),
    ChipData(title: 'Sky', background: Colors.lightBlueAccent),
    ChipData(title: 'Waterfall', background: Colors.tealAccent, icon: Icons.water),
    ChipData(title: 'Nature', background: Colors.greenAccent),
    ChipData(title: 'Children', background: Colors.purpleAccent, icon: Icons.videogame_asset)
  ];
}
