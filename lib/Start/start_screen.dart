import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/Login/login.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backwardsCompatibility: false,
         systemOverlayStyle: const SystemUiOverlayStyle(
           statusBarColor: Colors.white,
           statusBarIconBrightness: Brightness.dark
         ),
         toolbarHeight: 0,
         elevation: 0.0,
      ),
      body: Container(
        child: Stack(
          children: [
            const Positioned(
                top: 130,
                left: 100,
                child: CircleAvatar(
                  radius: 65,
                  backgroundImage: const NetworkImage('https://img.freepik.com/free-photo/tender-feminine-woman-with-blue-eyes-smiles-pleasantly-has-toothy-smile-wears-white-comfortable-sweater-looks-directly-camera-isolated-pink-background_273609-32160.jpg?w=740&t=st=1653511905~exp=1653512505~hmac=cc577ba11ace7c85a09aa1e7d1446137899c9e31031a27abedcb540d9543929f'),
                )
            ),
            const Positioned(
                top: 60,
                left: -10,
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage('https://img.freepik.com/free-photo/close-up-young-successful-man-smiling-camera-standing-casual-outfit-against-blue-background_1258-66609.jpg?w=740&t=st=1653557690~exp=1653558290~hmac=6695d3d60602240744a48645861da648306e4aceb8a4f9b376dde8d0e90aba21'),
                )
            ),
            const Positioned(
                top: 240,
                left: -32,
                child: CircleAvatar(
                  radius: 42,
                  backgroundImage: const NetworkImage('https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg?w=740&t=st=1653511933~exp=1653512533~hmac=bc291ed152c9bc45250daa444ee4a1d1caeb98e1587a71ebfe1f41976a777669'),
                )
            ),
            const Positioned(
                top: 50,
                right: -25,
                child: CircleAvatar(
                  radius: 47,
                  backgroundImage: NetworkImage('https://img.freepik.com/free-photo/senior-man-white-sweater-eyeglasses_273609-42003.jpg?w=740&t=st=1653511851~exp=1653512451~hmac=ef175c07e95af2bb6f3cc0df4c9d76f1caf9a4b21c35e253d0b44c97d94f2558'),
                )
            ),
            const Positioned(
                top: 320,
                right: -25,
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://img.freepik.com/free-photo/joyful-afro-woman-raises-arms-tilts-head-dressed-casual-knitted-jumper-laughs-from-happiness-celebrates-victory-isolated-yellow_273609-32594.jpg?w=740&t=st=1653557754~exp=1653558354~hmac=2a13426b03f421a655f2c2243867e6c6e0a350e8ee493889dcc5585d12123648'),
                )
            ),
            const Positioned(
                top: 70,
                right: 140,
                child: const CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage('https://img.freepik.com/free-photo/attractive-guy-shirt-yellow-background_185193-77368.jpg?w=740&t=st=1653511886~exp=1653512486~hmac=00b7dc5e68c796bf8ad96dad69ec28b93fb6da73e854777b0f836f0bb6721496'),
                )
            ),
            const Positioned(
                top: 200,
                right: 50,
                child: CircleAvatar(
                  radius: 23,
                  backgroundImage: NetworkImage('https://img.freepik.com/free-photo/young-beautiful-woman-looking-camera-trendy-girl-casual-summer-white-t-shirt-jeans-shorts-positive-female-shows-facial-emotions-funny-model-isolated-yellow_158538-15796.jpg?w=740&t=st=1653511950~exp=1653512550~hmac=8cb84972bfb18c1034ea6fba8502a3f34e598a5baee5a92085599f54c02abed0'),
                )
            ),
            const Positioned(
                top: 310,
                right: 150,
                child: CircleAvatar(
                  radius: 26,
                  backgroundImage: NetworkImage('https://img.freepik.com/free-photo/man-wearing-t-shirt-gesturing_23-2149393646.jpg?w=740&t=st=1653511872~exp=1653512472~hmac=fb828b220c393c3b6293575b5b7381f8b22d0a0fd9ee19eb9b6045de7fc4cf77'),
                )
            ),
            Positioned(
              top: 420,
                left: 25,
                child:Text('Let\'s Get\nStarted',style: GoogleFonts.akayaKanadaka(
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ))
            ),
            Positioned(
                top: 550,
                left: 25,
                child:Text('Everything works better together',style: GoogleFonts.aBeeZee(
                    fontSize: 15,
                    color: Colors.grey,
                ))
            ),
            Positioned(
                top: 600,
                left: 37,
                child:MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  padding: const EdgeInsets.fromLTRB(120, 15, 120, 15),
                  color: Colors.black,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                       return LoginScreen();
                    }));

                  },
                  child: Text('Sign in',style: GoogleFonts.aBeeZee(
                    fontSize: 15,
                    color: Colors.white,
                  )),
                )
            ),


          ],
        ),
      ),
    );
  }
}
