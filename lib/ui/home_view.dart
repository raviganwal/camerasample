import 'package:camerasample/widget/divider_widget.dart';
import 'package:camerasample/widget/ticket_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/button_start_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
                        // Navigator.pop(context);
                      },
                    ),
                  ),
                  Text(
                    "Home",
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
              left: 40.0,
              right: 40.0,
              child: Container(
                  height: 55,
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
                        offset:
                            Offset(0.0, 0.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "12312231645",
                        style: GoogleFonts.montserrat(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "ICE-10BMW",
                        style: GoogleFonts.montserrat(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          SizedBox(
            height: kToolbarHeight + 156,
          ),
          TicketItemWidget(
            title: "Ticket Number:",
            value: "2106290015",
          ),
          DividerWidget(),
          TicketItemWidget(
            title: "Site Name:",
            value: "ICE-10MW",
          ),
          DividerWidget(),
          TicketItemWidget(
            title: "Equipment Name:",
            value: "Not Applicble",
          ),
          DividerWidget(),
          TicketItemWidget(
            title: "Category:",
            value: "Modules Cleaning",
          ),
          DividerWidget(),
          TicketItemWidget(
            title: "Subject:",
            value: "Modules Cleaning",
          ),
          DividerWidget(),
          TicketItemWidget(
            title: "Description",
            value: "Scheduled Activity - Follow ICE Safety protocols",
          ),
          DividerWidget(),
          TicketItemWidget(
            title: "Scheduled On:",
            value: "29-06-2021",
          ),
          DividerWidget(),
          TicketItemWidget(
            title: "Address:",
            value: "chennai",
          ),
          DividerWidget(),
          SizedBox(
            height: 20,
          ),
          ButtonStartWidget(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
