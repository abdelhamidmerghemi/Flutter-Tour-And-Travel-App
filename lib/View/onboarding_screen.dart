import '/Helper/app_const.dart';
import '/View/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  PageController pageController = PageController();
  int currentPage = 1;

  List<Map<String,String>> onBoarding = [
    {
      'image' : 'assets/images/onboarding_1.png',
      'title' : 'Explore the world easily',
      'text' : 'To your desire'
    },
    {
      'image' : 'assets/images/onboarding_2.png',
      'title' : 'Reach the unknown spot',
      'text' : 'To your destination'
    },
    {
      'image' : 'assets/images/onboarding_3.png',
      'title' : 'Make connects with Travello',
      'text' : 'To your dream trip'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future(() => false);
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppConst.backgroundColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: pageController,
                    itemCount: 3,
                    itemBuilder: (_,index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 200,),
                          Image.asset(onBoarding[index]['image']!),
                          const SizedBox(height: 100,),
                          Text(
                              onBoarding[index]['title']!,
                            style: TextStyle(
                              color: AppConst.textColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 36,
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Text(
                              onBoarding[index]['text']!,
                            style: TextStyle(
                              color: AppConst.textColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      effect: const WormEffect(
                        activeDotColor: Colors.black,
                        radius: 8,
                        spacing: 3,
                        dotHeight: 8,
                        dotWidth: 8,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        if(currentPage < 3){
                          pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                          currentPage++;
                        }
                        else{
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>const LoginScreen()));
                        }
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: const Center(child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,)),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
