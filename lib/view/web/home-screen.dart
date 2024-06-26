
import '../../controller/linker/linker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelected=false;
  int check=0;
  @override
  Widget build(BuildContext context) {
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(children: [
        Container(

          height: h,width: w*0.25,
          child: Column(children: [

            AdminRow(text: 'Admin Portal', picture:MyImages.user),
            SelectButton(
              text: 'Dashboard',
              pic: MyImages.pic,
                ontap: (){
                  check=1;

                  setState(() {

                  });
                },
                check: check,

            check2: 1,
            ),
            SelectButton(
              text: 'Staff',
               pic: MyImages.person,
                ontap: (){
                  check=2;
                  setState(() {

                  });
                },
                check: check,

            check2: 2,
            ),
            SelectButton(
              text: 'Students',
              pic: MyImages.user,
                ontap: (){
                  check=3;
                  setState(() {

                  });
                },
                check: check,

            check2: 3,
            ),
            SelectButton(
                ontap:(){
                  check=4;
                  setState(() {

                  });
                } ,
                check: check,
              pic: MyImages.feeses,
                text: 'Feeses',
              check2: 4,
            ),
            SelectButton(
              ontap:(){
                check=5;
                setState(() {

                });
              } ,
              check: check,
              pic: MyImages.feeses ,
              text: 'Expenses',
              check2: 5,),
            SelectButton(
              ontap:(){
                check=6;
                setState(() {

                });
              } ,
              check: check,
              pic: MyImages.user ,
              text: 'Add Students',
              check2: 6,),
            SelectButton(
              ontap:(){
                check=7;
                setState(() {

                });
              } ,
              check: check,
              pic: MyImages.signout ,
              text: 'Sign Out',
              check2: 7,),

          ],),

        ),
        Container(
          color: Color(737791),
          height: h,
          width: w*0.75,

        child: Center(child:
        check==1? ReusableContainer( text: 'Dashboard Screen', w:500, h: 500,clr:Colors.blueGrey.shade100)
            :check==2 ?  ReusableContainer(text: 'Staff Screen', w: 500, h: 500,clr:Colors.grey.shade200)
           :check==3 ?  ReusableContainer(text: 'Students Data Screen', w: 500, h: 500,clr:Colors.purple.shade100)
        :check==4 ? ReusableContainer(text: 'Feeses Screen', w: 500, h: 500,clr:Colors.lightGreen.shade100)
        :check==5 ? ReusableContainer(text: 'Expenses', w: 500, h: 500,clr:Colors.grey.shade200)
        :check==6? ReusableContainer(text: 'Add Students',w: 500, h: 500,clr:Colors.purple.shade100)
        :check==7? ReusableContainer(text: 'SignOut Screen', w: 500, h: 500)
           : SizedBox(height: 4,),
          
         ),
        )
      ],),
    );
  }
}
