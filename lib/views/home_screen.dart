import 'package:flutter/material.dart';
import 'package:mobile_app/views/record_creating_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () => RecordCreatingScreen.goHere(context),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: const Text('asdf'),
    );
  }
}
