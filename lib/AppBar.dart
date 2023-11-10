import 'package:flutter/material.dart';

Widget getAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.list,
          color: Colors.black,
          size: 32,
        )),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications, color: Colors.black, size: 25))
    ],
  );
}
