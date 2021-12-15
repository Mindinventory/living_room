import 'package:flutter/material.dart';

class LivingRoomState {}

class LivingRoomLightOpacityUpdateState extends LivingRoomState {
  LivingRoomLightOpacityUpdateState({
    this.horizontalPos
  });

  final double? horizontalPos;
}

class LivingRoomLightSwitchState extends LivingRoomState {
  LivingRoomLightSwitchState({
    this.isOn = false
  });

  final bool isOn;
}

class LivingRoomLightColorState extends LivingRoomState {
  LivingRoomLightColorState();
}
