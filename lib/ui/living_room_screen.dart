import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:living_room_light_demo/utils/colors.dart';
import 'package:living_room_light_demo/utils/dimensions.dart';
import 'package:living_room_light_demo/utils/strings.dart';
import 'package:living_room_light_demo/utils/styles.dart';

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
  bool isSwitched = false;

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
          padding: const EdgeInsets.only(left: Dimens.space_xxxlarge, right: Dimens.space_xxxxlarge),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.topLight,
                style: TextStyles.k20GooglePoppinsNormal.copyWith(fontSize: Dimens.text_large),
              ),
              Switch(
                value: isSwitched,
                onChanged: toggleSwitch,
                activeColor: AppColors.white,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: Dimens.heightHomeBulb,
          width: Dimens.widthHomeBulb,
          // child: BulbCustomPainter(
          //   color1: const Color(0xffFCEEAE).withOpacity(1),
          //   color2: const Color(0xffFFFF72).withOpacity(1),
          //   color3: const Color(0xffFBB03B).withOpacity(1),
          // ),
        ),
      ],
    );
  }
}
