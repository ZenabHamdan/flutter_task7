import 'package:task7/exports/exports.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.67.w,
      height: 55.32.h,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0x40EC5F5F), 
            blurRadius: 12.63,
            offset: Offset(0, 4.51), 
          ),
        ],
        borderRadius: BorderRadius.circular(7.22.r),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.22.r),
          ),
        ),
        child: Text(
          title,
          style: AppTextStyles.buttonText,
        ),
      ),
    );
  }
}
