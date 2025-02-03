import 'package:basevalidators/screens/scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';

class Categoryscreens extends StatefulWidget {
  const Categoryscreens({super.key});

  @override
  State<Categoryscreens> createState() => _CategoryscreensState();
}

class _CategoryscreensState extends State<Categoryscreens> {
  String _scanBarcodeResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Validades', style: TextStyle(color: Colors.white)),
        elevation: 1,
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(0, 77, 36, 1),
        actions: [
          IconButton(
              color: Colors.white,
              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const MyScannerPage()));
              },
              icon: const Icon(Icons.qr_code_scanner_rounded))
        ],
      ),
      ///drawer: const Drawer(
        ///backgroundColor: Colors.white,
      ///),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 1.75,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        children: categories.map((cat) {
          return CategoryItem(cat);
        }).toList(),
      ),
    );
  }

  void scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cacelar", false, ScanMode.BARCODE);
    } on PlatformException {
      barcodeScanRes = "ERRO!";
    }
    setState(() {
      _scanBarcodeResult = barcodeScanRes;
    });
  }
}
