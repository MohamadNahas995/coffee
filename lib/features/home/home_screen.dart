import 'package:coffee/themes/color_manger.dart';
import 'package:coffee/themes/t_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: 280,
          color: ColorManger().blackColor,
        ),
        Container(
          padding: EdgeInsets.only(left: 30, top: 80),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'location',
              style: TStyles().regular14gray.copyWith(color: Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  'Cairo , New Cairo Naser City',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.only(left: 20),
                    width: 280,
                    height: 52,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(16)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search Coffee',
                          icon: Icon(Icons.search)),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                  margin: EdgeInsets.only(right: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: ColorManger().brownColor),
                  width: 52,
                  height: 52,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.tune,
                        color: Colors.white,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Center(
                child: Image.asset('assets/banner.png'),
              ),
            )
          ]),
        )
      ]),
    );
  }
}
