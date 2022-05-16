import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/services.dart';

class ListColor extends StatefulWidget {
  const ListColor({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListColorState();
}

class _ListColorState extends State<ListColor> {
  final List<Color> listColor = [
    Colors.blue,
    Colors.cyan,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.grey,
    Colors.purple,
    Colors.teal,
    Colors.orangeAccent,
    Colors.indigoAccent,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.blue,
    Colors.cyan,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.grey,
    Colors.purple,
    Colors.teal,
    Colors.orangeAccent,
    Colors.indigoAccent,
    Colors.deepOrange,
    Colors.deepPurple
  ];

  String getHexString(Color color) =>
      '#${color.value.toRadixString(16).substring(2, 8)}';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kIsWeb ? 24 : 16),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: kIsWeb ? 3 : 1,
              crossAxisSpacing: kIsWeb ? 16 : 8,
              mainAxisSpacing: kIsWeb ? 16 : 8,
              childAspectRatio: kIsWeb ? 3 : 4),
          itemCount: listColor.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kIsWeb ? 16 : 8)),
                color: listColor[index],
                child: Center(
                    child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    getHexString(listColor[index]),
                    style: const TextStyle(color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black26),
                )),
              ),
              contentPadding: const EdgeInsets.only(),
              onTap: () {
                ScaffoldMessenger.of(context).clearSnackBars();
                String hexColor = getHexString(listColor[index]);
                Clipboard.setData(ClipboardData(text: hexColor));
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content:
                        Text('Đã sap chép $hexColor')));
              },
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
            );
          }),
    );
  }
}
