import 'package:flutter/material.dart';

class OrderedModel {
  late final IconData icon;
  late final String name, orders, ppu, revenue;
  OrderedModel({
    required this.icon,
    required this.name,
    required this.orders,
    required this.ppu,
    required this.revenue,
  });
  static List<OrderedModel> dummy() {
    return [
      OrderedModel(
          icon: Icons.local_pizza,
          name: 'Quarter Pounder',
          orders: '520',
          ppu: '\$2.99',
          revenue: '\$1554.80'),
      OrderedModel(
          icon: Icons.local_pizza,
          name: 'Large Soda',
          orders: '520',
          ppu: '\$2.99',
          revenue: '\$1554.80'),
      OrderedModel(
          icon: Icons.local_pizza,
          name: 'Big Mac McMeal',
          orders: '502',
          ppu: '\$6.99',
          revenue: '\$3508.98'),
    ];
  }
}
