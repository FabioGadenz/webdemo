import 'package:contatoWeb/widgets/launch_app.dart';
import 'package:contatoWeb/widgets/launch_wats.dart';
import 'package:flutter/material.dart';

Widget button({required String name, required String linkIcon, data}) {
  return SizedBox(
    height: 26,
    width: 130,
    child: FloatingActionButton.extended(
      backgroundColor: const Color.fromARGB(255, 73, 73, 73),
      onPressed: () => data == null ? launchWhatsApp() : launchApp(data),
      label: Text(
        name,
        style: const TextStyle(fontSize: 10),
      ),
      icon: Image.asset(
        linkIcon,
        height: 22,
        width: 22,
      ),
    ),
  );
}
