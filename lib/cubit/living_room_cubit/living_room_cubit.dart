import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:living_room_light_demo/cubit/living_room_cubit/living_room_state.dart';

class LivingRoomCubit extends Cubit<LivingRoomState> {
  LivingRoomCubit(LivingRoomState initialState) : super(initialState);

  void didChangedLivingRoomLightOpacity(double? horizontalPos) {
    emit(LivingRoomLightOpacityUpdateState(
      horizontalPos: horizontalPos,
    ));
  }

  void livingRoomLightOnOff({bool isOn = false}) {
    emit(LivingRoomLightSwitchState(
      isOn: isOn,
    ));
  }

  void livingRoomLightColorChange() {
    emit(LivingRoomLightColorState());
  }
}
