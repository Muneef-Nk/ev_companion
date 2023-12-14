import 'package:ev_companion/view/charging_station_details/station_details.dart';
import 'package:ev_companion/view/widgets/charging_station_widget/charging_station_widget.dart';
import 'package:flutter/material.dart';

class Recents extends StatelessWidget {
  const Recents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StationDetailsScreen(),
                    )),
                child: ChargingStationWidget())),
      ),
    );
  }
}
