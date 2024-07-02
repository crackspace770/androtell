import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 350,
              width: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/bg_beranda.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 100.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    "assets/logo_beranda.png",
                    height: 70,
                    width: 70,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 80, top: 200),
                child: Container(

                  color: Colors.white,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 35.0, right: 35, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.cases_outlined, color: Colors.green),
                                SizedBox(width: 10),
                                Column(
                                  children: [
                                    Text("Sunday"),
                                    SizedBox(height: 5),
                                    Text("20-02-2022"),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_filled,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  children: [
                                    Text("Sunday"),
                                    SizedBox(height: 5),
                                    Text("20-02-2022"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Silahkan",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Scan Voucher Anda",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 25),
                      Image.asset(
                        "assets/barcode.png",
                        height: 150,
                        width: 150,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller?.navigateToScan(); // Navigate on button tap
                        },
                        child: Image.asset(
                          "assets/button_scan.png",
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}