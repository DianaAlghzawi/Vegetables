import 'package:flutter/material.dart';

class SearchBarScreen extends StatelessWidget {
  const SearchBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SearchBar(
        leading: const Icon(
          Icons.search,
          size: 30,
        ),
        hintText: 'Search',
        hintStyle: MaterialStateProperty.all(
            const TextStyle(color: Color.fromRGBO(149, 134, 168, 1))),
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
    );
  }
}
