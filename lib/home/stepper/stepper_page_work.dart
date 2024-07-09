import 'package:adv_flutter_ch1/home/stepper/stepper_example.dart';
import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';

import '../../component/textFiledContainer.dart';
import '../../utils/golble_value.dart';
class StepperPageWork extends StatefulWidget {
  const StepperPageWork({super.key});

  @override
  State<StepperPageWork> createState() => _StepperPageWorkState();
}

class _StepperPageWorkState extends State<StepperPageWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stepper Simple'),
      ),
      body:
      Stepper(
        physics: const BouncingScrollPhysics(),
        // horizontalLinePosition: HorizontalLinePosition.center,
        type: StepperType.horizontal,
        // horizontalTitlePosition: HorizontalTitlePosition.inline,
        currentStep: indexs,
        onStepTapped: (value) {
          setState(() {
            indexs=value;
          });
        },
        onStepContinue: () {
          setState(() {
            if (indexs == 0) {
              indexs = 1;
            } else if (indexs == 1) {
              indexs = 2;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (indexs == 1) {
              indexs = 0;
            } else if (indexs == 2) {
              indexs = 1;
            }
          });
        },
        steps: [
          Step(
            isActive: true,
            state: (indexs > 0) ? StepState.complete : StepState.editing,
            title: Text('Personal',style: TextStyle(fontSize: 13,color: Theme.of(context).colorScheme.onSurface,fontWeight: FontWeight.bold),),
            content: Column(
              children: [
                const SizedBox(height: 10,),
                buildTextField2(textFind: 'Email', findIcon:  Icon(Icons.email,color: Theme.of(context).colorScheme.onSurface,), lineFind: 1, context: context),
                const SizedBox(height: 10,),
                buildTextField2(textFind: 'Address', findIcon:  Icon(Icons.home,color: Theme.of(context).colorScheme.onSurface), lineFind: 3, context: context),
                const SizedBox(height: 10,),
                buildTextField2(textFind: 'Mobile No', findIcon:  Icon(Icons.phone,color: Theme.of(context).colorScheme.onSurface), lineFind: 1, context: context,),
              ],
            ),
          ),
          Step(
            isActive: true,
            state: (indexs > 1) ? StepState.complete : StepState.editing,
            title:  Text('Contact',style: TextStyle(fontSize: 13,color: Theme.of(context).colorScheme.onSurface,fontWeight: FontWeight.bold)),
            content:Column(
              children: [
                const SizedBox(height: 10,),
                buildTextField2(textFind: 'Father Mobile Number', findIcon: Icon(Icons.phone,color: Theme.of(context).colorScheme.onSurface), lineFind: 1, context: context),
                const SizedBox(height: 10,),
                buildTextField2(textFind: 'Mother Mobile Number', findIcon: Icon(Icons.phone,color: Theme.of(context).colorScheme.onSurface), lineFind: 1, context: context),
              ],
            ),
          ),
          Step(
            isActive: true,
            // icon: Icon(Icons.abc,color: Theme.of(context).primaryColor,size: 30,),
            state: (indexs > 2) ? StepState.complete : StepState.editing,
            title: Text('Upload',style: TextStyle(fontSize: 13,color: Theme.of(context).colorScheme.onSurface,fontWeight: FontWeight.bold)),
            content:  Column(
              children: [
                const SizedBox(height: 10,),
                Text('Check All And Then Continue',style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontWeight: FontWeight.bold,fontSize: 20),),
                const SizedBox(height: 10,),
              ],
            ),
          ),
        ],
      ),
    );;
  }
}
