import 'package:flutter/material.dart';
import 'package:mini_project_1/screens/pages/home_page.dart';

import '../style/styled_body_text.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top:36 ,bottom: 20),
          child: StyledBodyText("My Coffee Id",),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown[700],
      ),
      body: const HomePage(),
    );
  }
}