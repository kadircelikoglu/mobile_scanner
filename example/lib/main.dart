import 'package:flutter/material.dart';
import 'package:mobile_scanner_example/barcode_scanner_controller.dart';
import 'package:mobile_scanner_example/barcode_scanner_listview.dart';
import 'package:mobile_scanner_example/barcode_scanner_pageview.dart';
import 'package:mobile_scanner_example/barcode_scanner_returning_image.dart';
import 'package:mobile_scanner_example/barcode_scanner_simple.dart';
import 'package:mobile_scanner_example/mobile_scanner_overlay.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Mobile Scanner Example',
      home: MyHome(),
    ),
  );
}

final class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mobile Scanner Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CustomElevatedButton(
              text: 'MobileScanner Simple',
              view: BarcodeScannerSimple(),
            ),
            const CustomElevatedButton(
              text: 'MobileScanner with ListView',
              view: BarcodeScannerListView(),
            ),
            const CustomElevatedButton(
              text: 'MobileScanner with Controller',
              view: BarcodeScannerWithController(),
            ),

            const CustomElevatedButton(
              text: 'MobileScanner with ScanWindow',
              view: BarcodeScannerReturningImage(),
            ),

            const CustomElevatedButton(
              text: 'MobileScanner with Controller (returning image)',
              view: BarcodeScannerReturningImage(),
            ),

            const CustomElevatedButton(
              text: 'MobileScanner with zoom slider',
              view: BarcodeScannerPageView(),
            ),

            const CustomElevatedButton(
              text: 'MobileScanner pageView',
              view: BarcodeScannerPageView(),
            ),

            CustomElevatedButton(
              text: 'MobileScanner with Overlay',
              view: BarcodeScannerWithOverlay(),
            ),

            ////////////////////////
          ],
        ),
      ),
    );
  }
}

final class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Widget view;
  const CustomElevatedButton({super.key, required this.text, required this.view});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return view;
            },
          ),
        );
      },
      child: Text(text),
    );
  }
}
