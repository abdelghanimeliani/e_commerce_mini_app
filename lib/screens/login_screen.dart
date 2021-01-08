import 'package:e_commerce_mini_app/const.dart';
import 'package:e_commerce_mini_app/widgerts/costom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '';

class LoginScreen extends StatelessWidget{
  static String id = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    final double  weidth = MediaQuery.of(context).size.height;
   return Scaffold(
     backgroundColor:kMainColor ,
     body: ListView(
       children: [
         Padding(
           padding: EdgeInsets.only(top: 100),
           child: Container(
             height: MediaQuery.of(context).size.height*0.175555,
             child: Stack(
               alignment: Alignment.center,
               children: [
                 Image(image: AssetImage(
                     'images/icons/buyicon.png'
                 ),
                 ),
                 Positioned(
                   bottom: 0,
                   child: Text("Buy It",
                   style: TextStyle(
                     fontFamily: "Pacifico",
                     fontSize: 25 ,
                   ),
                 ),
                 )
               ],
             ),
           ),
         ),
         SizedBox(height:weidth*0.1 ,),
         CustomTextField(icon: Icons.email,hint: "ENTER YOUR E-MAIL"),
         // just pour faire un espace

         SizedBox(height:weidth*0.02 ,),
         CustomTextField(icon: Icons.lock,hint: "ENTER YOUR PASSWORD"),
         SizedBox(height:weidth*0.1 ,),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 210),
           child: FlatButton(onPressed: (){},
             padding: EdgeInsets.symmetric(vertical: 12),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20)
               ),
               child: Text("LOGIN",
               style: TextStyle(
                 fontSize: 20,
                 color: Colors.white
               ),),
           color: Colors.black,),
         ),
         SizedBox(height:weidth*0.1 ,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Don't have an account ?",
             style: TextStyle(
               fontSize: 16,
               color: Colors.white
             ),
             ),
             Text("SIGN IN",
               style: TextStyle(
                   fontSize: 16,

               ),
             ),

           ],
         )
       ],
     )
   );
  }

}

