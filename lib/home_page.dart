import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/height_provider.dart';
import 'package:test_app/weight_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var weightProvider = Provider.of<WeightProvider>(context);
    var heightProvider = Provider.of<HeightProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Weight (kg)',
              style: TextStyle(fontSize: 20),
            ),
            //NOTE: MENGGUNAKAN CONSUMER
            // Consumer<WeightProvider>(
            //   builder: (context, weightProvider, _) => Slider(
            //       min: 1,
            //       max: 100,
            //       divisions: 100,
            //       label: weightProvider.weight.round().toString(),
            //       value: weightProvider.weight,
            //       onChanged: (newValue) {
            //         newValue = newValue.roundToDouble();
            //         print('weight: $newValue');
            //         weightProvider.weight = newValue;
            //       }),
            // ),
            Slider(
                min: 1,
                max: 100,
                divisions: 100,
                label: weightProvider.weight.round().toString(),
                value: weightProvider.weight,
                onChanged: (newValue) {
                  newValue = newValue.roundToDouble();
                  print('weight: $newValue');
                  weightProvider.weight = newValue;
                }),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Height (cm)',
              style: TextStyle(fontSize: 20),
            ),
            //NOTE: MENGGUNAKAN CONSUMER
            // Consumer<HeightProvider>(
            //   builder: (context, heightProvider, _) => Slider(
            //       min: 1,
            //       max: 200,
            //       divisions: 200,
            //       value: heightProvider.height,
            //       label: heightProvider.height.round().toString(),
            //       activeColor: Colors.pink,
            //       inactiveColor: Colors.pink.withOpacity(0.2),
            //       onChanged: (newValue) {
            //         newValue = newValue.roundToDouble();
            //         print('height: $newValue');
            //         heightProvider.height = newValue;
            //       }),
            // ),
            Slider(
                min: 1,
                max: 200,
                divisions: 200,
                value: heightProvider.height,
                label: heightProvider.height.round().toString(),
                activeColor: Colors.pink,
                inactiveColor: Colors.pink.withOpacity(0.2),
                onChanged: (newValue) {
                  newValue = newValue.roundToDouble();
                  print('height: $newValue');
                  heightProvider.height = newValue;
                }),
            SizedBox(height: 50),
            // Consumer<WeightProvider>(
            //   builder: (context, weightProvider, _) => Consumer<HeightProvider>(
            //     builder: (context, heightProvider, _) => Text(
            //       'Your BMI:\n${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}',
            //       style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            // )
            Text(
              'Your BMI:\n${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
