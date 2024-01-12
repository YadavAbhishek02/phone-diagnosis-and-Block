import 'package:diagnostic_android_application/BlockPractice/SignIN/bloc_for_signin/signin_block.dart';
import 'package:diagnostic_android_application/BlockPractice/SignIN/bloc_for_signin/signin_events.dart';
import 'package:diagnostic_android_application/BlockPractice/SignIN/bloc_for_signin/signin_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInLoginPage extends StatefulWidget {
  const SignInLoginPage({super.key});

  @override
  State<SignInLoginPage> createState() => _SignInLoginPageState();
}

class _SignInLoginPageState extends State<SignInLoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('SignIn with Email'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),

            BlocBuilder<SignInBlock, SignInState>(
              builder: (context, state) {
                if (state is SignInErrorState) {
                  return Text(
                    state.message, style: const TextStyle(color: Colors.red),);
                } else {
                  return Container();
                }
              },
            ),
            const SizedBox(height: 20,),

            SizedBox(
                width: double.infinity,
                child: TextField(
                  controller: emailController,
                  onChanged: (val){
                    BlocProvider.of<SignInBlock>(context).add(
                      SignInTextChangedEvent(emailController.text, passwordController.text)
                    );
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter your Email',
                  ),
                )),

            const SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,
              child: TextField(
                controller: passwordController,
                onChanged: (val){
                  BlocProvider.of<SignInBlock>(context).add(
                      SignInTextChangedEvent(emailController.text, passwordController.text)
                  );
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your Password',
                ),
              ),
            ),
            const SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,
              child: BlocBuilder<SignInBlock, SignInState>(
                builder: (context, state) {

                  if(state is SignInLoadingState){
                    return const Center(child:  CircularProgressIndicator(),);
                  }else {
                    return ElevatedButton(
                    onPressed: () {
                      if(state is SignInValidState){
                        BlocProvider.of<SignInBlock>(context).add(
                            SignInSubmittedEvent(emailController.text, passwordController.text)
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: (state is SignInValidState)?
                        Colors.blue:Colors.grey
                    ),
                    child: const Text('LogIn', style: TextStyle(
                        color: Colors.white
                    ),),
                  );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
