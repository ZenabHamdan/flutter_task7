import 'package:task7/core/constants/app_images.dart';

class CourseModel {
  final String title;
  final String description;
  final String profilePicture;
  final String instructorName;
  final String instructorTitle;
  final String duration;

  CourseModel({
    this.title = '',
    this.description = '',
    this.profilePicture = '',
    this.instructorName = '',
    this.instructorTitle = '',
    this.duration = '',
  });

  static List<CourseModel> courses = [
    CourseModel(
        title: 'Step design sprint for \nbeginner',
        description:
            'In this course I will show the step by step, day by day process to build better products, just as Google, Slack, KLM and manu other do.',
        profilePicture: AppImages.avatarImage,
        instructorName: 'Laurel Seilha',
        instructorTitle: 'Product Designer',
        duration: '5h 21m'),
    CourseModel(
        title: 'Step design sprint for \nbeginner',
        description:
            'In this course I will show the step by step, day by day process to build better products, just as Google, Slack, KLM and manu other do.',
        profilePicture: AppImages.avatarImage,
        instructorName: 'Laurel Seilha',
        instructorTitle: 'Product Designer',
        duration: '5h 21m'),
    CourseModel(
        title: 'Step design sprint for \nbeginner',
        description:
            'In this course I will show the step by step, day by day process to build better products, just as Google, Slack, KLM and manu other do.',
        profilePicture: AppImages.avatarImage,
        instructorName: 'Laurel Seilha',
        instructorTitle: 'Product Designer',
        duration: '5h 21m'),
  ];
}