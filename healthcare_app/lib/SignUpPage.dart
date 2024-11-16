import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_app/ProfilePage.dart';
import 'package:healthcare_app/SignInPage.dart';
import 'SignUpPageUI.dart';

class SignUpPage extends StatefulWidget{

  const SignUpPage({super.key});

  
  @override
  State<StatefulWidget> createState() => _SignUpPageState();  
}

class _SignUpPageState extends State{

  @override
  Widget build(BuildContext context){

    return Scaffold(

      body: Center(
        child: SizedBox(
          height: 402,
          width: 300,
          child: Column(
            children: [
              SizedBox(
                height: 151,
                width: 184,
                child: Image.asset("assets/Vector.png"),
              ),
                  const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 30,
                  width:300,
                  child:  Text(
                    "Lets get started!",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                 
                SizedBox(
                  height: 24,
                  width: 300,
                  child: Text(
                    "Login to Stay healthy and fit",
                     style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage()
                        ),
                      );
                  },
                  child: 
                      Container(
                        width: 250,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                           border: Border.all(
                            color: Colors.teal,
                            width: 2,
                          ),
                          color: Colors.teal,
                        ),
                        child: Center(
                          child: Text("Login",
                            style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white,
                            
                          ),
                          textAlign: TextAlign.center,
                          ),
                        ),
                      ),      
                    ),
                  const SizedBox(
                      height: 16,
                  ),
                GestureDetector(
                  onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPageUI()
                        ),
                      );
                  },
                  child: Container(
                        width: 250,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          border: Border.all(
                            color: Colors.teal,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text("SignUp",
                          style: GoogleFonts.inter(
                           fontWeight: FontWeight.w600,
                            fontSize: 16, 
                            color: Colors.teal,                        
                          ),
                          textAlign: TextAlign.center,
                          
                          ),
                        ),
                      ),
                ),
                   
              
            ],
          ),
        ),
      ),

    );
  }
}