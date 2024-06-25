import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final bool isSelected;
  final String text;
  final String date;
  final ValueChanged<bool> onCheckboxChanged;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const CustomText({
    Key? key,
    required this.isSelected,
    required this.text,
    required this.date,
    required this.onCheckboxChanged,
    required this.onEdit,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: isSelected,
          onChanged: (bool? value) {
            onCheckboxChanged(value ?? false);
          },
          checkColor: Colors.white, // The color of the check mark
          fillColor: MaterialStateProperty.all(Colors.grey),
        ),
        GestureDetector(
          onTap: () {
            onCheckboxChanged(!isSelected);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                date,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SizedBox(width: 80,),
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: onEdit,
        ),
        IconButton(
          icon: Icon(Icons.delete, color: Colors.red),
          onPressed: onDelete,
        ),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey,
      thickness: 1,
    );
  }
}
