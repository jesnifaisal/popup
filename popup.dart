import 'package:flutter/material.dart';

class popup extends StatefulWidget {
  const popup({super.key});

  @override
  State<popup> createState() => _popupState();
}

List<String> language = ["Grape", "Apple", "Orange", "Kiwi", "Cherry", "Mango"];

class _popupState extends State<popup> {
  String _currentLanguage = language[0];
  Future _displaaybpttomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        height: 400,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                RadioListTile(
                  title: Text("Grape"),
                  value: language[0],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Apple"),
                  value: language[1],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Orange"),
                  value: language[2],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Kiwi"),
                  value: language[3],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Cherry"),
                  value: language[4],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Mango"),
                  value: language[5],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Pop Up Screen")),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _displaaybpttomSheet(context);
            },
            child: Text("Click here the pop up screen"),
          ),
        ));
  }
}
