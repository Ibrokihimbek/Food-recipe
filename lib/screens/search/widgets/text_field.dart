import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

var maskFormatterByIngridient = MaskTextInputFormatter(
  mask: '#-#',
  filter: {"#": RegExp(r'[0-9]')},
  type: MaskAutoCompletionType.lazy,
);

class TextfieldWidget extends StatelessWidget {
  final TextEditingController textController;
  final String word;
  const TextfieldWidget(
      {super.key, required this.word, required this.textController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextFormField(
        inputFormatters: [maskFormatterByIngridient],
        keyboardType: TextInputType.number,
        controller: textController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 12),
          hintText: word,
          hintStyle: TextStyle(color: Colors.grey.shade400),
          helperStyle: const TextStyle(color: Colors.black26),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.C_70B9BE,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.C_70B9BE,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.C_70B9BE,
            ),
          ),
        ),
      ),
    );
  }
}

var maskFormatterByCalories = MaskTextInputFormatter(
  mask: '###-###',
  filter: {"#": RegExp(r'[0-9]')},
  type: MaskAutoCompletionType.lazy,
);

class TextfieldWidgetByCalories extends StatelessWidget {
  final TextEditingController textController;
  final String word;
  const TextfieldWidgetByCalories(
      {super.key, required this.word, required this.textController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextFormField(
        inputFormatters: [maskFormatterByCalories],
        keyboardType: TextInputType.number,
        controller: textController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 12),
          hintText: word,
          hintStyle: TextStyle(color: Colors.grey.shade400),
          helperStyle: const TextStyle(color: Colors.black26),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.C_70B9BE,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.C_70B9BE,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.C_70B9BE,
            ),
          ),
        ),
      ),
    );
  }
}

class TextfieldWidgetByTime extends StatelessWidget {
  final TextEditingController textController;
  final String word;
  const TextfieldWidgetByTime(
      {super.key, required this.word, required this.textController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: textController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 12),
          hintText: word,
          hintStyle: TextStyle(color: Colors.grey.shade400),
          helperStyle: const TextStyle(color: Colors.black26),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.C_70B9BE,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.C_70B9BE,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.C_70B9BE,
            ),
          ),
        ),
      ),
    );
  }
}

class TextfieldWidgetByExcluded extends StatelessWidget {
  final TextEditingController textController;
  final String word;
  const TextfieldWidgetByExcluded(
      {super.key, required this.word, required this.textController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: textController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 12),
          hintText: word,
          hintStyle: TextStyle(color: Colors.grey.shade400),
          helperStyle: const TextStyle(color: Colors.black26),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.C_70B9BE,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.C_70B9BE,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.r),
            ),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.C_70B9BE,
            ),
          ),
        ),
      ),
    );
  }
}
