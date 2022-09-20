
import 'package:flutter/material.dart';

button({required String name, required String linkIcon, required Function widget}){

SizedBox(
                height: 26,
                width: 130,
                child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 73, 73, 73),
                  onPressed: () =>
                    //launchWhatsApp();
                    widget,
                  
                  label:  Text(
                    name,
                    style: TextStyle(fontSize: 10),
                  ),
                  icon: Image.asset(
                    linkIcon,
                    height: 22,
                    width: 22,
                  ),
                ),
              );

}