import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:living_room_light_demo/cubit/living_room_cubit/living_room_state.dart';

class LivingRoomCubit extends Cubit<LivingRoomState> {
  LivingRoomCubit(LivingRoomState initialState) : super(initialState);

  void livingRoomLightOpacityChange(double? horizontalPos) {
    emit(LivingRoomLightOpacityState(
      horizontalPos: horizontalPos,
    ));
  }

  void livingRoomLightSwitchChange({bool isSwitched = false}) {
    emit(LivingRoomLightSwitchState(
      isSwitched: isSwitched,
    ));
  }

  void livingRoomLightColorChange() {
    emit(LivingRoomLightColorState());
  }
}
