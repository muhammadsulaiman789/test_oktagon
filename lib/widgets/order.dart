import 'package:flutter/material.dart';
import 'package:testing_app/models/ordered.model.dart';

class Order extends StatelessWidget {
  final OrderedModel data;
  const Order({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Icon(data.icon),
              SizedBox(width: 5),
              Text(data.name),
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Text(data.orders),
              SizedBox(
                width: 25,
              ),
              Text(data.ppu),
              SizedBox(
                width: 20,
              ),
              Text(data.revenue),
            ]),
          ],
        ),
      ),
      const Divider(),
    ]);
  }
}
