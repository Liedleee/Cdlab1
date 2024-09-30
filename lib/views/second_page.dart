import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/count_controller.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  // Menginisialisasi controller menggunakan Get.put
  final CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Get.put Page", style: TextStyle(fontSize: 30)),
            // Menggunakan Obx untuk mendengarkan perubahan pada controller.count
            Obx(
              () => Text(
                "${controller.countValue}", // Menggunakan getter countValue
                style: const TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              width: 120,
              child: ElevatedButton(
                onPressed: () => controller.increment(),
                child: const Text("Increment"),
              ),
            ),
            SizedBox(
              width: 120,
              child: ElevatedButton(
                onPressed: () => Get.back(),
                child: const Text("Get.back"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
