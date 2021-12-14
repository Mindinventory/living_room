import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:living_room_light_demo/cubit/living_room_cubit/living_room_cubit.dart';
import 'package:living_room_light_demo/cubit/living_room_cubit/living_room_state.dart';
import 'package:living_room_light_demo/utils/colors.dart';
import 'package:living_room_light_demo/utils/dimensions.dart';
import 'package:living_room_light_demo/utils/strings.dart';
import 'package:living_room_light_demo/utils/styles.dart';
import 'custom_painter/bulb_custom_painter.dart';
import 'widget/bottom_sheet_widget.dart';
import 'widget/gradient_background_widget.dart';
import 'widget/slider_widget.dart';

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

class MainBody extends StatefulWidget {
  static Color selectedColor = AppColors.redColor;
  static Color mediumSelectedColor = AppColors.mediumRedColor;
  static Color lightSelectedColor = AppColors.lightRedColor;
  const MainBody({Key? key}) : super(key: key);

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  double _horizontalPos = 0.5;
  bool isLightOn = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LivingRoomCubit(LivingRoomState()),
      child: BlocBuilder<LivingRoomCubit, LivingRoomState>(
          builder: (BuildContext context, LivingRoomState state) {
        if (state is LivingRoomLightOpacityUpdateState) {
          _horizontalPos = state.horizontalPos!;
        } else if (state is LivingRoomLightSwitchState) {
          isLightOn = state.isOn;
        }
        return BodyWidget(
          isLightOn: isLightOn,
          horizontalPos: _horizontalPos,
        );
      }),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key, this.horizontalPos = 0.5, this.isLightOn = false})
      : super(key: key);

  final double horizontalPos;
  final bool isLightOn;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: Dimens.space_xxxlarge, right: Dimens.space_xxxxlarge),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  Strings.topLight,
                  style: TextStyles.k20GooglePoppinsNormal
                      .copyWith(fontSize: Dimens.text_large),
                ),
                Switch(
                  value: isLightOn,
                  onChanged: (bool value) {
                    BlocProvider.of<LivingRoomCubit>(context)
                        .livingRoomLightOnOff(isOn: value);
                  },
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
                color1: !isLightOn
                    ? AppColors.greyColor
                    : MainBody.lightSelectedColor
                        .withOpacity(horizontalPos),
                color2: !isLightOn
                    ? AppColors.greyColor
                    : MainBody.mediumSelectedColor
                        .withOpacity(horizontalPos),
                color3: !isLightOn
                    ? AppColors.greyColor
                    : MainBody.selectedColor.withOpacity(horizontalPos),
              ),
              child: Container(),
            ),
          ),
          const SizedBox(height: Dimens.space_xxxlarge),
          SliderWidget(isLightOn: isLightOn),
          const SizedBox(height: Dimens.space_xlarge),
          BottomSheetWidget(isLightOn: isLightOn)
        ],
      ),
    );
  }
}
