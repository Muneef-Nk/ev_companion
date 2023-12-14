import 'package:ev_companion/utils/constants/color_constants/color_constants.dart';
import 'package:ev_companion/view/charging_station_details/station_details.dart';
import 'package:flutter/material.dart';

class ChargingStationWidget extends StatelessWidget {
  const ChargingStationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  width: width * 2 / 3,
                  height: height * 0.15,
                  decoration: BoxDecoration(
                      color: ColorConstants.containerColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'EV Charging Station',
                          style: TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                      )),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.timer,
                  color: ColorConstants.primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('5 min away • 8km'),
                ),
              ],
            ),
          ),
          Text('Working Hours - From 10:00 am To 9:00 pm'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.primaryColor),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  'Book slot',
                  style: TextStyle(
                      color: ColorConstants.primaryColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
