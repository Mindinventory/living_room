import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:living_room_light_demo/cubit/living_room_cubit/living_room_cubit.dart';
import 'package:living_room_light_demo/ui/custom_painter/curved_navigation_bar.dart';
import 'package:living_room_light_demo/utils/assets.dart';
import 'package:living_room_light_demo/utils/colors.dart';
import 'package:living_room_light_demo/utils/dimensions.dart';
import 'package:living_room_light_demo/utils/strings.dart';
import 'package:living_room_light_demo/utils/styles.dart';
import '../living_room_screen.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key, this.isLightOn = false}) : super(key: key);
  final bool isLightOn;
  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CurvedNavigationBar(
          key: bottomNavigationKey,
          height: 60.0,
          items: const <Widget>[
            CircleUi(
              color: AppColors.redColor,
            ),
            CircleUi(
              color: AppColors.yellowColor,
            ),
            CircleUi(
              color: AppColors.cyanColor,
            ),
            CircleUi(
              color: AppColors.blueColor,
            ),
            CircleUi(
              color: AppColors.purpleColor,
            ),
          ],
          color: AppColors.lightBlackColor.withOpacity(0.6),
          buttonBackgroundColor: Colors.transparent,
          backgroundColor: AppColors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            selectColor(index);
          },
          letIndexChange: (index) => widget.isLightOn,
        ),
        const SizedBox(
          height: 14.95,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2.7,
          width: double.infinity,
          color: AppColors.lightBlackColor.withOpacity(0.6),
          child: Padding(
            padding: const EdgeInsets.only(
                left: Dimens.space_xxxlarge, right: Dimens.space_xxxxlarge),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: Dimens.space_large),
                Text(
                  Strings.otherLight,
                  style: TextStyles.k20GooglePoppinsNormal
                      .copyWith(fontSize: Dimens.text_large),
                ),
                const SizedBox(height: Dimens.space_xxxxlarge),
                const OtherLightWidget(
                  image: AssetsImage.globeLamp,
                  title: Strings.globeLamp,
                  subTitle: Strings.globeLampConfi,
                ),
                const SizedBox(height: Dimens.space_large),
                const OtherLightWidget(
                  image: AssetsImage.neonLamp,
                  title: Strings.neonLamp,
                  subTitle: Strings.neonLampConfi,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void selectColor(int index) {
    final index= tabType.index;
    switch (index) {
      case 0:
        MainBody.selectedColor = AppColors.redColor;
        MainBody.mediumSelectedColor = AppColors.mediumRedColor;
        MainBody.lightSelectedColor = AppColors.lightRedColor;
        break;

      case 1:
        MainBody.selectedColor = AppColors.yellowColor;
        MainBody.mediumSelectedColor = AppColors.mediumYellowColor;
        MainBody.lightSelectedColor = AppColors.lightYellowColor;
        break;

      case 2:
        MainBody.selectedColor = AppColors.cyanColor;
        MainBody.mediumSelectedColor = AppColors.mediumCyanColor;
        MainBody.lightSelectedColor = AppColors.lightCyanColor;
        break;

      case 3:
        MainBody.selectedColor = AppColors.blueColor;
        MainBody.mediumSelectedColor = AppColors.mediumBlueColor;
        MainBody.lightSelectedColor = AppColors.lightBlueColor;
        break;

      case 4:
        MainBody.selectedColor = AppColors.purpleColor;
        MainBody.mediumSelectedColor = AppColors.mediumPurpleColor;
        MainBody.lightSelectedColor = AppColors.lightPurpleColor;
        break;
    }
    BlocProvider.of<LivingRoomCubit>(context).livingRoomLightColorChange();
  }
}

class CircleUi extends StatelessWidget {
  const CircleUi({Key? key, this.color}) : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: AppColors.redColor,
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: <Color>[
            AppColors.white,
            color!,
          ],
        ),
      ),
    );
  }
}

class OtherLightWidget extends StatelessWidget {
  const OtherLightWidget({Key? key, required this.image, required this.title, required this.subTitle})
      : super(key: key);

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.space_xlarge),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [
          Colors.white12,
          Colors.white10,
        ]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: AppColors.mintGreenColor,
                child: Image.asset(
                  image,
                  height: 15,
                ),
              ),
              const SizedBox(width: Dimens.space_large),
              Text(
                title,
                style: TextStyles.k20GooglePoppinsNormal
                    .copyWith(fontSize: Dimens.text_medium),
              ),
            ],
          ),
          Text(
            subTitle,
            style: TextStyles.k20GooglePoppinsNormal
                .copyWith(fontSize: Dimens.text_small),
          ),
        ],
      ),
    );
  }
}
