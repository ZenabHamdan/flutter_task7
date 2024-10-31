import 'package:task7/exports/exports.dart';

class CourseList extends StatefulWidget {
  const CourseList({super.key});

  @override
  State<CourseList> createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
 

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentIndex = _pageController.page?.ceil() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // PageView
        SizedBox(
          height: 360,
          child: PageView.builder(
            itemCount: CourseModel.courses.length,
            controller: _pageController,
            itemBuilder: (context, index) {
              final course = CourseModel.courses[index];
              double scale = _currentIndex == index ? 1.0 : 0.8;
              return CourseCard(course: course, scale: scale);
            },
          ),
        ),
        
        // Indicator positioned below the PageView
        Positioned(
          bottom: 2.0, 
          child: ImageIndicator(
            currentIndex: _currentIndex,
            itemCount: CourseModel.courses.length,
          ),
        ),
      ],
    );
  }
}
