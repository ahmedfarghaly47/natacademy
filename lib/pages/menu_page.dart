import 'package:flutter/material.dart';
import 'package:natacademy/globals.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  String fn = fNumber;

  void intState() {
    super.initState();
    if (fn == "") {
      fn = fNumber;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'Family Number: $fn',
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              Expanded(
                  child: Text(
                'Data 1',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              )),
              Expanded(
                  child: Text(
                'Data 2',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              )),
            ]),
            Row(children: [
              Expanded(
                  child: Text(
                'Data 3',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              )),
              Expanded(
                  child: Text(
                'Data 4',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              )),
            ]),
          ],
        ),
      ),
    );
  }
}
