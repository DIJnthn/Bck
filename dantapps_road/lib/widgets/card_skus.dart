import 'package:flutter/material.dart';

class TesteSku extends StatefulWidget {
  const TesteSku({super.key});

  @override
  State<TesteSku> createState() => _TesteSkuState();
}

class _TesteSkuState extends State<TesteSku> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  elevation: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.asset(
                            'lib/assets/image-removebg-preview.png'),
                      ),
                      const Column(
                        children: [
                          Text('Arroz Vo Olimpio 1Kg Parbo'),
                          SizedBox(height: 25),
                          Text('R\$ 4,99')
                        ],
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.menu))
                    ],
                  ),
                ),
                Card(
                  elevation: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.asset(
                            'lib/assets/image-removebg-preview (1).png'),
                      ),
                      const Column(
                        children: [
                          Text('Café Kimimo A Vacuo 250g'),
                          SizedBox(height: 25),
                          Text('R\$ 8,99')
                        ],
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.menu))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
