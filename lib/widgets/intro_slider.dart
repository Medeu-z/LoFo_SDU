import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroSliderPage extends StatefulWidget {
  const IntroSliderPage({Key? key}) : super(key: key);

  @override
  _IntroSliderPageState createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();
    slides.add(
      Slide(
        description: "Welcome to Lost & Found SDU!",
        pathImage: "assets/image/img1.png",
      ),
    );
    slides.add(
      Slide(
        description:
            "Mobile app where every campus member can report and claim a lost item on",
        pathImage: "assets/image/img2.png",
      ),
    );
    slides.add(
      Slide(
        description: "Literally the campus’s eye",
        pathImage: "assets/image/img3.png",
      ),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: const EdgeInsets.only(bottom: 160, top: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 329.58,
                width: 300,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(56)),
                    color: Colors.white),
                child: Image.asset(
                  currentSlide.pathImage ?? "",
                  matchTextDirection: true,
                  height: 60,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Text(
                  currentSlide.description ?? "",
                  style: GoogleFonts.philosopher(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  // overflow: TextOverflow.ellipsis,
                ),
                margin: const EdgeInsets.only(
                  top: 15,
                  right: 20,
                  left: 20,
                ),
              )
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroSlider(
        renderSkipBtn: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Skip",
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ]),
        renderNextBtn: OutlinedButton(
            onPressed: null,
            style: OutlinedButton.styleFrom(
              primary: Colors.black,
              side: const BorderSide(color: Colors.black, width: 1.0),
              shape: const StadiumBorder(),
            ),
            child: Text(
              "Next",
              style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            )),
        renderDoneBtn: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            onPrimary: Colors.white,
            shape: const StadiumBorder(),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/login');
          },
          child: Text(
            "Start",
            style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          ),
        ),
        colorActiveDot: Colors.white,
        sizeDot: 8.0,
        typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
        listCustomTabs: renderListCustomTabs(),
        scrollPhysics: const BouncingScrollPhysics(),
        hideStatusBar: false,
      ),
    );
  }
}
