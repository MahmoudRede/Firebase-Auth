import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var key= GlobalKey<FormState>();
  var emailController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
        elevation: 0.0,
        backwardsCompatibility: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text('Reset Password',style: GoogleFonts.akayaKanadaka(
                    fontSize: 23,
                    color: Colors.black,
                  )),
                ),
                const SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text('Email Address',style: GoogleFonts.lato(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 1,color: Colors.grey)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 2,color: Colors.blueAccent)
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 1,color: Colors.red)
                      ),
                      hintText: 'Enter Your Email',
                      hintStyle:GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    validator: (String? value){
                      if(value!.isEmpty){
                        return 'Enter Your Email';
                      }
                    },
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),


                const SizedBox(height: 30,),
                Align(
                  alignment: Alignment.center,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
                    color: Colors.black,
                    onPressed: (){
                      if(key.currentState!.validate()){

                        FirebaseAuth.instance.sendPasswordResetEmail(email: emailController.text).then((value) {
                          print('Check Your Email');
                        });

                      }
                    },
                    child: Text('Reset Password',style: GoogleFonts.aBeeZee(
                      fontSize: 15,
                      color: Colors.white,
                    )),
                  ),
                ),
                const SizedBox(height: 25,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
