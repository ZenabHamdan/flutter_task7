import 'package:task7/exports/exports.dart';
<<<<<<< HEAD
import 'package:task7/widgets/navbar.dart';
=======
import 'package:task7/view/navigation_bar/navigation_bar.dart';
//import 'package:task7/view/navigation_bar/navigation_bar.dart';
>>>>>>> main-branch

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Task 7',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Poppins',
<<<<<<< HEAD
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: NavigationBarScreen(),
=======
            useMaterial3: true,
          ),
           home: NavigationBarScreen(),
>>>>>>> main-branch
        );
      },
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> main-branch
