import 'package:color_picker/common/list_chips.dart';
import 'package:color_picker/common/list_color.dart';
import 'package:color_picker/common/search_bar.dart';
import 'package:flutter/material.dart';

class MainWeb extends StatefulWidget {
  const MainWeb({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainWebState();
}

class _MainWebState extends State<MainWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                const Text(
                  'Color picker',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 44,
                      fontWeight: FontWeight.bold),
                ),
                Container(width: 24),
                Expanded(
                  child: SearchBar(
                    placeholder: 'Tìm kiếm',
                    onSearch: (value) {},
                  ),
                )
              ],
            ),
          ),
          const ListChips(),
          const Expanded(child: ListColor())
        ],
      ),
    );
  }
}
