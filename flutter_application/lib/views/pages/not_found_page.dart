import 'package:flutter/material.dart';
import 'package:flutter_application/routes/app_pages.dart';
import 'package:get/get.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${Get.routing.current} Page Not Found',
                style: const TextStyle(fontSize: 30)),
            const SizedBox(height: 25),
            ElevatedButton(
              child: const Text('Go To Log In Page',
                  style: TextStyle(fontSize: 30)),
              onPressed: () => Get.offNamed(Routes.log.nameToRoute()),
            )
          ],
        ),
      ),
    );
  }
}
