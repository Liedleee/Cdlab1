import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/count_controller.dart';

class FourthPage extends StatelessWidget {
  FourthPage({super.key});

  // Mengambil instance dari controller yang telah diinisialisasi dengan Get.putAsync
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
            const Text("Get.putAsync Page", style: TextStyle(fontSize: 30)),
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
