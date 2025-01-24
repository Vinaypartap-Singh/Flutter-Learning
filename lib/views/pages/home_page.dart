import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/bg.jpg", fit: BoxFit.cover),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome To Flutter Application",
                        style: KTextStyle.title,
                      ),
                      Text(
                        "This is a simple flutter application",
                        style: KTextStyle.description,
                      ),
                      SizedBox(height: 20),
                      FilledButton(
                        onPressed: () {},
                        child: Text("Keep Getting New Updates"),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
