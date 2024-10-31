// import 'package:task7/exports/exports.dart';

// class MessagesScreen extends StatefulWidget {
//   const MessagesScreen({super.key});

//   @override
//   State<MessagesScreen> createState() => _MessagesScreenState();
// }

// class _MessagesScreenState extends State<MessagesScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.backgroundColor,
//       appBar: AppBar(
//         backgroundColor: AppColors.backgroundColor,
//         leading: Padding(
//           padding: EdgeInsets.only(left: 14.0.w),
//           child: Row(
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     width: 36.09.w,
//                     height: 36.09.h,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                         image: AssetImage(AppImages.profileImage),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 0.0,
//                     right: 2.0,
//                     child: Container(
//                       width: 10.0.w,
//                       height: 10.0.h,
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           color: Colors.white,
//                           width: 2.0,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "My Messages",
//               style: TextStyle(
//                   fontSize: 14.44.sp,
//                   fontWeight: FontWeight.w700,
//                   color: Color(0xff303030)),
//             ),
//             SizedBox(
//               height: 4.75.h,
//             ),
//             Text(
//               "2 new messages",
//               style: TextStyle(
//                   fontSize: 12.63.sp,
//                   fontWeight: FontWeight.w400,
//                   color: Color(0xffC7C9D9)),
//             ),
//           ],
//         ),
//         actions: [
//           Padding(
//             padding: EdgeInsets.only(right: 20.0),
//             child: SvgPicture.asset(AppImages.notificationsIcon),
//           )
//         ],
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 19.0.h),
//           child: Stack(
//             children: [
//               TextField(
//                 decoration: InputDecoration(
//                   fillColor: Color(0xffF6F7FA),
//                   filled: true,
//                   hintText: 'Search here',
//                   hintStyle: TextStyle(
//                       fontSize: 14.44.sp,
//                       fontWeight: FontWeight.w400,
//                       color: Color(0xff9D9FA0)),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5.41.r),
//                       borderSide: BorderSide.none),
//                   contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
//                 ),
//               ),
//               Positioned(
//                 right: 8.0,
//                 top: 6.0,
//                 child: Container(
//                   width: 39.7.w,
//                   height: 39.7.h,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(7.22.r),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Color(0xffEC5F5F40).withOpacity(0.25),
//                           offset: Offset(0, 4.51),
//                           blurRadius: 12.63
//                         )
//                       ],
//                       color: AppColors.buttonColor),
//                   child: IconButton(
//                     onPressed: () {},
//                     icon: SvgPicture.asset(AppImages.searchIcon)
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:task7/exports/exports.dart';
import 'package:task7/widgets/chat_item.dart';

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
                  radius: 19.r,
                  backgroundImage: AssetImage(AppImages.ava0Image),
                ),
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
                const Icon(Icons.notifications),
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
                      child: const Icon(
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
                  color: Colors.grey[300], 
                  thickness: 1, 
                  indent: 1, 
                  endIndent: 16.sp, 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
