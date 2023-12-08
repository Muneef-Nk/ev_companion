import 'package:ev_companion/utils/constants/color_constants/color_constants.dart';
import 'package:flutter/material.dart';

class StationDetailsScreen extends StatelessWidget {
  const StationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Details"),
        centerTitle: true,
        backgroundColor: ColorConstants.primaryColor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.more_horiz),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              width: double.infinity,
              height: 230,
              color: Colors.grey.shade100,
              child: Image.network(
                "https://imgs.search.brave.com/9R8aHGMD-hrhKJ6zvHjWKXAK8u05Q2nFqtj9tgOBBmw/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy9ldi1j/aGFyZ2luZy1zdGF0/aW9uLTY1MTJlYThl/YjU1ZWMuanBnP2Ny/b3A9MC42Njh4dzox/LjAweGg7MC4xMzN4/dywwJnJlc2l6ZT02/NDA6Kg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: GestureDetector(
                onTap: () {
                  //
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.bookmark,
                    color: ColorConstants.primaryColor,
                    size: 20,
                  ),
                ),
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "10 play soror fkl ",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.primaryColor),
                ),
                Text("lunihb mana ",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("jfdsljflsdk", style: TextStyle(fontSize: 14)),
                Text("jfdsljflsdk", style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            width: double.infinity,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300, spreadRadius: 1, blurRadius: 10)
            ], borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConstants.primaryColor),
                        color: Colors.green.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Play with",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Play with",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            width: double.infinity,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300, spreadRadius: 1, blurRadius: 10)
            ], borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade100,
                      child: Icon(
                        Icons.share,
                        color: ColorConstants.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "share",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade100,
                      child: Icon(
                        Icons.location_on,
                        color: ColorConstants.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "NearBy",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade100,
                      child: Icon(
                        Icons.assistant_direction,
                        color: ColorConstants.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "directions",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade100,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "name",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
