import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:ratib_project/ui/colors.dart';
import 'package:ratib_project/ui/pages/onboarding_first_child.dart';
import 'package:ratib_project/ui/pages/onboarding_second_child.dart';
import 'package:ratib_project/ui/pages/onboarding_third_child.dart';
import 'package:ratib_project/ui/widgets/primary_button.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {

  final GlobalKey<PrimaryButtonState> _globalKey = GlobalKey();

  final PageController _controller = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  bool _changeAction = false;

  final List<Widget> _items = [
    OnboardingFirstChild(),
    OnboardingSecondChild(),
    OnboardingThirdChild()
  ];

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));
    return Scaffold(
        body: Container(
          //padding: const EdgeInsets.symmetric(vertical: 64.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 2,
                        child: PageView(
                          controller: _controller,
                          children: _items,
                          onPageChanged: (index) {
                            _currentPageNotifier.value = index;
                            setState(() {
                              _changeAction = index == 2;
                              _globalKey.currentState.updateButtonText(_changeAction ? 'Continue' : 'Next');
                            });
                          },
                        ),
                      ),
                      Flexible(
                        flex: 1,
                          child: CirclePageIndicator(
                              selectedDotColor: primary,
                              dotColor: Colors.grey,
                              itemCount: _items.length,
                              currentPageNotifier: _currentPageNotifier)),
                    ]
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
                  child: PrimaryButton(
                    key: _globalKey,
                    color: primary,
                    buttonText: 'Next',
                    onPressed: (_) {
                      if (!_changeAction) {
                        _controller.jumpToPage(_currentPageNotifier.value + 1);
                      } else {

                      }
                    },
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }

  @override
  void dispose() {
    _currentPageNotifier.dispose();
    _controller.dispose();
    super.dispose();
  }
}
