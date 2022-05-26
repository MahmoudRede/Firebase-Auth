import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/Register/register.dart';
import 'package:internship/ResetPassword/reset_password.dart';
import 'package:google_sign_in/google_sign_in.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var key= GlobalKey<FormState>();
  var emailController =TextEditingController();
  var passController=TextEditingController();

  GoogleSignIn googleSignIn= GoogleSignIn();


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
        child: Form(
          key: key,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text('Welcome Back 🖐',style: GoogleFonts.akayaKanadaka(
                 fontSize: 23,
                 color: Colors.black,
            )),
                ),
                const SizedBox(height: 0,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text('Enter Your Credentials to continue',style: GoogleFonts.lato(
                    fontSize: 16,
                    color: Colors.grey,
                  )),
                ),
                const SizedBox(height: 25,),
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
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
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
                      hintText: 'Enter Your Password',
                      hintStyle:GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    validator: (String? value){
                      if(value!.isEmpty){
                        return 'Enter Your Password';
                      }
                    },
                    keyboardType: TextInputType.visiblePassword,
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    controller: passController,
                  ),
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return ResetPassword();
                    }));
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                      child: Text('Forget Password',style: GoogleFonts.lato(
                          fontSize: 15,
                          color: Colors.red,
                          fontWeight: FontWeight.bold
                      ),),
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

                           FirebaseAuth.instance.signInWithEmailAndPassword(
                               email: emailController.text,
                               password: passController.text
                           ).then((value) {
                             print(value.user!.email);
                             print('Login Success');
                           }).catchError((error){
                             print('Error is ${error.toString()}');
                           });

                       }
                    },
                    child: Text('Login',style: GoogleFonts.aBeeZee(
                      fontSize: 15,
                      color: Colors.white,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.black,
                        height: 1,
                        width: 112,
                      ),
                      const SizedBox(width: 8,),
                      Text('Or Login  With',style: GoogleFonts.lato(
                          fontSize: 13,
                          color: Colors.black,
                      ),),
                      const SizedBox(width: 8,),
                      Container(
                        color: Colors.black,
                        height: 1,
                        width: 108,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    const SizedBox(width: 25,),
                    InkWell(
                      onTap: (){

                      },
                      child: Material(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: const BorderSide(color: Colors.grey,width: 0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                          child: Row(
                            children: [
                              const Image(
                                  image: AssetImage('assets/images/face.png'),
                                 height: 25,
                                 width: 25,
                              ),
                              const SizedBox(width: 10,),
                              Text('Facebook',style: GoogleFonts.lato(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    InkWell(
                      onTap: () async{
                         GoogleSignInAccount? googleSignInAccount  = await googleSignIn.signIn();
                         print(googleSignInAccount?.email);
                         print(googleSignInAccount?.photoUrl);

                      },
                      child: Material(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: const BorderSide(color: Colors.grey,width: 0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                          child: Row(
                            children: [
                              const Image(
                                image: AssetImage('assets/images/google.png'),
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(width: 10,),
                              Text('Google',style: GoogleFonts.lato(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 65,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account ?',style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.grey,
                   )),
                    const SizedBox(width: 5,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return RegisterScreen();
                        }));
                      },
                      child: Text('Sign Up',style: GoogleFonts.lato(
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
