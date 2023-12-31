import 'package:alarm_app/myclass.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  void initState() {
    // var x = MyClass();
    // print(x.name);

    MyClass v = Get.find();
    print(v.name);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Get.snackbar("My Title", "Me Messager");
                },
                child: const Text("show sanackBar")),
            TextButton(
                onPressed: () {
                  Get.defaultDialog(title: "My Title", middleText: "Dialog Desc");
                },
                child: const Text("show default Dialog")),
          ],
        ),
      ),
    );
  }
}
