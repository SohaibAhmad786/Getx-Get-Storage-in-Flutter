// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Getx_Storage extends StatefulWidget {
  const Getx_Storage({super.key});

  @override
  State<Getx_Storage> createState() => _Getx_StorageState();
}

String txt = "ON";

class _Getx_StorageState extends State<Getx_Storage> {
  final box = GetStorage();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    txt=box.read('key')??"ON";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Getx Storage",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (txt == "ON") {
                      txt = "OFF";
                    } else {
                      txt = "ON";
                    }
                    box.write('key', txt);
                  });
                },
                child: Text(
                  txt,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 300,
                  width: 200,
                  child: txt=="ON"?Image.asset(
                    "images/on.png",
                    fit: BoxFit.fill,
                  ):Image.asset(
                    "images/off.png",
                    fit: BoxFit.fill,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
