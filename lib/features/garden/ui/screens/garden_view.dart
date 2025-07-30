import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class GardenView extends StatelessWidget {
  const GardenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Garden View',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}