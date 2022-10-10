import 'package:flutter/material.dart';
import 'package:testing_app/models/ordered.model.dart';

import '../../widgets/order.dart';

class DashboardPages extends StatefulWidget {
  const DashboardPages({Key? key}) : super(key: key);

  @override
  State<DashboardPages> createState() => _DashboardPagesState();
}

class _DashboardPagesState extends State<DashboardPages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/logo.png'),
              Text('28 October 2021 Thursday | 17:30'),
              const Icon(Icons.newspaper),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                  height: 95,
                  width: 82,
                  decoration: BoxDecoration(
                      color: const Color(0xff003049),
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.money,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '\$123 456',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Revenue',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      ],
                    ),
                  )),
              SizedBox(width: 8),
              Container(
                  height: 95,
                  width: 82,
                  decoration: BoxDecoration(
                      color: const Color(0xff003049),
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.money,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '\$123 456',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Revenue',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      ],
                    ),
                  )),
              SizedBox(width: 8),
              Container(
                  height: 95,
                  width: 82,
                  decoration: BoxDecoration(
                      color: const Color(0xff003049),
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.money,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '\$123 456',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Revenue',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      ],
                    ),
                  )),
              SizedBox(width: 8),
              Container(
                  height: 95,
                  width: 82,
                  decoration: BoxDecoration(
                      color: const Color(0xff003049),
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.money,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '\$123 456',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Revenue',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 520,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.0,
                      blurRadius: 0.5,
                      offset: Offset(0, 0))
                ]),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ordered Items'),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Items'),
                          Row(children: [
                            Text('Orders'),
                            SizedBox(width: 20),
                            Text('PPU'),
                            SizedBox(width: 20),
                            Text('Revenue'),
                          ])
                        ],
                      ),
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: OrderedModel.dummy().length,
                      itemBuilder: (context, index) {
                        return Order(data: OrderedModel.dummy()[index]);
                      },
                    ),
                  ]),
            ),
          )
        ],
      ),
    )));
  }
}
