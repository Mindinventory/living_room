import 'package:flutter/material.dart';

class LivingRoomState {}

class LivingRoomLightOpacityState extends LivingRoomState {
  LivingRoomLightOpacityState({
    this.horizontalPos
  });

  final double? horizontalPos;
}

class LivingRoomLightSwitchState extends LivingRoomState {
  LivingRoomLightSwitchState({
    this.isSwitched = false
  });

  final bool isSwitched;
}

class LivingRoomLightColorState extends LivingRoomState {
  LivingRoomLightColorState();
}
