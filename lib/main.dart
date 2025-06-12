import 'package:all_cards_dashboard/screen/allcrads_screen/controller/allcards_controller.dart';
import 'package:all_cards_dashboard/screen/allcrads_screen/screen/allcards_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => AllcardsController(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: AllcardsScreen());
  }
}
