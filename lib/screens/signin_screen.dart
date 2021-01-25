import 'package:e_commerce_mini_app/services/auth.dart';
import 'package:e_commerce_mini_app/widgerts/costom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../const.dart';

class SignupScreen extends StatelessWidget {
  String _email, _password ,_name;
  static String id = "signup";
  final _auth = Auth();
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final double  weidth = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor:kMainColor ,
        body: Form(
          key: _globalKey,
          child: ListView(
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
              SizedBox(height: weidth*0.1,),

              CustomTextField(hint: "name",
                  icon: Icons.perm_identity,
              onClick: (value){
                _name = value ;
              },
              ),
              //email

              SizedBox(height: weidth*0.02,),

              //pour email


              CustomTextField(icon: Icons.email,
                  hint: "ENTER YOUR E-MAIL",
                onClick: (value){
                  _email = value ;
                },),


              // just pour faire un espace

              SizedBox(height:weidth*0.02 ,),

              //pour le mot de passe

              CustomTextField(icon: Icons.lock,
                  hint: "ENTER YOUR PASSWORD",
                onClick: (value){
                  _password = value ;
                },),
              SizedBox(height:weidth*0.09 ,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 210),

                child: FlatButton(
                  onPressed: ()async{
                  if(_globalKey.currentState.validate())
                    {// creat user
                      _globalKey.currentState.save();
                    final result= await _auth.signUp(_email, _password);
                    }
                },
                  padding: EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text("SingUp",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
                  color: Colors.black,),
              ),
              SizedBox(height:weidth*0.08 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Do have an account ?",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                    ),
                  ),


                  GestureDetector(
                    onTap:() {
                      Navigator.pop(context);
                    },
                    child: Text("LOGIN",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}

