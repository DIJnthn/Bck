import 'package:basevalidators/screens/category_screens.dart';
import 'package:basevalidators/screens/edit.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 280,
              width: 600,
              child: Image.asset('lib/assets/img/logo.png'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Categoryscreens()));
              },
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromRGBO(255, 132, 0, 1)),
              child: const Text('REPOSITOR'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EditPage()));
              },
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromRGBO(0, 77, 36, 1)),
              child: const Text('ADMINISTRATIVO'),
            ),
            Text(DateFormat("EEEE, d 'de' MMMM 'de' yyyy", 'pt_BR').format(DateTime.now())),
          ],
        ),
      ),
    );
  }
}
