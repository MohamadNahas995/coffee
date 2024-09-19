import 'package:coffee/core/dummy%20data/dummy.dart';
import 'package:coffee/core/models/coffee.dart';
import 'package:coffee/features/details/details_screen.dart';
import 'package:coffee/themes/color_manger.dart';
import 'package:flutter/material.dart';

class ItemsGirdItem extends StatelessWidget {
  const ItemsGirdItem({super.key, required this.index});
  final index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Card(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    item: coffeeList[index],
                  ),
                ));
              },
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(coffeeList[index].imageUrl)),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          coffeeList[index].rating.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Icon(
                          Icons.star,
                          color: const Color.fromARGB(249, 237, 188, 113),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  coffeeList[index].name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  coffeeList[index].type,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    coffeeList[index].price.toString() + ' \$',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9))),
                        backgroundColor:
                            WidgetStatePropertyAll(ColorManger().brownColor)),
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: ColorManger().offWhiteColor,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
