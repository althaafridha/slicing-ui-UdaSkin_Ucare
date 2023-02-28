import 'dart:async';

import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/assets/button.dart';
import 'package:slicing_ui_ucare/main_menu.dart';
import 'package:slicing_ui_ucare/screens/home/home_screen.dart';

class DetailPaymentPage extends StatefulWidget {
  const DetailPaymentPage({super.key});

  @override
  State<DetailPaymentPage> createState() => _DetailPaymentPageState();
}

class _DetailPaymentPageState extends State<DetailPaymentPage> {
  Timer? countdownTimer;
  Duration myDuration = const Duration(minutes: 24);

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inMinutes.remainder(24));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new_outlined),
                color: const Color(0xff828282),
              )),
        ),
        title: const Text(
          'Payment',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
              color: const Color(0xffFafafa),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Payment Deadline',
                        style: TextStyle(
                          color: Color(0xff828282),
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "$minutes : $seconds",
                        style: const TextStyle(
                          color: Color(0xffeb5757),
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ]),
                const SizedBox(height: 10),
                const Divider(
                  color: Color(0xffe0e0e0),
                  thickness: 1,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Bank BSI",
                      style: TextStyle(
                        color: Color(0xff828282),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Image.asset(
                      "assets/icons/bank-bsi.png",
                      width: 70,
                      height: 35,
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Text(
                  "Account number",
                  style: TextStyle(
                    color: Color(0xff828282),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "03948738293849",
                      style: TextStyle(
                        color: Color(0xff4f4f4f),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Salin",
                      style: TextStyle(
                        color: Color(0xff4f4f4f),
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Total Payment",
                      style: TextStyle(
                        color: Color(0xff828282),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "\$520.00",
                      style: TextStyle(
                        color: Color(0xffeb5757),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ButtonAsset(
                  title: "Buy Again",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const MainMenu()));
                  }),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              onPressed: () {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color(0xff333333), width: 1),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    "Check Status",
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15)
          ],
        ),
      ),
    );
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  void resetTimer() {
    stopTimer();
    setState(() => myDuration = const Duration(days: 5));
  }

  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }
}
