import 'package:ev_companion/utils/constants/color_constants/color_constants.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  bool status = false; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Container(height: 200,width: 200,color: ColorConstants.primaryColor,)),
            Text("Register", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Please register to continue",style: TextStyle(fontSize: 15.5,fontWeight: FontWeight.bold),),
            ),
            Form( 
              child: 
              Column(
                children: [
        
                  // username
                  TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          prefixIcon: Icon(Icons.person),
                          hintText: "Username", 
                          labelText: "Username",
                          labelStyle: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ),
        
                      SizedBox(height: 15,),

                      // Mobile
                       TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          prefixIcon: Icon(Icons.phone),
                          hintText: "Mobile", 
                          labelText: "Mobile",
                          labelStyle: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ),

                       SizedBox(height: 15,),
        
                        // password
                       TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Password", 
                          labelText: "Password",
                          labelStyle: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ),
                ],
              )
              ),
              SizedBox(height: 15,),
        
                      // loginbutton
                      Container(
                        width: double.infinity,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorConstants.primaryColor
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(13),
                           child: Center(
                             child: Text("Register",style: TextStyle(fontSize: 20,
                              color: Colors.white,fontWeight: FontWeight.bold),),
                           ),
                         ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Row(
                          children: [
                            Text("Already have an account  "),
                            InkWell(
                              onTap: ()=>
                              Navigator.pop(context),
                              child: Text("login ", style: TextStyle(fontWeight: FontWeight.bold,color: ColorConstants.primaryColor,fontSize: 14),))
                          ],
                        ),
                      )
          ],
        ),
      ),
    );
  }
}