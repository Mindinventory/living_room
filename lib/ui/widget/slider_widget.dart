import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:living_room_light_demo/cubit/living_room_cubit/living_room_cubit.dart';
import '../custom_painter/slider_custom_painter.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key, this.isSwitched}) : super(key: key);
  final bool? isSwitched;
  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

ValueNotifier<List<double>> posValueListener = ValueNotifier([0.0, 0.0]);

class _SliderWidgetState extends State<SliderWidget> {
  ValueChanged<List<double>>? posValueChanged;
  double _horizontalPos = 0.5;
  double _verticalPos = 0.0;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return GestureDetector(
        onPanUpdate: (s) {
          if (widget.isSwitched!) {
            _verticalPos = (_verticalPos + s.delta.dy / (context.size!.height))
                .clamp(.0, 1.0);
            var horizontalPos =
                (_horizontalPos + s.delta.dx / (context.size!.width))
                    .clamp(.0, 1.0);
            if (MediaQuery.of(context).size.width < 400) {
              if (horizontalPos > 0.14 && horizontalPos < 0.94) {
                _horizontalPos = horizontalPos;
              }
            } else {
              if (horizontalPos > 0.062 && horizontalPos < 0.97) {
                _horizontalPos = horizontalPos;
              }
              if (horizontalPos > 0.062) {
                BlocProvider.of<LivingRoomCubit>(context)
                    .livingRoomLightSwitchChange(isSwitched: true);
              }
            }
            posValueListener.value = [horizontalPos, _verticalPos];
            BlocProvider.of<LivingRoomCubit>(context)
                .livingRoomLightOpacityChange(horizontalPos);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: CustomPaint(
            size: Size(MediaQuery.of(context).size.width, 50),
            painter: CustomSlider(
              width: ((MediaQuery.of(context).size.width - 7) *
                      double.parse(_horizontalPos.toStringAsFixed(3)))
                  .floorToDouble(),
            ),
          ),
        ),
      );
    });
  }
}
