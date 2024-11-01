import 'package:task7/exports/exports.dart';


class LabelsWidgetList extends StatelessWidget {
  final List<String> labels;
  final int selectedIndex;
  final ValueChanged<int> onLabelTap;

  const LabelsWidgetList({
    Key? key,
    required this.labels,
    required this.selectedIndex,
    required this.onLabelTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h, left: 15.4.w),
      child: SizedBox(
        height: 40.h,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: labels.length,
          itemBuilder: (context, index) {
            final isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () => onLabelTap(index),
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: Container(
                  height: 37.16.h,
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.buttonColor : AppColors.fieldsColor,
                    borderRadius: BorderRadius.circular(7.22.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
                    child: Center(
                      child: Text(
                        labels[index],
                        style: AppTextStyles.profileDescriptionText.copyWith(
                          fontWeight: FontWeight.w500,
                          color: isSelected ? AppColors.fieldsColor : AppColors.hintTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
