import 'package:alarm_app/myclass.dart';
import 'package:alarm_app/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final box = GetStorage();

  @override
  void initState() {
    var x = MyClass();
    // var y = MyClass();

    x.name = "ahmed";

    // print(y.name);

    // var xx = MyClass();

    // xx.name = "layla";

    // print(xx.name);

    Get.put(x);

    // GetStorage storage = GetStorage();

    _counter = box.read("counter") ?? 0;
    setState(() {});

    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      box.write("counter", _counter);

      // box.remove("counter");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Alarm App"),
        actions: [
          IconButton(
            icon: const Icon(Icons.color_lens),
            onPressed: () {
              Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              //   return const SettingScreen();
              // }));

              Get.to(const SettingScreen());
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Abedalrahman',
              style: TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black),
            ),
            const SizedBox(height: 50),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
