import 'package:flutter/material.dart';
// import 'dart:html',
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
// import 'package:flutter_keyboard_visibility_web/flutter_keyboard_visibility_web.dart';

void main() {
  runApp(const MaterialApp(home: SignUp()));
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                  margin: const EdgeInsets.only(left: 5.0),
                    child: Text('Mirra',
                     style: TextStyle(fontFamily: 'Gabriela',
                         fontSize: 36,
                         fontWeight: FontWeight.w400,
                         color: Colors.blue[900]
                     ),)),
                       const   SizedBox(height: 30),
                  Container(
                    margin: const  EdgeInsets.only(left: 5.0),
                    child: const  Text('Create an Account',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),
                     )),
                  const  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const  EdgeInsets.only(left: 5.0),
                    child: Row(children:  [
                      const  Text('Connect With your friends by creating a',
                      style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),),
                      Text(' Mirra',
                      style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    color: Colors.blue[900]
                    ),)
                    ]),
                  ),
                  
                  Container(
                    margin: const  EdgeInsets.only(left: 5.0),
                    child: Row(children:  [  const Text('account.',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey
                    ),), 
                      Text('Its free!',
                      style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700]
                    )
                    )]
                    ),
                  ),
                 const   SizedBox(height: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                  margin: const  EdgeInsets.only(left: 5.0),
                  padding:  const  EdgeInsets.only(bottom: 5.0),
                  child:
                      Text('Email',
                     style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700]
                    )
                    ),
                  
                    ),
                    Center(
                  child: SizedBox(
                   width: 350,
                  //  margin: EdgeInsets.only(left: 5),
                    child: TextField(
                        obscureText: _isObscure,
                        decoration:   const InputDecoration(
                      border: OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      hintText: 'example@gmail.com',
                      
                    )),
                  ),
                    ),
                  const    SizedBox(height: 20,),
                    Container(
                  margin: const  EdgeInsets.only(left: 5.0),
                  padding: const  EdgeInsets.only(bottom: 5.0),
                  child:   Text('Password', 
                  style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700]
                    )
                  )),
                    Center(
                  child: SizedBox(
                    width: 350,
                    child: TextField(
                      obscureText: _isObscure,
                        decoration: InputDecoration(
                      border:  const  OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                          icon: Icon(
                              _isObscure ? Icons.visibility : Icons.visibility_off)),
                      hintText: '***********',
                    )
                    ),
                  ),
                    ),
                   const  SizedBox(height: 20,),
                    Container(
                  margin: const  EdgeInsets.only(left: 5.0),
                  padding: const  EdgeInsets.only(bottom: 5.0),
                  child:  Text('Confirm Password',
                   style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700]
                    ))),
                    Center(
                  child: SizedBox(
                    width: 350,
                    child: TextField(
                          obscureText: _isObscure,
                        decoration: InputDecoration(
                      border: const  OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                          icon: Icon(
                              _isObscure ? Icons.visibility : Icons.visibility_off)),
                      hintText: '***********',
                    )),
                  ),
                    ),
                      
                  ]),
                   const  SizedBox(
                    height: 25
                  ),
                 Center(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                    const  Text('By continuing, you agree to our',
                      style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey
                    )),
                     Text(' Terms of Service',
                      style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[900]
                    )
                    ) 
                   ]),
                 ),
                  Center(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                    const  Text('and',
                      style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey
                    )
                    ),
                     Text(' Private Policy',
                      style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[900]
                    )
                    ) 
                   ]),
                 ),
                   
                const SizedBox(height: 25),
                 Center(
                   child: Column(
                     children: [
                      ElevatedButton(onPressed: (){}, 
                       style: ElevatedButton.styleFrom(
                         primary: Colors.blue[900],
                         fixedSize: const Size(350, 50),
                       shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                       )
                       ),
                      child: const Text('Get Started',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),)
                      ),
                    const   SizedBox(height: 20,),
                      
                    OutlinedButton(onPressed: (){},
                    
                      style: ElevatedButton.styleFrom(
                         fixedSize: const Size(350, 50),
                        shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                       )
                       ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(image: AssetImage('assets/flat-color-icons_google.png')),
                           Padding(
                             padding: EdgeInsets.only(left: 10.0),
                             child: Text('Sign up with Google',
                             
                          style: TextStyle(
                               fontFamily: 'Montserrat',
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600
                          ),),
                           ),
                        ] ) )
                     ]),
                 ),
                      
                const  SizedBox(height: 15),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                        const Text('Already have an account?',
                         style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey
                    )),
                         Padding(
                           padding: const EdgeInsets.only(left: 5.0),
                           child: Text('Login',
                           style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue[900]
                    )),
                         ) 
                       ]),
                      
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
