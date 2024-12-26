import 'package:educational_app/utils/app_colors.dart';
import 'package:educational_app/views/onboard_screens/onboard_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  bool isTure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Skip Button
            Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    // Navigate to the main/home screen
                    print("Skip pressed");
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),

            // PageView with Onboarding Content
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  _buildPage(
                    title: "Online Learning",
                    description:
                        "We Provide Classes Online Classes and Pre Recorded Leactures.!",
                    imagePath: "",
                  ),
                  _buildPage(
                    title: "Learn from Anytime",
                    description: "Booked or Same the Lectures for Future",
                    imagePath: "",
                  ),
                  _buildPage(
                    title: "Get Online Certificate",
                    description: "Analyse your scores and Track your results",
                    imagePath: "",
                  ),
                ],
              ),
            ),

            // Dot Indicators and Next Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Dot Indicators
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: AppColors.primaryColor,
                      dotColor: Colors.grey.shade300,
                      dotHeight: 8,
                      dotWidth: 8,
                    ),
                  ),

                  // Next Button
                  GestureDetector(
                      onTap: () {
                        if (_currentPage < 2) {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          Get.to((OnboardAccountScreen()));
                        }
                      },
                      child: _currentPage == 2
                          ? Container(
                              decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 40, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started  ",
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      padding: EdgeInsets.all(12),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: AppColors.primaryColor,
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(12),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 24,
                              ),
                            ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget to build each onboarding page
  Widget _buildPage({
    required String title,
    required String description,
    required String imagePath,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 100),
        // Optional: Add an image here if required.
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.textColor,
          ),
        ),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: AppColors.primaryTextColor),
          ),
        ),
      ],
    );
  }
}
