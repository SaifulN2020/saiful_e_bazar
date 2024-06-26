import 'package:flutter/material.dart';
import 'package:saiful_e_bazar/presentation/utility/app_color.dart';
class SizePicker extends StatefulWidget {
  const SizePicker({super.key, required this.sizes, required this.onChange});

  @override
  State<SizePicker> createState() => _SizePickerState();
  final List<String> sizes;
  final Function(String) onChange;
}
class _SizePickerState extends State<SizePicker> {
  int selecteIndex=1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: widget.sizes.length,
          itemBuilder: (contex, index) {
            return GestureDetector(
              onTap: (){selecteIndex=index;
              widget.onChange(widget.sizes[index]);
              setState(() {

              });

              },

              child: Container(
                margin: EdgeInsets.only(right: 8),
                height: 35,width: 35,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: _getbackgroundColor(index==selecteIndex),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: _getSelectedTextColor(index==selecteIndex),)
                ),

                child:
                FittedBox(child: Text(widget.sizes[index],style: TextStyle(color: _getSelectedTextColor(index==selecteIndex)),))
              ),
            );
          }),
    );
  }
  Color _getSelectedTextColor(bool isSelected){
    return isSelected ? Colors.white:Colors.black;
  }
  Color _getbackgroundColor(bool isSelected){
    return isSelected ? AppColors.primaryColor:Colors.transparent;
  }

}