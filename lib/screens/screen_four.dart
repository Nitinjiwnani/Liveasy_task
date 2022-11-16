import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  String profile = "Shipper";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Please select your profile',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.center,
                height: 100,
                decoration: BoxDecoration(border: Border.all()),
                child: RadioListTile(
                  activeColor: Colors.black,
                  title: Text("Shipper"),
                  subtitle: Text(
                      'Lorem ipsum dolor sit amet,\n consectetur adipiscing'),
                  value: "Shipper",
                  groupValue: profile,
                  onChanged: (value) {
                    setState(() {
                      profile = value.toString();
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.center,
                height: 100,
                decoration: BoxDecoration(border: Border.all()),
                child: RadioListTile(
                  activeColor: Colors.black,
                  title: Text("Transporter"),
                  subtitle: Text(
                      'Lorem ipsum dolor sit amet,\n consectetur adipiscing'),
                  value: "Transporter",
                  groupValue: profile,
                  onChanged: (value) {
                    setState(() {
                      profile = value.toString();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 55,
              width: 325,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'nextscreen');
                },
                style: ElevatedButton.styleFrom(
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  primary: Color.fromARGB(242, 4, 47, 83),
                ),
                child: Text(
                  'CONTINUE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 19),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
