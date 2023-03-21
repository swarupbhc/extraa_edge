import 'package:flutter/material.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(child: CircularProgressIndicator()),
        appBar: AppBar(title: const Text("Loading...")));
  }
}
