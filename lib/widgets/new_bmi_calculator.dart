import 'package:flutter/material.dart';

class NewBMICalculator extends StatefulWidget {
  final Function addBMICalc;

  const NewBMICalculator({
    required this.addBMICalc,
    super.key
  });

  @override
  State<NewBMICalculator> createState() => _NewBMICalculatorState();
}

class _NewBMICalculatorState extends State<NewBMICalculator> {

  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  void _submitCalculateBMI() {
    final inputHeight = double.parse(_heightController.text);
    final inputWeight = double.parse(_weightController.text);

    if (inputHeight.isNegative || inputWeight.isNegative) return;

    widget.addBMICalc(inputHeight, inputWeight);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          TextField(
            decoration: const InputDecoration(
              labelText: 'Height'
            ),
            controller: _heightController,
          ),

          TextField(
            decoration: const InputDecoration(
              labelText: 'Weight'
            ),
            controller: _weightController,
          ),


          ElevatedButton(
            onPressed: _submitCalculateBMI, 
            child: const Text('Save')
          )
        ],
      ),
    );
  }
}