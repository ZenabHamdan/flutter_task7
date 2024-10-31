import 'package:task7/exports/exports.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final String? svgIconPath;
  final bool isPassword;
  final String? hintText;
  final TextStyle? hintStyle;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.validator,
    this.svgIconPath,
    this.isPassword = false,
    this.hintText,
    this.hintStyle,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObscure = true;
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          validator: (value) {
            final errorMessage = widget.validator?.call(value);
            setState(() {
              hasError = errorMessage != null;
            });
            return errorMessage;
          },
          obscureText: widget.isPassword ? isObscure : false,
          decoration: InputDecoration(
            fillColor: AppColors.fieldsColor,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.41.r),
              borderSide: BorderSide.none,
              
            ),
            contentPadding:  EdgeInsets.symmetric(horizontal: 12.w, vertical:18.h),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: isObscure
                        ? SvgPicture.asset(AppImages.eyeIcon)
                        : Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                  )
                : null,
            hintText: widget.hintText,
            hintStyle: widget.hintStyle,
          ),
        ),
      ],
    );
  }
}
