import 'package:ev_companion/utils/constants/color_constants/color_constants.dart';
import 'package:ev_companion/view/searchscreen/searchscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: ColorConstants.primaryWhite,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/menus.png'),
          ),
          leadingWidth: 45,
          centerTitle: true,
          title: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'EV ',
                style: GoogleFonts.mina(
                    color: ColorConstants.primaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w600)),
            TextSpan(
                text: 'Companion',
                style: GoogleFonts.mina(
                    color: ColorConstants.primaryBlack,
                    fontSize: 25,
                    fontWeight: FontWeight.w600))
          ])),
          expandedHeight: 150,
          // flexibleSpace: FlexibleSpaceBar(
          //   centerTitle: false,
          //   titlePadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          //   title: RichText(
          //     text: TextSpan(children: [
          //       TextSpan(
          //         text: 'C',
          //         style: TextStyle(
          //             color: ColorConstants.primaryColor,
          //             fontSize: 25,
          //             fontWeight: FontWeight.w500),
          //       ),
          //       TextSpan(
          //         text: 'hoose EV Charger Near by you',
          //         style: TextStyle(
          //             color: ColorConstants.primaryBlack,
          //             fontSize: 20,
          //             fontWeight: FontWeight.w500),
          //       ),
          //       TextSpan(
          //         text: ' •',
          //         style: TextStyle(
          //             color: ColorConstants.primaryColor,
          //             fontSize: 20,
          //             fontWeight: FontWeight.w500),
          //       )
          //     ]),
          //   ),
          // ),
          bottom: PreferredSize(
              preferredSize: Size(100, 60),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SearchScreen()));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: ColorConstants.secondaryColor),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Icon(
                          Icons.search_rounded,
                          color: ColorConstants.primaryWhite,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.6,
                        child: Text(
                          'Search for nearby stations',
                          style: TextStyle(
                              color: ColorConstants.primaryWhite, fontSize: 15),
                        ),
                      )
                    ]),
                  ),
                ),
              )),
        ),
        SliverToBoxAdapter(
            child: Column(
          children: [],
        ))
      ]),
    );
  }
}
