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
              Text(
                "Welcome To Flutter Application",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 20,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: FilledButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return WidgetTree();
                    }));
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 40),
                  ),
                  child: Text("Get Started"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return WidgetTree();
                    }));
                  },
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, 40),
                  ),
                  child: Text("Login"),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
