import 'package:coffee/core/models/coffee.dart';
import 'package:coffee/features/payment/payment_screen.dart';
import 'package:coffee/themes/color_manger.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.item});
  final Coffee item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.favorite_border_outlined))
        ],
        centerTitle: true,
        title: Text('Detail'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset('assets/1.png')),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  item.name,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  item.type,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(item.rating.toString(),
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Icon(
                    Icons.star,
                    color: const Color.fromARGB(249, 237, 188, 113),
                  ),
                  Text('(230)')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Description',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(item.description,
                  style: TextStyle(
                    fontSize: 20,
                  )),
              Divider(),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Size',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.white),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9),
                              side: BorderSide(width: 0.5))),
                          minimumSize: WidgetStatePropertyAll(Size(100, 50))),
                      onPressed: () {},
                      child: Text(
                        'S',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(ColorManger().beigeColor),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9),
                              side: BorderSide(width: 0.5))),
                          minimumSize: WidgetStatePropertyAll(Size(100, 50))),
                      onPressed: () {},
                      child: Text(
                        'M',
                        style: TextStyle(
                            fontSize: 20, color: ColorManger().brownColor),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.white),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9),
                              side: BorderSide(width: 0.5))),
                          minimumSize: WidgetStatePropertyAll(Size(100, 50))),
                      onPressed: () {},
                      child: Text(
                        'L',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(' \$ ' + item.price.toString(),
                            style: TextStyle(
                                color: ColorManger().brownColor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  ColorManger().brownColor),
                              minimumSize:
                                  WidgetStatePropertyAll(Size(250, 65)),
                              shape:
                                  WidgetStatePropertyAll(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ))),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PaymentScreen()));
                          },
                          child: Text(
                            'Buy Now',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
