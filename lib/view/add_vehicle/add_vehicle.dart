import 'package:ev_companion/utils/constants/color_constants/color_constants.dart';
import 'package:flutter/material.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({super.key});

  @override
  State<AddVehicle> createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add New Vehicle",style: TextStyle(fontWeight: FontWeight.bold ,color: ColorConstants.primaryWhite),),
        leading: InkWell(
          onTap:()=> Navigator.pop(context),
          child: Icon(Icons.arrow_back , color: ColorConstants.primaryWhite,size: 30,)),
        backgroundColor: ColorConstants.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0 ,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text("Vehicle Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
              SizedBox(height: 18,),
              Text("Vehicle Image",style: TextStyle(fontWeight: FontWeight.bold,)),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 207, 203, 203),
                ),
                height: 200,
                width: double.infinity,
                child: Icon(Icons.add,),
              ),
              
              // vehicle name
              SizedBox(height: 18,),
              Text("Vehicle Name",style: TextStyle(fontWeight: FontWeight.bold,),),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 207, 203, 203),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Add model name",
                      border:InputBorder.none   
                    ),
                  ),
                ),
              ),
          
             // company name
              SizedBox(height: 18,),
              Text("Company Name",style: TextStyle(fontWeight: FontWeight.bold,),),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 207, 203, 203),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Add Brand name",
                      border:InputBorder.none   
                    ),
                  ),
                ),
              ),
          
              // battery capacity name
              SizedBox(height: 18,),
              Text("Add battery capacity",style: TextStyle(fontWeight: FontWeight.bold,),),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 207, 203, 203),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Add battery capacity",
                      border:InputBorder.none   
                    ),
                  ),
                ),
              ),
          
            ],
          ),
        ),
      ),

    bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(height: 60,
      child: Center(
        child: Text("Add",style: TextStyle(color: ColorConstants.primaryWhite,
        fontWeight: FontWeight.bold , fontSize: 18),),
      ),
       decoration: BoxDecoration(
        color: ColorConstants.primaryColor,
        borderRadius: BorderRadius.circular(25)
       ),
      ),
    ), 
    );
  }
}