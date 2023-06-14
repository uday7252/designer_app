import 'dart:developer';

import 'package:flutter/material.dart';

import '../theme/color.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _performSearch(String searchText) {
    log('Performing search for: $searchText');
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      decoration: const InputDecoration(
        hintText: 'Find Pro, Post',
        hintStyle: TextStyle(
            fontFamily: 'Roboto', fontWeight: FontWeight.w400, fontSize: 18),
        suffixIcon: Icon(
          Icons.search,
          color: secondaryColor,
          size: 25,
        ),
        contentPadding: EdgeInsets.only(left: 20),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      onChanged: (value) {
        _performSearch(value);
      },
    );
  }
}
