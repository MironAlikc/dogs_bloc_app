import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                NumberPicker(
                    value: _currentVal,
                    minValue: 1,
                    maxValue: 50,
                    onChanged: (value) {
                      _currentVal = value;
                      setState(() {});
                      print(_currentVal);
                    }),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('get image'),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 200,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                          ),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
