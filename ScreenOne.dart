import 'package:flutter/material.dart';

import 'ScreenTwo.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("Next"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ScreenTwo()));
            }),
      ),
    );
  }
}












// class ScreenOne extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("home_Screen"),
//       ),
//       body: Center(
//         child: ElevatedButton(child: const Text("Next"), onPressed: (
//           onPressed: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (BuildContext context) => ScreenTwo()));
//         ) {}),
//       ),
//     );
//   }
// }
