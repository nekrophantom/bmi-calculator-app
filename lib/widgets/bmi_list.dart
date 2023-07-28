// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../models/bmi_model.dart';

class BMIList extends StatelessWidget {
  final List<BMI> bmicalculator;

  const BMIList({
    required this.bmicalculator,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bmicalculator.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(10),
          child: Card(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      // weight
                      Text(
                        "Height : ${bmicalculator[index].height.toStringAsFixed(0)}",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      // height
                      Text(
                        "Weight : ${bmicalculator[index].weight.toStringAsFixed(0)}",
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                  
                    ],
                  ),

                  Text(
                    "BMI : ${bmicalculator[index].bmi.toStringAsFixed(0)}",
                    style: Theme.of(context).textTheme.bodyLarge,  
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}