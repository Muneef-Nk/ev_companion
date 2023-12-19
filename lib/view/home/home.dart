import 'package:ev_companion/utils/constants/color_constants/color_constants.dart';
import 'package:ev_companion/view/home/widgets/nearby/nearby.dart';
import 'package:ev_companion/view/home/widgets/recents/recents.dart';
import 'package:ev_companion/view/searchscreen/searchscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: ColorConstants.primaryWhite,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  
                  child: Image.asset('assets/images/menus.png')),
              ),
              leadingWidth: 45,
              centerTitle: true,
              toolbarHeight: 100,
              collapsedHeight: 120,
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
              expandedHeight: 170,
              bottom: PreferredSize(
                  preferredSize: Size(100, 60),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
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
                                      color: ColorConstants.primaryWhite,
                                      fontSize: 15),
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                      TabBar(
                          controller: _tabController,
                          indicatorColor: ColorConstants.primaryColor,
                          labelPadding: const EdgeInsets.only(
                            bottom: 16,
                          ),
                          tabs: [
                            Text(
                              'Nearby',
                              style: TextStyle(
                                  color: ColorConstants.primaryBlack,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text('Recent',
                                style: TextStyle(
                                    color: ColorConstants.primaryBlack,
                                    fontWeight: FontWeight.w500)),
                          ])
                    ],
                  )),
            ),
          ];
        },
        body: TabBarView(controller: _tabController, children: [
          Nearby(),
          Recents(),
        ]),
      ),
    );
  }
}
