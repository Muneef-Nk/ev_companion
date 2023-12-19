import 'package:ev_companion/utils/constants/color_constants/color_constants.dart';
import 'package:ev_companion/view/add_vehicle/add_vehicle.dart';
import 'package:flutter/material.dart';

class Vehicleview extends StatefulWidget {
  const Vehicleview({super.key});

  @override
  State<Vehicleview> createState() => _VehicleviewState();
}

class _VehicleviewState extends State<Vehicleview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
         centerTitle: true,
        title: Text("My Vehicles",style: TextStyle(fontWeight: FontWeight.bold ,color: ColorConstants.primaryWhite),),
        leading: InkWell(
          onTap: ()=> Navigator.pop(context),
          child: Icon(Icons.arrow_back , color: ColorConstants.primaryWhite,size: 30,))
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context,index)=>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 188, 187, 187)
          ),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                   decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:Colors.amber,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://assets.rebelmouse.io/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpbWFnZSI6Imh0dHBzOi8vd3d3LmdlYXJicmFpbi5jb20vbWVkaWEtbGlicmFyeS9leUpoYkdjaU9pSklVekkxTmlJc0luUjVjQ0k2SWtwWFZDSjkuZXlKcGJXRm5aU0k2SW1oMGRIQnpPaTh2WVhOelpYUnpMbkppYkM1dGN5OHhOelF4TmpZek5DOXZjbWxuYVc0dWFuQm5JaXdpWlhod2FYSmxjMTloZENJNk1UWXpNRFl3TVRZMk5YMC5KamF1enpqOFVIR0Zqb0dVdU1tRjdvZ2FKMGptUVZVTzNHQlRtdkhaVFhrL2ltYWdlLmpwZz93aWR0aD05ODAiLCJleHBpcmVzX2F0IjoxNjA2MTk0ODMyfQ.KsflOf1Aneot5hwjNQe9slhGYHZiaV3PsFeH250up9c/img.jpg?width=2000&height=2000",
              ))
            ),

                ),
                SizedBox(width: 13,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Leaf" , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text("Nissan"),
                    Text("datvgvgvfgvegvgvha"),
                    Text("Battery saver :- 40.0"),
                  ],
                )
              ],
            ),
          ),
        ),
      )
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>AddVehicle())),
          child: Container(height: 55,
            child: Center(
            child: Text("Add New Vehicle",style: TextStyle(color: ColorConstants.primaryWhite,
            fontWeight: FontWeight.bold , fontSize: 18),),
          ),
           decoration: BoxDecoration(
            color: ColorConstants.primaryColor,
            borderRadius: BorderRadius.circular(25)
          ),
              ),
        ),
      ));
  }
}