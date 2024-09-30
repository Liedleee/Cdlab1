import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'second_page.dart';
import 'third_page.dart';
import 'fourth_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Root Page", style: TextStyle(fontSize: 30)),
            SizedBox(
              width: 120,
              child: ElevatedButton(
                onPressed: () => Get.to(SecondPage()),
                child: const Text("Get.put"),
              ),
            ),
            SizedBox(
              width: 120,
              child: ElevatedButton(
                onPressed: () => Get.to(ThirdPage()),
                child: const Text("Get.lazyPut"),
              ),
            ),
            SizedBox(
              width: 120,
              child: ElevatedButton(
                onPressed: () => Get.to(FourthPage()),
                child: const Text("Get.putAsync"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
