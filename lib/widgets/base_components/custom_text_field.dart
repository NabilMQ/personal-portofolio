import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.titleField,
    required this.hintString,
    required this.validator,
    required this.isTextArea,
  });

  final String titleField;
  final String hintString;
  final String? Function(String text) validator;
  final bool isTextArea;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  ValueNotifier <bool> isAutoValidate = ValueNotifier <bool> (false);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 12,
        children: [
          Text(
            widget.titleField,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          ValueListenableBuilder(
            valueListenable: isAutoValidate,
            builder: (context, isAutoValidateValue, child) {
              return TextFormField(
                minLines: widget.isTextArea
                  ? 5
                  : 1,
                maxLines: widget.isTextArea
                  ? null
                  : 1,
                  onEditingComplete: () {
                    FocusScope.of(context).nextFocus();
                  },
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: widget.hintString,
                  hintStyle: Theme.of(context).textTheme.titleMedium!.apply(
                    color: Theme.of(context).colorScheme.inverseSurface.withAlpha(100),
                  )
                ),
                autovalidateMode: isAutoValidateValue
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
                validator: (value) {
                  return widget.validator(value!);
                },
                onChanged: (value) {
                  isAutoValidate.value = true;
                },
              );
            }
          )
        ],
      ),
    );
  }
}