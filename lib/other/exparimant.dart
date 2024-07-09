// // Copyright 2020 J-P Nurmi <jpnurmi@gmail.com>
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.
//
// import 'package:flutter/cupertino.dart';
// import 'package:cupertino_stepper/cupertino_stepper.dart';
//
// // void main() => runApp(StepperApp());
//
// class StepperApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       title: 'CupertinoStepper for Flutter',
//       debugShowCheckedModeBanner: false,
//       home: StepperPage2(),
//     );
//   }
// }
//
// class StepperPage2 extends StatefulWidget {
//   @override
//   _StepperPage2State createState() => _StepperPage2State();
// }
//
// class _StepperPage2State extends State<StepperPage2> {
//   int currentStep = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: Text('CupertinoStepper for Flutter'),
//       ),
//       child: SafeArea(
//         child: CupertinoStepper(
//           type: StepperType.vertical,
//           currentStep: currentStep,
//           onStepCancel: () {
//             setState(() {
//               currentStep = 0;
//             });
//           },
//           onStepTapped: (value) {
//             setState(() {});
//           },
//           onStepContinue: () {
//             setState(() {
//               currentStep = 1;
//             });
//           },
//           // onStepTapped: (step) => setState(() => currentStep = step),
//           // onStepCancel: canCancel ? () => setState(() => --currentStep) : null,
//           // onStepContinue: canContinue ? () => setState(() => ++currentStep) : null,
//           steps: [
//             // for (var i = 0; i < 3; ++i)
//             //   _buildStep(
//             //     title: Text('Step ${i + 1}'),
//             //     isActive: i == currentStep,
//             //     state: i == currentStep
//             //         ? StepState.editing
//             //         : i < currentStep ? StepState.complete : StepState.indexed,
//             //   ),
//             _buildStep(
//               title: Text('Error'),
//               state: StepState.complete,
//             ),
//             const Step(
//                 subtitle: Text('Subtitle'),
//                 title: Text('Error'),
//                 state: StepState.indexed,
//                 label: Text('Data'),
//                 isActive: true,
//                 content: Text('data')
//                 // LimitedBox(
//                 //   maxWidth: 300,
//                 //   maxHeight: 300,
//                 //   child: Container(color: CupertinoColors.systemGrey),
//                 // ),
//                 )
//           ],
//         ),
//       ),
//     );
//   }
//
//   CupertinoStepper _buildStepper(StepperType type) {
//     final canCancel = currentStep > 0;
//     final canContinue = currentStep < 3;
//     return CupertinoStepper(
//       type: type,
//       currentStep: currentStep,
//       onStepTapped: (step) => setState(() => currentStep = step),
//       onStepCancel: canCancel ? () => setState(() => --currentStep) : null,
//       onStepContinue: canContinue ? () => setState(() => ++currentStep) : null,
//       steps: [
//         for (var i = 0; i < 3; ++i)
//           _buildStep(
//             title: Text('Step ${i + 1}'),
//             isActive: i == currentStep,
//             state: i == currentStep
//                 ? StepState.editing
//                 : i < currentStep
//                     ? StepState.complete
//                     : StepState.indexed,
//           ),
//         _buildStep(
//           title: Text('Error'),
//           state: StepState.error,
//         ),
//         const Step(
//             subtitle: Text('Subtitle'),
//             title: Text('Error'),
//             state: StepState.indexed,
//             label: Text('Data'),
//             isActive: true,
//             content: Text('data')
//             // LimitedBox(
//             //   maxWidth: 300,
//             //   maxHeight: 300,
//             //   child: Container(color: CupertinoColors.systemGrey),
//             // ),
//             )
//       ],
//     );
//   }
//
//   Step _buildStep({
//     required Widget title,
//     StepState state = StepState.indexed,
//     bool isActive = false,
//   }) {
//     return Step(
//       title: title,
//       subtitle: Text('Subtitle'),
//       state: state,
//       label: Text('Data'),
//
//       isActive: isActive,
//       content: Text('data'),
//       // LimitedBox(
//       //   maxWidth: 300,
//       //   maxHeight: 300,
//       //   child: Container(color: CupertinoColors.systemGrey),
//       // ),
//     );
//   }
// }
