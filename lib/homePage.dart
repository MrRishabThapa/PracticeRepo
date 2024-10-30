// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, unused_element, prefer_typing_uninitialized_variables, avoid_unnecessary_containers, library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String username;
  final String msg;

  HomePage({required this.username, required this.msg});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String username;

  @override
  void initState() {
    super.initState();
    username = widget.username;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: _appbar(username),
      ),
      body: Center(
        child: Text(
          'Message: ${widget.msg}',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  Widget _appbar(String username) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Welcome, ${username.isNotEmpty ? username : "Guest"}!'),
      ],
    );
  }
}
