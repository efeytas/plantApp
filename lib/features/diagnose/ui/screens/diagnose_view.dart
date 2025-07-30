import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DiagnoseView extends StatelessWidget {
  const DiagnoseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Diagnose View',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}