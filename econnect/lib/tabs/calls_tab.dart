import 'package:flutter/material.dart';

class CallTab extends StatefulWidget {
  const CallTab({Key? key}) : super(key: key);

  @override
  State<CallTab> createState() => _CallTabState();
}

class _CallTabState extends State<CallTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Call'),)
    );
  }
}