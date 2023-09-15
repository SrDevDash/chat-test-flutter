import 'package:chat_t/config/theme/app_theme.dart';
import 'package:chat_t/pages/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes or Not',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectorColor: 1).theme(),
      home: ChatScreen(),
    );
  }
  
}