import 'package:basevalidators/screens/category_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class MyScannerPage extends StatefulWidget {
  const MyScannerPage({super.key});

  @override
  State<MyScannerPage> createState() => _MyScannerPageState();
}

class _MyScannerPageState extends State<MyScannerPage> {
  String _scanBarcodeResult = "";

  get firstDate => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Validades'),
          centerTitle: true,
          elevation: 5,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Text(
                  'Leitor de Cód de Barras',
                ),
                ElevatedButton(
                    onPressed: scanBarcodeNormal,
                    child: const Text('Escanear')),
                const Text('Descrição: '),
                const Text('Código Interno: '),
                Text('Código de Barras: \n\n $_scanBarcodeResult'),
                const Text('Validade: '),
                TextField(
                  decoration: const InputDecoration(
                      labelText: 'Data:',
                      filled: true,
                      suffixIcon: Icon(Icons.calendar_today),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue))),
                  readOnly: true,
                  onTap: () {
                    selectDate();
                  },
                ),
                const Text('Quantidade: '),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        ///Navigator.of(context).push(MaterialPageRoute(
                        ///    builder: (context) => const Categoryscreens()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: const Text('Salvar',
                          style: TextStyle(color: Colors.white)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ///Navigator.of(context).push(MaterialPageRoute(
                        ///    builder: (context) => const Categoryscreens()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent),
                      child: const Text('Terminar',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  selectDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2024),
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
