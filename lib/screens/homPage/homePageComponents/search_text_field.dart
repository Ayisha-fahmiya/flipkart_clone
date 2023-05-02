import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        height: 46,
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Search for products',
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 201, 200, 200),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            prefixIcon: Icon(
              Icons.search,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}
