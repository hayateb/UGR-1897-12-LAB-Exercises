import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import 'ScreenOne.dart';


// class ScreenTwo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: const Text("Screen Two"),
//      ),
//      body: Center(
//        child: ElevatedButton(
//            child: const Text("Back"), 
//            onPressed: () => Navigator.pop(context)),
//      ),
//    );
//  }
// }





// // class ScreenTwo extends StatelessWidget {
// //  @override
// //  Widget build(BuildContext context) {
// //    return Scaffold(
// //      appBar: AppBar(
// //        title: const Text("Screen Two"),
// //      ),
// //      body: Center(
// //        child: ElevatedButton(
// //            child: const Text("Back"), 
// //            onPressed: () => Navigator.pop(context)),
// //        ),
// //      ),
// //    );
// //  }
// // }

