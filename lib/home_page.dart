import 'dart:math';

import 'package:flutter/material.dart';

import 'value_notifiers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Lucky number A: ${luckyNumber.value}"),
            valueListenableBuilder(),
          ],
        ),
      ),
      floatingActionButton: fab(),
    );
  }

  FloatingActionButton fab() {
    return FloatingActionButton(
      child: const Icon(Icons.circle),
      onPressed: () {
        luckyNumber.value = Random().nextInt(100);
      },
    );
  }

  ValueListenableBuilder<int?> valueListenableBuilder() {
    return ValueListenableBuilder<int?>(
      valueListenable: luckyNumber,
      builder: (context, _luckyNumber, __) {
        return _luckyNumber //luckyNumber.value
                ==
                null
            ? const SizedBox()
            : Center(
                child: Text("Lucky number B: $_luckyNumber"),
              );
      },
    );
  }

  @override
  void dispose() {
    luckyNumber.dispose();
    super.dispose();
  }
}
