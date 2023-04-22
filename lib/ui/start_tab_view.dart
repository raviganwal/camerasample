import 'package:camerasample/ui/sensor_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartTabView extends StatefulWidget {
  const StartTabView({Key? key}) : super(key: key);

  @override
  State<StartTabView> createState() => _StartTabViewState();
}

class _StartTabViewState extends State<StartTabView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // initialise your tab controller here
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 150),
        child: Stack(
          children: <Widget>[
            Container(
              // Background
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1.0,
                    spreadRadius: 0.0,
                    offset: Offset(0.0, 0.0), // shadow direction: bottom right
                  )
                ],
              ),
              height: kToolbarHeight + 100,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.keyboard_backspace,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Text(
                    "Details",
                    style: GoogleFonts.montserrat(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              height: kToolbarHeight + 156,
            ),
            // Required some widget in between to float AppBar
            Positioned(
              top: 125.0,
              left: 0.0,
              right: 0.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 55,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.green.shade700,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                0.0, 0.0), // shadow direction: bottom right
                          )
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "ICE-10BMW",
                        style: GoogleFonts.montserrat(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(children: <Widget>[
        const SizedBox(
          height: kToolbarHeight + 140,
        ),
        TabBar(
          controller: _tabController,
          isScrollable: true,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey.shade600,
          indicatorColor: Colors.black,
          indicatorWeight: 4.0,
          unselectedLabelStyle: GoogleFonts.montserrat(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
          labelStyle: GoogleFonts.montserrat(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          tabs: const [
            Tab(text: 'Module Array'),
            Tab(text: 'Sensor'),
            Tab(text: 'Energy Meter'),
            Tab(text: 'Sample'),
          ],
        ),
        Expanded(
            child: Container(
                //height of TabBarView
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.5))),
                child:
                    TabBarView(controller: _tabController, children: const <Widget>[
                  SensorTabView(),
                  Center(
                    child: Text('Display Tab 2',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                  Center(
                    child: Text('Display Tab 3',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                  Center(
                    child: Text('Display Tab 4',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                ])))
      ]),
    );
  }
}
