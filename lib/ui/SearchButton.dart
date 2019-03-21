import 'package:flutter/material.dart';

class DisplaySearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.mic),
                prefixIcon: Icon(Icons.search),
                fillColor: Colors.white,
                filled: true,
                hintText: "Search for groups or people",
              ),
            );
  }
}