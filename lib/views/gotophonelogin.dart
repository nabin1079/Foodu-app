import 'package:ecommerce/resource/components/button@widgets.dart';
import 'package:ecommerce/resource/components/textformfield@widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({super.key});

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}
bool checkBox = false;
class _PhoneLoginState extends State<PhoneLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              
              children: [
                const Center(
                    child: Image(
                  image: AssetImage("assets/logo.png"),
                  height: 150,
                )),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Login to Your Account",
                    style: TextStyle(
                        color: Colors.black, fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                // const SizedBox(height: 10,),
                Form(
                    child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.green,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 92, 87, 87), width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          hintText: "+97798********",
                        )),
                  ),
                ])),
            
              Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          activeColor: Colors.green,
                          value: checkBox,
                          onChanged: (value) {
                            setState(() {
                              checkBox =
                                  value ?? false; //if value khali xa vane false
                            });
                          },
                        ),
                        const Text(
                          "Remember me",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
            
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButtonWidget(text: "Sign in", onPressed: (){}),
            ),
            
            
            
            
            const SizedBox(height: 90,),
            
            
            
            
            const Row(
                    
                    children: [
                      Expanded(
                        flex: 2,
                        child: Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: Text(
                          "or Continue with",
                          style: TextStyle(
                              color: Color.fromARGB(255, 101, 97, 97),
                              fontSize: 15),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(),
                      SizedBox(
                        // height: 80,
                        // width: 100,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Scaffold();
                            }));
                          },
                          child: const Card(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.facebook,
                                color: Colors.blue,
                                size: 60,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(),
                      const SizedBox(
                        // height: 80,
                        // width: 100,
                        child: Card(
                          // elevation: 0.1 ,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage(
                                "assets/google.png",
                              ),
                              height: 60,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        // height: 80,
                        // width: 100,
                        child: Card(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.apple,
                              size: 60,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(),
                    ],
                  ),
                  // const SizedBox(
                  //   height: 30,
                  // ),
              const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const Scaffold();
                      }));
                    },
                  
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                          text: const TextSpan(
                              style:
                                  TextStyle(color: Color.fromARGB(255, 91, 89, 89)),
                              children: [
                            TextSpan(
                                text: "Don't have a account?",
                                style: TextStyle(
                                  fontSize: 15,
                                  decoration: TextDecoration.none,
                                )),
                            TextSpan(
                                text: " Sign up",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.green,
                                  // decoration: TextDecoration.none,
                                ))
                          ])),
                    ),
                  )
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
