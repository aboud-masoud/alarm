import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecoundScreen extends StatefulWidget {
  const SecoundScreen({super.key});

  @override
  State<SecoundScreen> createState() => _SecoundScreenState();
}

class _SecoundScreenState extends State<SecoundScreen> {
  RxString barColor1 = "red".obs;
  RxString barColor2 = "red".obs;
  RxString barColor3 = "red".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("Back")),
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                Obx(
                  () {
                    print("abeeeeed 1");
                    return ColorBar(
                      color: barColor1.value,
                      onPress: () {
                        barColor1 = "yellow".obs;
                      },
                    );
                  },
                ),
                const SizedBox(width: 10),
                Obx(() {
                  print("abeeeeed 2");
                  return ColorBar(
                    color: barColor2.value,
                    onPress: () {
                      barColor2 = "yellow".obs;
                    },
                  );
                }),
                const SizedBox(width: 10),
                Obx(() {
                  print("abeeeeed 3");
                  return ColorBar(
                    color: barColor3.value,
                    onPress: () {
                      barColor3 = "yellow".obs;
                    },
                  );
                }),
              ],
            ),
            TextButton(
              onPressed: () {
                barColor1 = "yellow".obs;
                barColor2 = "yellow".obs;
                barColor3 = "yellow".obs;
              },
              child: const Text("change"),
            )
          ],
        ),
      ),
    );
  }
}

class ColorBar extends StatelessWidget {
  final String color;
  final Function() onPress;
  const ColorBar({required this.onPress, super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    print("asdasdasdasdasdasd");
    return Expanded(
      child: Column(
        children: [
          Text(
            color,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          TextButton(
            onPressed: () {
              onPress();
            },
            child: const Text("change"),
          )
        ],
      ),
    );
  }
}
