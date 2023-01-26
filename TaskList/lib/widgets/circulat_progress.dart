import 'package:flutter/material.dart';

class CircularProgressIndicatorCustom extends StatefulWidget {
  const CircularProgressIndicatorCustom({Key? key}) : super(key: key);

  @override
  State<CircularProgressIndicatorCustom> createState() => _CircularProgressIndicatorCustomState();
}

class _CircularProgressIndicatorCustomState extends State<CircularProgressIndicatorCustom> {
  late bool _loading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
  }

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      strokeWidth: 10,
      backgroundColor: Colors.red,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
    );
  }
}
