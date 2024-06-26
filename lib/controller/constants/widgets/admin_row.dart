

import '../../linker/linker.dart';

class AdminRow extends StatelessWidget {

  String text;
  String picture;
   AdminRow({super.key,required this.text,required this.picture});

  @override
  Widget build(BuildContext context) {
    return  Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 80,width: 85,),

        Container(

          height: 38,
          width: 38,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xff5D5FEF)
          ),
          child: Center(child: Image(image:  AssetImage(picture),color: Colors.white,)),
        ),
        SizedBox(width: 15,),
        Text(text,style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20
        ),)
      ],
    );
  }
}
