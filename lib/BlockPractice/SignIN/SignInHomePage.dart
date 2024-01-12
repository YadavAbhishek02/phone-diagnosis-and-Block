import 'package:diagnostic_android_application/BlockPractice/SignIN/bloc_for_signin/signin_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'SingnInLoginPage.dart';

class SignInHomePage extends StatelessWidget {
  const SignInHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20,0,20,40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20)
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context)=> BlocProvider(
                        create: (context) => SignInBlock(),
                        child: const SignInLoginPage(),
                      )));
                },
                child: const Text("Sign In with Email",style: TextStyle(color: Colors.white),),
              ),
            ),

            const SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20)
                ),
                onPressed: (){

                },
                child: const Text("Sign In with Google",style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
