import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chips.dart';

class ListChips extends StatefulWidget {
  const ListChips({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListChipsState();
}

class _ListChipsState extends State<ListChips> {
  final List<ChipData> chips = Chips.all;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 24, right: 24),
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 16,
        children: chips
            .map(
              (chip) => FilterChip(
                  labelPadding: const EdgeInsets.all(4),
                  label: Text(chip.title,
                      style: TextStyle(
                          fontWeight: chip.isSelected
                              ? FontWeight.bold
                              : FontWeight.normal)),
                  avatar: chip.icon != null
                      ? CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(chip.icon!,
                              color: chip.isSelected
                                  ? chip.background
                                  : Colors.grey),
                        )
                      : null,
                  backgroundColor:
                      chip.isSelected ? chip.background.withAlpha(30) : null,
                  elevation: chip.isSelected ? 0 : 2,
                  onSelected: (_) {
                    setState(() {
                      chip.isSelected = !chip.isSelected;
                    });
                  }),
            )
            .toList(),
      ),
    );
  }
}
