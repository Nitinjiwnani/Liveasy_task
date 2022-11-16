import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  String dropdownValue = 'English';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(
            flex: 1,
          ),
          Center(
              child: Image(
            height: 60,
            width: 60,
            image: AssetImage(
              'images/gallery_icon.png',
            ),
          )),
          SizedBox(
            height: 20,
          ),
          Text(
            'Please select your Language',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'You can change the language \n at any time.',
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.grey, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            alignment: Alignment.center,
            width: 230,
            decoration: BoxDecoration(border: Border.all()),
            child: DropdownButton(
              value: dropdownValue,
              icon: const Icon(
                Icons.arrow_drop_down,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: [
                DropdownMenuItem(value: 'English', child: Text('English')),
                DropdownMenuItem(value: 'Hindi', child: Text('Hindi')),
              ],
            ),
          ),
          SizedBox(
            height: 27,
          ),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              width: 231,
              height: 55,
              color: Color.fromARGB(242, 4, 47, 83),
              child: Text(
                'NEXT',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 19),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Image(image: AssetImage('images/waves.jpg'))
        ],
      ),
    );
  }
}
