import 'package:task7/exports/exports.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      padding: const EdgeInsets.all(20.0),
      height: MediaQuery.of(context).size.height * 0.78,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Available time",
                    style: AppTextStyles.sheetTitleText,
                  ),
                  SizedBox(
                    height: 2.78.h,
                  ),
                  Text(
                    "Adjust to your schedule",
                    style: AppTextStyles.subSheetTitleText,
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 38.93.w,
                height: 40.93.h,
                decoration: BoxDecoration(
                    color: AppColors.hintTextColor,
                    borderRadius: BorderRadius.circular(7.22.r)),
                child: const Center(
                    child: Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.white,
                )),
              ),
            ],
          ),
          SizedBox(
            height: 25.8.h,
          ),
          Container(
            height: 200.h,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 28.13,
                  mainAxisSpacing: 13.19,
                  childAspectRatio: 2.5,
                ),
                itemCount: scheduleTimes.length,
                itemBuilder: (context, index) {
                  final schedule = scheduleTimes[index];
                  Color backgroundColor;
                  Color textColor;
                  Color borderColor;

                  switch (schedule.status) {
                    case TimeStatus.available:
                      backgroundColor = Colors.white;
                      textColor = AppColors.buttonColor;
                      borderColor = AppColors.buttonColor;
                      break;
                    case TimeStatus.taken:
                      backgroundColor = Color(0xffEEEEEE);
                      textColor = Color(0xffBDBDBD);
                      borderColor = Color(0xffC7C9D9);
                      break;
                    case TimeStatus.chosen:
                      backgroundColor = AppColors.buttonColor;
                      textColor = Colors.white;
                      borderColor = AppColors.buttonColor;
                      break;
                  }
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(7.22.r),
                        border: Border.all(color: borderColor),
                      ),
                      child: Text(
                        schedule.time,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 12.63.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Text("Email", style: AppTextStyles.header),
          SizedBox(height: 2.68.h),
          TextField(
            decoration: InputDecoration(
                fillColor: Color(0xffEEEEEE),
                filled: true,
                hintText: 'samuel_herickson@gmail.com',
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.44.sp,
                    color: Color(0xffC7C9D9)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.41.r),
                  borderSide: BorderSide.none,
                )),
          ),
          SizedBox(height: 12.64.h),
          Text("Telp number", style: AppTextStyles.header),
          SizedBox(height: 2.68.h),
          TextField(
            decoration: InputDecoration(
                fillColor: Color(0xffEEEEEE),
                filled: true,
                hintText: '(001) 34 4567890',
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.44.sp,
                    color: Color(0xffC7C9D9)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.41.r),
                  borderSide: BorderSide.none,
                )),
          ),
          SizedBox(height: 12.64.h),
          Text("Schedule date & time", style: AppTextStyles.header),
          SizedBox(height: 2.68.h),
          Row(
            children: [
              Container(
                width: 18.1.w,
                height: 18.09.h,
                decoration: BoxDecoration(
                    color: Color(0xff9D9FA0).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(3.r)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    AppImages.markIcon,
                  ),
                ),
              ),
              SizedBox(width: 7.13.w,),
              Text("12 October, 2020 at 09.45 AM", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.44.sp, color: Color(0xff9D9FA0)),)
            ],
          ),
          SizedBox(height:27.h,),
          CustomButton(title: "Apply", onPressed: (){
            Navigator.of(context).pop();
          })
        ],
      ),
    );
  }
}