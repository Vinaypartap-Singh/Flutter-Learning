import 'package:flutter/material.dart';
import 'package:flutter_app/views/widget_tree.dart';
import 'package:flutter_app/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        HeroWidget(),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Welcome To Flutter Application"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return WidgetTree();
                  }));
                },
                child: Text("Get Started"),
              )
            ],
          ),
        )
      ],
    ));
  }
}
