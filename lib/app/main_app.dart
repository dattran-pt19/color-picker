import 'package:color_picker/common/list_chips.dart';
import 'package:color_picker/common/list_color.dart';
import 'package:color_picker/common/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text('Color pickerrrrrrrrr', style: TextStyle(color: Colors.red)),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(
              placeholder: 'Tìm kiếm',
              onSearch: (value) {},
            ),
            const ListChips(),
            const Expanded(child: ListColor())
          ],
        ),
      ),
    );
  }
}
