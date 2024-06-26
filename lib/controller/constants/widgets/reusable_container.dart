

import '../../linker/linker.dart';

class ReusableContainer extends StatelessWidget {
  Color clr;
  Color txtclr;
 double h;
 double w;
 String text;

  ReusableContainer({super.key,
   this.clr=Colors.white, this.txtclr=Colors.black,required this.text,required this.w,
  required this.h});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: h,
      width: w,color: clr,
      child: Center(
        child: Text(text,style: TextStyle(color: txtclr,
            fontWeight: FontWeight.w500
        ,fontSize: 20),),),);
  }
}
