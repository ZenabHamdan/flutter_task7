import 'package:task7/core/constants/app_text_styles.dart';
import 'package:task7/widgets/widgets.dart';

import '../../core/constants/app_colors.dart';
import '../../exports/exports.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 19.r, // Increased size for better visibility
                  backgroundImage:
                      const AssetImage("assets/images/Avatar_0.png"),
                ),
                Container(
                  width: 10.r,
                  height: 10.r,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 1.5.w, // Border width for white outline
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10.62.w,
            ),
            Column(
              children: [
                Text(
                  "My Messages",
                  style: AppTextStyles.buttonTextAppBar,
                ),
                Text(
                  "3 new messages",
                  style: AppTextStyles.profileDescriptionText,
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Icon(Icons.notifications),
                Container(
                  width: 14.r,
                  height: 10.r,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 1.w, // Border width for white outline
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //search Box
            Container(
              decoration: BoxDecoration(
                color: const Color(0xfff6f7fa),
                borderRadius: BorderRadius.all(Radius.circular(13.r)),
                border: Border.all(
                  color: const Color(0xfff6f7fa),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(15.w),
                      child: Text("Search here"),
                    ),
                  ),
                  Container(
                    child: Container(
                      margin: EdgeInsets.all(3.sp),
                      width: 39.72.w,
                      height: 40.3.h,
                      decoration: BoxDecoration(
                        color: AppColors.buttonColor,
                        borderRadius: BorderRadius.all(Radius.circular(11.r)),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 23.18.h,
            ),
            //Avatar_1
            Expanded(
              child: ListView.separated(
                itemCount: ChatScreen().chatData.length,
                itemBuilder: (context, index) {
                  final data = ChatScreen().chatData[index];
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
                  color: Colors.grey[300], // Customize color
                  thickness: 1, // Customize thickness
                  indent: 1, // Left margin for alignment
                  endIndent: 16.sp, // Right margin
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {},
                      child: Text("chang"),
                    ),
                    SizedBox(
                      height: 15.h,
                      width: 25.0.w,
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Text("to"),
                    ),
                    SizedBox(
                      height: 15.h,
                      width: 25.0.w,
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Text("nav"),
                    ),
                    SizedBox(
                      height: 15.h,
                      width: 25.0.w,
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Text("bar"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
