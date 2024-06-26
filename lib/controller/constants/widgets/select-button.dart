


import '../../linker/linker.dart';

class SelectButton extends StatelessWidget {
  int check;
  VoidCallback ontap;
  String text;
  int check2;
  String pic;
   SelectButton({super.key,this.pic='',
     required this.ontap, required this.check, required this.text, required this.check2 });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        //padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color:   check==check2 ? Colors.blue: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children:[
            SizedBox(width: 80,),
              Image(image: AssetImage(pic),color: check==check2 ?Colors.white:Colors.grey),
            SizedBox(width: 30,),
            Text(text,style: TextStyle(color:  check==check2 ?Colors.white:Colors.grey ),),
          ],
        ),
      ),
    );
  }
}


