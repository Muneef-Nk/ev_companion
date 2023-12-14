import 'package:ev_companion/view/charging_station_details/station_details.dart';
import 'package:ev_companion/view/widgets/charging_station_widget/charging_station_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(13),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  //  color: Colors.amber,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          prefixIcon: Icon(Icons.search_rounded),
                          hintText: "Search charging",
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) => ListTile(
                                title: Text("recent saerch ${index + 1}"),
                                trailing: Icon(Icons.north_west),
                              ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Related text",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.5),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 7,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        StationDetailsScreen(),
                                  )),
                              child: ChargingStationWidget()),
                        ))
              ],
            ),
          ),
        ));
  }
}
