import 'package:flutter/material.dart';
import '../widgets/new_bmi_calculator.dart';
import '../widgets/bmi_list.dart';
import '../models/bmi_model.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // Dummy Data
  final List<BMI> _bmiCalculator = [
    // BMI(weight: 93, height: 175, bmi: 34),
    // BMI(weight: 60, height: 165, bmi: 25)
  ];

  void _addNewBMICalculator(double pHeight, double pWeight) {

    final pBMI = pWeight / ((pHeight / 100) * (pHeight / 100));

    final newBMICalc = BMI(
      weight: pWeight,
      height: pHeight, 
      bmi: pBMI
    );

    setState(() {
      _bmiCalculator.add(newBMICalc);
    });
  }

  void _startNewBMICalculator(BuildContext context) {
    showModalBottomSheet(
      context: context, 
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewBMICalculator(
            addBMICalc:  _addNewBMICalculator
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: Colors.blueAccent[900],
      ),
      body: Column(
        children: [

          Image.asset(
            'lib/assets/images/bmi.jpg',
            fit: BoxFit.cover,
          ),

          Expanded(
            child: BMIList(
              bmicalculator: _bmiCalculator
            )
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _startNewBMICalculator(context),
        backgroundColor: Colors.deepPurple,
        child:  const Icon(Icons.add),
      ),
    );
  }
}