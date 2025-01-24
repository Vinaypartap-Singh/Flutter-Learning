import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0;
  String? menuItems;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
          automaticallyImplyLeading: false,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                DropdownButton(
                    value: menuItems,
                    items: [
                      DropdownMenuItem(value: 'e1', child: Text("Item 1")),
                      DropdownMenuItem(value: 'e2', child: Text("Item 2")),
                      DropdownMenuItem(value: 'e3', child: Text("Item 3")),
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        menuItems = value;
                      });
                    }),
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                Text(controller.text),
                // Checkbox
                Checkbox.adaptive(
                  tristate: true,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
                CheckboxListTile.adaptive(
                  tristate: true,
                  title: Text("Click To Agree Terms & Conditions"),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
                // Switch

                Switch.adaptive(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),

                SwitchListTile.adaptive(
                  title: Text("Click Me"),
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),

                // Slider

                Slider.adaptive(
                  max: 100,
                  value: sliderValue,
                  onChanged: (value) {
                    setState(() {
                      sliderValue = value;
                    });
                  },
                ),
                // Here we Can use Inkwell or GrestureHandler Inkwell Provides Spalsh Effect
                InkWell(
                  onTap: () {
                    print("Image Clicked");
                  },
                  child:
                      Image(image: Image.asset("assets/images/bg.jpg").image),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white),
                  child: Text("Click Me"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Click Me"),
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text("Filled button"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Text Button"),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("Outlined Button"),
                ),
                CloseButton(),
                BackButton(),
              ],
            ),
          ),
        ));
  }
}
