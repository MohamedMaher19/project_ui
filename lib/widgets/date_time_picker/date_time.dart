import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/utils/themes.dart';

class DateTimePicker extends StatelessWidget {
   DateTimePicker({Key? key}) : super(key: key);

  final format = DateFormat("yyyy-MM-dd");


  @override
  Widget build(BuildContext context) {
    return  Container(
      width:180,
      child: Center(
        child: DateTimeField(
          format: format,
          initialValue: DateTime.now(),
          decoration: InputDecoration(

            contentPadding:  const EdgeInsets.symmetric(vertical: 5.0,horizontal:1),
            suffixIcon:const Padding(
              padding: EdgeInsets.only(right:1),
            ),
            prefixIcon:const Icon(Icons.arrow_drop_down_sharp,size: 30,color:Color(0xff244094),),

            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: wordsColor)
            ),
            filled: true,
            disabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: wordsColor)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color:wordsColor)
            ),
            focusColor: Colors.red,
            fillColor:Colors.white,
            hintStyle:const TextStyle(color: Colors.amber,fontSize: 15),
            // hintText: ,
          ),
          onShowPicker: (context, currentValue) async {
            final date = await showDatePicker(
                context: context,
                firstDate: DateTime(1950),
                initialDate: currentValue ?? DateTime.now(),
                lastDate: DateTime(2100));
            if (date != null) {
              final time = await showTimePicker(
                context: context,
                initialTime:
                TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
              );
              return date;
            } else {
              return currentValue;
            }
          },
        ),
      ),
    );
  }
}
