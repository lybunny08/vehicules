import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue.withOpacity(0.08)),
      height: 50,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Search cars ...',
              style: TextStyle(color: Colors.black12),
            ),
            Icon(Icons.search_sharp)
          ],
        ),
      ),
    );
  }
}
