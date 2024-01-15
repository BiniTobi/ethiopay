// import 'package:ethiopay/intro_screens/home_page.dart';
import 'package:ethiopay/pages/login_page.dart';
import 'package:ethiopay/intro_screens/intro_page_1.dart';
import 'package:ethiopay/intro_screens/intro_page_2.dart';
import 'package:ethiopay/intro_screens/intro_page_3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget{
  const OnBoardingScreen({Key? key, required Null Function() onComplete, required Null Function() onOnboardingCompleted}): super(key:key);
  
  @override
  _OnBoardingScreenState createState() =>_OnBoardingScreenState();

}

class _OnBoardingScreenState extends State<OnBoardingScreen>{
  
  // keeping track of page im on 
  PageController _controller = PageController();

// tracking of if im on the last page or not

bool onLastPage = false;



  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
       children: [
        PageView(
          controller: _controller,
          onPageChanged: (index){
                setState(() {
                  onLastPage = (index ==2);
                });
          },
          children: [
           IntroPage1(),
           IntroPage2(),
           IntroPage3(),
          ],
        ),
        // dot indicators
        Container(
          alignment: Alignment(0,0.75),
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // skip
                GestureDetector(
                
                  onTap: (){
                    _controller.jumpToPage(2);
                    _controller.nextPage(duration: Duration(milliseconds: 500), 
                    curve: Curves.easeIn);
                  },
                  child: const Text('Skip',
                   style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                  
                  ),
              // mydot indicator
              SmoothPageIndicator(controller: _controller,count:3),

                // next or done 
                onLastPage ?
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          // return LoginPage();
                          return LoginPage(onTap: () {  },);
                          
                        },
                      ),
                    );
                  },
                  child: Text('done')
                  ):   GestureDetector(
                  onTap: (){
                    _controller.nextPage(duration: Duration(milliseconds: 500), 
                    curve: Curves.easeIn);
                  },
                  child: const Text('Next',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                  ),

            ],
          ),
        
        ),
       ],
      ),
    );
  }

}