//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
//  //   ///

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder customBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.indigo, width: 2.5),
    );

    const customTextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter App'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              '\$ 250',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            const SizedBox(height: 20.0),
            TextField(
              style: customTextStyle,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                enabledBorder: customBorder,
                focusedBorder: customBorder,
                prefixText: 'PKR : ',
                prefixStyle: customTextStyle,
                // enabledBordder:
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                debugPrint('Convert Pressed');
              },
              onLongPress: () {
                debugPrint('LOOOONG Convert Pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent,
                minimumSize: const Size(double.infinity, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Convert Now'),
            )
          ],
        ),
      )),
    );
  }
}
