import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/Login/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  var key= GlobalKey<FormState>();
  var emailController =TextEditingController();
  var passController=TextEditingController();
  var nameController=TextEditingController();
  var phoneController=TextEditingController();
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
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text('Create Account',style: GoogleFonts.akayaKanadaka(
                    fontSize: 23,
                    color: Colors.black,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                  child: Text('Connect With Your Friends Today !',style: GoogleFonts.lato(
                    fontSize: 16,
                    color: Colors.grey,
                  )),
                ),
                const SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text('User Name',style: GoogleFonts.lato(
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
                      hintText: 'Enter Your Name',
                      hintStyle:GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    validator: (String? value){
                      if(value!.isEmpty){
                        return 'Enter Your Name';
                      }
                    },
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),

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

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text('Password',style: GoogleFonts.lato(
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
                      hintText: 'Enter Your password',
                      hintStyle:GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    validator: (String? value){
                      if(value!.isEmpty){
                        return 'Enter Your password';
                      }
                    },
                    controller: passController,
                    keyboardType: TextInputType.visiblePassword,
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text('Phone',style: GoogleFonts.lato(
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
                      hintText: 'Enter Your Phone',
                      hintStyle:GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    validator: (String? value){
                      if(value!.isEmpty){
                        return 'Enter Your Phone';
                      }
                    },
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Align(
                  alignment: Alignment.center,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    padding: const EdgeInsets.fromLTRB(130, 15, 130, 15),
                    color: Colors.black,
                    onPressed: (){
                      if(key.currentState!.validate()){

                        userRegister(emailController.text, passController.text);

                      }
                    },
                    child: Text('Register',style: GoogleFonts.aBeeZee(
                      fontSize: 15,
                      color: Colors.white,
                    )),
                  ),
                ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account ?',style: GoogleFonts.lato(
                      fontSize: 16,
                      color: Colors.grey,
                    )),
                    const SizedBox(width: 5,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return const LoginScreen();
                        }));
                      },
                      child: Text('Login',style: GoogleFonts.lato(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void userRegister(String email, String pass){

  FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email ,
      password: pass
  ).then((value) {

    print(value.user!.email);
    print('Register Success');
  }).catchError((error){
    print('Error is ${error.toString()}');
  });

}