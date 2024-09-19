import 'package:coffee/core/dummy%20data/dummy.dart';
import 'package:coffee/features/home/widgets/filter_row.dart';
import 'package:coffee/features/home/widgets/items_gird_item.dart';
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
        Padding(
          padding: EdgeInsets.only(left: 10, top: 80),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'location',
                style: TStyles().regular14gray.copyWith(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
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
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
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
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset('assets/banner.png'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilterRow(
                      textColor: Colors.white,
                      title: 'All coffee',
                      backgroundColor: ColorManger().brownColor),
                  FilterRow(
                    textColor: Colors.black,
                    title: 'Latte',
                  ),
                  FilterRow(
                    textColor: Colors.black,
                    title: 'Mocha',
                  ),
                  FilterRow(
                    textColor: Colors.black,
                    title: 'Cappuccino ',
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.only(top: 25),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.85),
                  itemCount: coffeeList.length,
                  itemBuilder: (context, index) {
                    return ItemsGirdItem(index: index);
                  }),
            )
          ]),
        )
      ]),
    );
  }
}
