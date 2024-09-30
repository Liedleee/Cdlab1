import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/count_controller.dart';

class ThirdPage extends StatelessWidget {
  ThirdPage({super.key});

  // Mengambil instance dari controller yang telah diinisialisasi dengan Get.lazyPut
  final CountController controller = Get.find<CountController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Get.lazyPut Page", style: TextStyle(fontSize: 30)),
            Obx(
              () => Text(
                "${controller.count}",
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
