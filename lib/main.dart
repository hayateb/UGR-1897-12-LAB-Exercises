// import 'package:flutter/material.dart';
// // class MyApp extends StatelessWidget {
// //  @override
// //  Widget build(BuildContext context) {
// //    return MaterialApp(
// //      title: 'Flutter Demo',
// //      initialRoute: '/',
// //      routes: {
// //        '/': (context) => ScreenOne(),
// //        '/second': (context) => ScreenTwo()
// //      },
// //    );
// //  }
// // }



// // class ScreenOne extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Screen One"),
// //       ),
// //       body: Center(
// //         child: ElevatedButton(
// //             child: const Text("Next"),
// //             onPressed: () {
// //               Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                       builder: (BuildContext context) => ScreenTwo(),
// //                       settings: const RouteSettings(arguments: "data from screen one")
// //                       ),);
// //             },),
// //       ),
// //     );
// //   }
// // }




// // class ScreenTwo extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     final String? text =ModalRoute.of(context)!.settings.arguments as String?;

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Screen Two'),
// //       ),
// //       body: Center(

// //              child:ElevatedButton(
// //           onPressed: () {
// //             Navigator.pop(context);
// //           },
// //           child: Text(text!),
// //         ),
// //       ),
// //     );
// //   }
// // }



// class Course {
//  String code;
//  String title;
//  String description;
//  Course({required this.code, 
//          required this.title,  
//          this.description = ""});
// }


// class CoursesListScreen extends StatelessWidget {
//  const CoursesListScreen({required this.courses, required this.onTapped});
//  final List<Course> courses;
//  final ValueChanged<Course> onTapped;

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: const Text("Courses List")),
//      body: ListView(
//        children: [
//          for (var course in courses)
//            ListTile(
//              title: Text(course.title),
//              subtitle: Text(course.code),
//              onTap: () => onTapped(course),
//            ),
//        ],
//      ),);}
// }



// class CourseDetailsScreen extends StatelessWidget {
//  final Course course;
//  const CourseDetailsScreen({required this.course});
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text(course.title)),
//      body: Center(
//        child: Column(
//          children: [
//            Text(course.title),
//            Text(course.code),
//            Text(course.description),
//          ],
//        ),),);
//  }
// }

import 'package:flutter/material.dart';

class Course {
  String code;
  String title;
  String description;

  Course({
    required this.code,
    required this.title,
    this.description = "",
  });
}

class CoursesListScreen extends StatelessWidget {
  final List<Course> courses;
  final ValueChanged<Course> onTapped;

  const CoursesListScreen({
    required this.courses,
    required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Courses List"),
      ),
      body: ListView(
        children: [
          for (var course in courses)
            ListTile(
              title: Text(course.title),
              subtitle: Text(course.code),
              onTap: () => onTapped(course),
            ),
        ],
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final Course course;

  const CourseDetailsScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(course.title),
            Text(course.code),
            Text(course.description),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Management App',
      initialRoute: '/',
      routes: {
        '/': (context) => CoursesListScreen(
              courses: [
                Course(
                  code: 'CSE101',
                  title: 'Introduction to Computer Science',
                  description: 'An introductory course to computer science.',
                ),
                Course(
                  code: 'ENG201',
                  title: 'English Composition',
                  description: 'A course on writing and composition.',
                ),
                // Add more courses as needed
              ],
              onTapped: (course) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CourseDetailsScreen(course: course),
                  ),
                );
              },
            ),
      },
    );
  }
}
