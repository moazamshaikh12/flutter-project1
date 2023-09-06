import 'package:flutter/material.dart';

import 'main.dart';
class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          children: [
            const SizedBox(height: 70,),
            const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image(
                      height: 50,
                      width: 50,
                      image: AssetImage("images/logo.png")
                  ),
                  Text("MWHEELS",
                    style: TextStyle(
                      fontSize: 24, fontFamily: "Roboto-Medium",
                    ),
                  )
                ]
            ),
            const SizedBox(height: 30,),
            const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Roboto-Medium",
                      fontWeight: FontWeight.w700,
                      color: Colors.teal
                  ),
                )),
            const SizedBox(height: 16,),
            const Center(
                child: Text(
                    "This APP is for Buying and Selling of cars",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto-Regular",
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                    ))),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "First Name",
                  prefixIcon: const Icon(Icons.account_circle),
                  fillColor: const Color(0xffF8F9FA),
                  filled: true,
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE4E7EB))
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                      borderRadius: BorderRadius.circular(15)
                  ),

                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Contact",
                  prefixIcon: const Icon(Icons.phone),
                  fillColor: const Color(0xffF8F9FA),
                  filled: true,
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE4E7EB))
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                      borderRadius: BorderRadius.circular(15)
                  ),

                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: const Icon(Icons.email),
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(15),),
                    )


                )
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "password",
                  prefixIcon: const Icon(Icons.key),
                  suffixIcon: const Icon(Icons.visibility_off),
                  fillColor: const Color(0xffF8F9FA),
                  filled: true,
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE4E7EB))
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                      borderRadius: BorderRadius.circular(15)
                  ),

                ),
              ),
            ),
            const SizedBox(height: 60,),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Center(
                child: Text(
                  'Sign up', style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Roboto-Medium",
                    color: Colors.white
                ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                    "Already Have an account?   ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto-Regular",
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                    )
                ),
                ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return const Login();} ));
                },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white)
                ),

                child: const Text("Log in",style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Roboto-Medium",
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                ) ,))
              ],
            )
          ],
        ),
        ),
      ),
    );
  }
}