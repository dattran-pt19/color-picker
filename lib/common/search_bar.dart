import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key, this.placeholder = '', this.onSearch})
      : super(key: key);
  final String placeholder;
  final ValueChanged<String>? onSearch;

  @override
  State<StatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.only(left: kIsWeb ? 24 : 16, right: kIsWeb ? 24 : 16),
      width: double.infinity,
      child: Row(
        children: [
          const Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                  Icons.search,
                color: Colors.black54,
              )),
          Expanded(
              child: TextField(
                style: const TextStyle(
                  color: Colors.black87
                ),
                onChanged: (value) {
                  if (widget.onSearch != null) {
                    widget.onSearch!(value);
                  }
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.placeholder
                ),
              )
          )
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
