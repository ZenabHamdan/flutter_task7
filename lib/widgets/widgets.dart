
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart' as badges;

import '../core/constants/app_colors.dart';
import '../core/constants/app_images.dart';
import '../core/constants/app_text_styles.dart';
import '../exports/exports.dart';
import '../view/messenger_screen/messenger_screen.dart';

class ChatItem extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final int notificationCount;
  final String avatarImagePath;
  final bool isOnline;

  const ChatItem({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.notificationCount,
    required this.avatarImagePath,
    this.isOnline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfilePictureWithStatus(
          avatarImagePath: avatarImagePath,
          isOnline: isOnline,
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: SizedBox(
            height: 80.0.sp.h,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: AppTextStyles.profileText,
                ),
                Text(
                  message,
                  style: AppTextStyles.profileDescriptionText,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
        ),
        DateTimeAndNotification(
          time: time,
          notificationCount: notificationCount,
        ),
      ],
    );
  }
}
class ChatScreen extends StatelessWidget {
  final List<Map<String, dynamic>> chatData = [
    {
      "name": "Roger Hulg",
      "message": "Hey, can I ask something? I need your help please",
      "time": "15 min",
      "notificationCount": 4,
      "avatarImagePath": "assets/images/Avatar_1.png",
      "isOnline": true,
    },
    {
      "name": "Hilman Nuris",
      "message": "Thank’s for your information dude!",
      "time": "Yesterday",
      "notificationCount": 0,
      "avatarImagePath": "assets/images/Avatar_2.png",
      "isOnline": false,
    },
    {
      "name": "Erick Lawrence",
      "message": "Did you take the free illustration class yesterday?",
      "time": "Yesterday",
      "notificationCount": 1,
      "avatarImagePath": "assets/images/Avatar_3.png",
      "isOnline": true,
    },
    {
      "name": "Jennifer Dunn",
      "message": "Hey Samuel,where did you get your point? can we exchange?",
      "time": "2 week ago",
      "notificationCount": 2,
      "avatarImagePath": "assets/images/Avatar_4.png",
      "isOnline": true,
    },
    {
      "name": "Andy Warhol",
      "message": "that’s true bro, hahaha",
      "time": "14/08/20",
      "notificationCount": 0,
      "avatarImagePath": "assets/images/Avatar_5.png",
      "isOnline": false,
    },
    {
      "name": "Thomas Partrey",
      "message": "Hi Bor How Are you Could you please help me?",
      "time": "Yesterday",
      "notificationCount": 0,
      "avatarImagePath": "assets/images/Avatar_6.png",
      "isOnline": false,
    },
    {
      "name": "My Self",
      "message": "My notes about the school for today, it's amazing",
      "time": "Yesterday",
      "notificationCount": 0,
      "avatarImagePath": "assets/images/Avatar_0.png",
      "isOnline": true,
    },

  ];

   ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.separated(
        itemCount: chatData.length,
        itemBuilder: (context, index) {
          final data = chatData[index];
          return ChatItem(
            name: data["name"],
            message: data["message"],
            time: data["time"],
            notificationCount: data["notificationCount"],
            avatarImagePath: data["avatarImagePath"],
            isOnline: data["isOnline"],
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey[400], // Customize color
          thickness: 10, // Customize thickness
          indent: 72, // Left margin for alignment
          endIndent: 16, // Right margin
        ),
      ),
    );
  }
}


class ProfilePictureWithStatus extends StatelessWidget {
  final String avatarImagePath;
  final bool isOnline;

  const ProfilePictureWithStatus({
    super.key,
    required this.avatarImagePath,
    required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 19.r,
          backgroundImage: AssetImage(avatarImagePath),
        ),
        if (isOnline)
          Container(
            width: 10.r,
            height: 10.r,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 1.5.w,
              ),
            ),
          ),
      ],
    );
  }
}

class DateTimeAndNotification extends StatelessWidget {
  final String time;
  final int notificationCount;

  const DateTimeAndNotification({
    super.key,
    required this.time,
    required this.notificationCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Text(
              time,
              style: TextStyle(
                color: AppColors.iconArrowBackIos,
                fontSize: 12.63.sp,
              ),
            ),
            SizedBox(width: 5.w),
            Icon(
              Icons.arrow_back_ios,
              color: AppColors.iconArrowBackIos,
              size: 21.0.sp,
            ),
          ],
        ),
        SizedBox(height: 16.h),
        if (notificationCount > 0)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Container(
              padding: EdgeInsets.all(8.r),
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Text(
                "$notificationCount",
                style: AppTextStyles.buttonText,
              ),
            ),
          ),
      ],
    );
  }
}


class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int currentIndex = 0;
  int messageCount = 2;

  final List<Widget> screens = [
  //  const HomeScreen(),
  //  const DisableScreen(),
     MessagesScreen(),
  //  const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.disableIcon),
              activeIcon: SvgPicture.asset(
                AppImages.menuIcon,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.navIcon),
              activeIcon: SvgPicture.asset(
                AppImages.navIcon,
                color: AppColors.buttonColor,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: badges.Badge(
                badgeStyle: const badges.BadgeStyle(badgeColor: Color(0xffFF8500)),
                badgeContent: Text(
                  '$messageCount',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                child: SvgPicture.asset(
                  AppImages.messageIcon,
                  color: Colors.grey,
                  width: 24,
                  height: 24,
                ),
              ),
              activeIcon: badges.Badge(
                badgeContent: Text(
                  '$messageCount',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                child: SvgPicture.asset(
                  AppImages.messageIcon,
                  color: AppColors.buttonColor,
                  width: 24,
                  height: 24,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.profileIcon),
              activeIcon: SvgPicture.asset(
                AppImages.profileIcon,
                color: AppColors.buttonColor,
              ),
              label: ''),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.buttonColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
