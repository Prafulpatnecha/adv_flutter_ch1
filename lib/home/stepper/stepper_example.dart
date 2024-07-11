import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';

import '../../component/text_filed_container.dart';
import '../../utils/golble_value.dart';


class StepperPage extends StatefulWidget {
  const StepperPage({super.key});

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stepper Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EnhanceStepper(
              currentStep: index,
              onStepContinue: () {
                setState(() {
                  if (index == 0) {
                    index = 1;
                  } else if (index == 1) {
                    index = 2;
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (index == 1) {
                    index = 0;
                  } else if (index == 2) {
                    index = 1;
                  }
                });
              },
              onStepTapped: (value) {
                setState(() {
                index=value;
                });
              },
              horizontalLinePosition: HorizontalLinePosition.top,
              horizontalTitlePosition: HorizontalTitlePosition.bottom,
              steps: [
                EnhanceStep(
                  isActive: true,
                  // icon: Icon(Icons.abc,color: Theme.of(context).primaryColor,size: 30,),
                  state: (index > 0) ? StepState.complete : StepState.editing,
                  title: const Text('Account'),
                  content: Column(
                    children: [
                      const SizedBox(height: 10,),
                      buildTextField(textFind: 'Full Name', context: context),
                      const SizedBox(height: 10,),
                      buildTextField(textFind: 'Email', context: context),
                      const SizedBox(height: 10,),
                      buildTextField(textFind: 'Password', context: context),
                    ],
                  ),
                ),
                EnhanceStep(
                  isActive: true,
                  // icon: Icon(Icons.abc,color: Theme.of(context).primaryColor,size: 30,),
                  state: (index > 1) ? StepState.complete : StepState.editing,
                  title: const Text('Address'),
                  content: Column(
                    children: [
                      const SizedBox(height: 10,),
                      buildTextField(textFind: 'Full Address', context: context),
                    ],
                  ),
                ),
                EnhanceStep(
                  isActive: true,
                  // icon: Icon(Icons.abc,color: Theme.of(context).primaryColor,size: 30,),
                  state: (index > 2) ? StepState.complete : StepState.editing,
                  title: const Text('Mobile Number'),
                  content:Column(
                    children: [
                      const SizedBox(height: 10,),
                      buildTextField(textFind: 'Mobile Number', context: context),
                    ],
                  ),
                ),
              ],
            ),
            IconButton(
              style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blue.shade50)),
              onPressed: () {
              Navigator.of(context).pushNamed('/stepper2');
            }, icon: Icon(Icons.navigate_next_outlined,color: Theme.of(context).colorScheme.onSecondary,),iconSize: 30,)
          ],
        ),
      ),
    );
  }

}


// CupertinoStepper(
//
// currentStep: index,
// type: StepperType.vertical,
// onStepContinue: () {
// if(index==0)
// {
// index=1;
// }
// else if(index==1)
// {
// index=2;
// }
// },
// onStepCancel: () {
//
// },
// steps: [
// Step(
// title: Text('Account'),
// state: StepState.editing,
// content: Text('data'),
// isActive: false
// ),
// ],
// ),
