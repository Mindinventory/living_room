import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:living_room_light_demo/ui/widget/curved_navigation_bar.dart';
import 'package:living_room_light_demo/utils/colors.dart';
import 'package:living_room_light_demo/utils/dimensions.dart';
import 'package:living_room_light_demo/utils/strings.dart';
import 'package:living_room_light_demo/utils/styles.dart';

import 'bottom_sheet_ui.dart';
import 'bulb_custom_painter.dart';

class LivingRoomScreen extends StatefulWidget {
  const LivingRoomScreen({Key? key}) : super(key: key);

  @override
  _LivingRoomScreenState createState() => _LivingRoomScreenState();
}

class _LivingRoomScreenState extends State<LivingRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return GradientBackGround(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          centerTitle: true,
          elevation: 0,
          title: Text(
            Strings.livingRoom,
            style: TextStyles.k20GooglePoppinsNormal,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            )
          ],
        ),
        body: const MainBody(),
      ),
    );
  }
}

class GradientBackGround extends StatelessWidget {
  final Widget child;
  const GradientBackGround({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: GradientColors.backgroundGradient,
        ),
      ),
      child: child,
    );
  }
}

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
  ValueNotifier<List<double>> posValueListener = ValueNotifier([0.0, 0.0]);
  ValueChanged<List<double>>? posValueChanged;
  double _horizontalPos = 0.0;
  double _verticalPos = 0.0;
  bool isSwitched = false;
  Color selectedColor = Colors.red;
  Color selectedGradientColor = Colors.red;
  int page = 0;
  @override
  void initState() {
    posValueListener.addListener(() {
      if (posValueChanged != null) {
        posValueChanged!(posValueListener.value);
      }
    });
    super.initState();
  }

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: Dimens.space_xxxlarge, right: Dimens.space_xxxxlarge),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.topLight,
                style: TextStyles.k20GooglePoppinsNormal
                    .copyWith(fontSize: Dimens.text_large),
              ),
              Switch(
                value: isSwitched,
                onChanged: toggleSwitch,
                activeColor: AppColors.white,
              ),
            ],
          ),
        ),
        SizedBox(
          height: Dimens.heightHomeBulb,
          width: Dimens.widthHomeBulb,
          child: CustomPaint(
            painter: BulbCustomPainter(
              color1: const Color(0xffFCEEAE).withOpacity(_horizontalPos),
              color2: const Color(0xffFFFF72).withOpacity(_horizontalPos),
              color3: selectedColor.withOpacity(_horizontalPos),
            ),
            child: Container(),
          ),
        ),
        const SizedBox(
          height: Dimens.space_xlarge,
        ),
        Padding(
          padding: const EdgeInsets.all(Dimens.space_xlarge),
          child: Stack(
            children: <Widget>[
              Container(
                height: 20,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 20,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Builder(builder: (context) {
                final handle = GestureDetector(
                    onPanUpdate: (details) {
                      _verticalPos = (_verticalPos +
                              details.delta.dy / (context.size!.height))
                          .clamp(.0, 1.0);
                      _horizontalPos = (_horizontalPos +
                              details.delta.dx / (context.size!.width))
                          .clamp(.0, 1.0);
                      posValueListener.value = [_horizontalPos, _verticalPos];
                      setState(() {});
                    },
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: const <Widget>[
                        Positioned(
                          top: -7,
                          child: CircleAvatar(
                            backgroundColor: AppColors.white,
                            maxRadius: 15,
                          ),
                        ),
                        Positioned(
                          bottom: -7,
                          child: CircleAvatar(
                            backgroundColor: AppColors.white,
                            maxRadius: 15,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: CircleAvatar(
                            backgroundColor: AppColors.black,
                            maxRadius: 10,
                          ),
                        ),
                      ],
                    ));
                return ValueListenableBuilder(
                    valueListenable: posValueListener,
                    builder: (context, List<double> value, child) {
                      return Align(
                        alignment:
                            Alignment(value[0] * 2 - 1, value[1] * 2 - 1),
                        child: handle,
                      );
                    });
              })
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: CurvedNavigationBar(
            key: bottomNavigationKey,
            index: 0,
            height: 60.0,
            items: const <Widget>[
              CircleAvatar(
                backgroundColor: AppColors.redColor,
                maxRadius: 15,
              ),
              CircleAvatar(
                backgroundColor: AppColors.yellowColor,
                maxRadius: 15,
              ),
              CircleAvatar(
                backgroundColor: AppColors.cyanColor,
                maxRadius: 15,
              ),
              CircleAvatar(
                backgroundColor: AppColors.blueColor,
                maxRadius: 15,
              ),
              CircleAvatar(
                backgroundColor: AppColors.purpleColor,
                maxRadius: 15,
              ),
            ],
            color: AppColors.lightBlackColor,
            buttonBackgroundColor: Colors.transparent,
            backgroundColor: AppColors.transparent,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 600),
            onTap: (index) {
              switch (index) {
                case 0:
                  selectedColor = AppColors.redColor;
                  break;

                case 1:
                  selectedColor = AppColors.yellowColor;
                  break;

                case 2:
                  selectedColor = AppColors.cyanColor;
                  break;

                case 3:
                  selectedColor = AppColors.blueColor;
                  break;

                case 4:
                  selectedColor = AppColors.purpleColor;
                  break;
              }
            },
            letIndexChange: (index) => true,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 3.04,
          width: double.infinity,
          color: AppColors.lightBlackColor,
        ),
      ],
    );
  }
}
