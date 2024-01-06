// import 'dart:async';

import 'package:alarm_app/secound_screen.dart';
import 'package:alarm_app/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SSSS {
  final String name;
  SSSS(this.name);
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  final box = GetStorage();

  // ValueNotifier<int> counterNotifer = ValueNotifier<int>(0);
  // StreamController<int> counterStream = StreamController<int>.broadcast();
  // int _counterS = 0;

  RxInt getxCounter = 0.obs;
  RxString name = 'Jonatas Borges'.obs;

  Rx<SSSS> rrr = SSSS("ahmed").obs;

  // int ss = int.parse("1");

  @override
  void initState() {
    // _counter = box.read("counter") ?? 0;
    // setState(() {});

    // counterNotifer.value = box.read("counter") ?? 0;
    // _counterS = box.read("counter") ?? 0;

    int xx = box.read("counter") ?? 0;

    // rrr.value.name

    getxCounter = xx.obs;

    // print("_counterS");
    // print(_counterS);
    // counterStream.sink.add(_counterS);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("========= build");
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
            ElevatedButton(
              onPressed: () {
                Get.to(const SecoundScreen());
              },
              child: const Text("Go To Secound Screen"),
            ),
            const SizedBox(height: 20),
            const Text(
              'You have pushed the button this many times:',
            ),
            // ValueListenableBuilder<int>(
            //     valueListenable: counterNotifer,
            //     builder: (context, snapshot, child) {
            //       return Text(
            //         '$snapshot',
            //         style: Theme.of(context).textTheme.headlineMedium,
            //       );
            //     }),
            // StreamBuilder<int>(
            //     // initialData: 0,
            //     stream: counterStream.stream,
            //     builder: (context, snapshot) {
            //       return Text(
            //         snapshot.hasData ? '${snapshot.data}' : "$_counterS",
            //         style: Theme.of(context).textTheme.headlineMedium,
            //       );
            //     }),

            Obx(
              () => Text(
                "$getxCounter",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _incrementCounter() {
    // setState(() {

    // var x = counterNotifer.value;

    // var x = counterStream.(onListen: () => _cacheLength.sink.add(0));
    getxCounter++;

    // _counterS++;
    // counterStream.sink.add(_counterS);

    // counterNotifer.value = x;
    // // _counter++;
    // box.write("counter", x);
    // box.write("counter", counterNotifer.value);

    // print(_counter);
    // });
  }
}
