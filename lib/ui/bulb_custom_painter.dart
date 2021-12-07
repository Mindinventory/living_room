import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BulbCustomPainter extends CustomPainter {

  BulbCustomPainter({
    required this.color1,
    required this.color2,
    required this.color3,
  });

  final ui.Color color1;
  final ui.Color color2;
  final ui.Color color3;

  @override
  void paint(Canvas canvas, Size size) {

    final path_0 = Path();
    path_0.moveTo(size.width*0.9938012,size.height*0.3094372);
    path_0.cubicTo(size.width*0.9938012,size.height*0.1386566,size.width*0.7720435,0,size.width*0.4979317,0);
    path_0.cubicTo(size.width*0.2242578,0,size.width*0.002063062,size.height*0.1383818,size.width*0.002063062,size.height*0.3094372);
    path_0.cubicTo(size.width*0.002063062,size.height*0.3761570,size.width*0.03594224,size.height*0.4382093,size.width*0.09358075,size.height*0.4887287);
    path_0.cubicTo(size.width*0.09490062,size.height*0.4906512,size.width*0.09666087,size.height*0.4922984,size.width*0.09842050,size.height*0.4944961);
    path_0.cubicTo(size.width*0.09842050,size.height*0.4944961,size.width*0.1683789,size.height*0.5554496,size.width*0.1974186,size.height*0.6073411);
    path_0.cubicTo(size.width*0.2268975,size.height*0.6592364,size.width*0.2246981,size.height*0.7344690,size.width*0.2999360,size.height*0.7344690);
    path_0.lineTo(size.width*0.4952919,size.height*0.7344690);
    path_0.lineTo(size.width*0.4979317,size.height*0.7344690);
    path_0.lineTo(size.width*0.6924099,size.height*0.7344690);
    path_0.cubicTo(size.width*0.7672050,size.height*0.7344690,size.width*0.7658882,size.height*0.6592364,size.width*0.7949255,size.height*0.6073411);
    path_0.cubicTo(size.width*0.8182422,size.height*0.5664302,size.width*0.8666460,size.height*0.5197558,size.width*0.8860000,size.height*0.5016357);
    path_0.cubicTo(size.width*0.9537640,size.height*0.4486434,size.width*0.9938012,size.height*0.3821977,size.width*0.9938012,size.height*0.3094372);
    path_0.close();

    final paint0Fill = Paint()..style=PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.radial(
        Offset(size.width / 2,size.width / 2),
        size.width / 1.5, [
          color1,
          color2,
          color3,
        ], [
          0,
          0.5,
          0.9301,
        ],
    );
    canvas.drawPath(path_0,paint0Fill);

    final path_1 = Path();
    path_1.moveTo(size.width*0.2942161,size.height*0.8926163);
    path_1.cubicTo(size.width*0.2950963,size.height*0.8942636,size.width*0.3016957,size.height*0.9173295,size.width*0.3421752,size.height*0.9349031);
    path_1.cubicTo(size.width*0.3830938,size.height*0.9527481,size.width*0.4380925,size.height*0.9793798,size.width*0.4675720,size.height*0.9925620);
    path_1.cubicTo(size.width*0.4970509,size.height*1.005465,size.width*0.5190509,size.height*0.9961279,size.width*0.5247708,size.height*0.9925620);
    path_1.cubicTo(size.width*0.5304907,size.height*0.9889922,size.width*0.5494099,size.height*0.9774574,size.width*0.5881292,size.height*0.9615349);
    path_1.cubicTo(size.width*0.6272857,size.height*0.9456085,size.width*0.6888882,size.height*0.9187016,size.width*0.6888882,size.height*0.8956395);
    path_1.cubicTo(size.width*0.6888882,size.height*0.8728488,size.width*0.2942161,size.height*0.8926163,size.width*0.2942161,size.height*0.8926163);
    path_1.close();

    final paint1Fill = Paint()..style=PaintingStyle.fill;
    paint1Fill.shader = ui.Gradient.linear(Offset(size.width*0.2941360,size.height*0.9420233), Offset(size.width*0.6889441,size.height*0.9420233), [const Color(0xffCCCCCC).withOpacity(1),const Color(0xffB3B3B3).withOpacity(1),const Color(0xffB3B3B3).withOpacity(1),const Color(0xffCCCCCC).withOpacity(1),const Color(0xff999999).withOpacity(1)], [0.00537634,0.1989,0.5,0.7204,1]);
    canvas.drawPath(path_1,paint1Fill);

    final path_2 = Path();
    path_2.moveTo(size.width*0.6972484,size.height*0.8890504);
    path_2.cubicTo(size.width*0.6972484,size.height*0.9025039,size.width*0.6739255,size.height*0.9126628,size.width*0.6488509,size.height*0.9126628);
    path_2.lineTo(size.width*0.3386559,size.height*0.9126628);
    path_2.cubicTo(size.width*0.3131366,size.height*0.9126628,size.width*0.2924571,size.height*0.9025039,size.width*0.2924571,size.height*0.8890504);
    path_2.lineTo(size.width*0.2924571,size.height*0.7891047);
    path_2.cubicTo(size.width*0.2924571,size.height*0.7756512,size.width*0.3131366,size.height*0.7643953,size.width*0.3386559,size.height*0.7643953);
    path_2.lineTo(size.width*0.6488509,size.height*0.7643953);
    path_2.cubicTo(size.width*0.6743665,size.height*0.7643953,size.width*0.6972484,size.height*0.7756512,size.width*0.6972484,size.height*0.7891047);
    path_2.lineTo(size.width*0.6972484,size.height*0.8890504);
    path_2.close();

    final paint2Fill = Paint()..style=PaintingStyle.fill;
    paint2Fill.shader = ui.Gradient.linear(Offset(size.width*0.2924571,size.height*0.8385271), Offset(size.width*0.6972484,size.height*0.8385271), [const Color(0xffCCCCCC).withOpacity(1),const Color(0xffB3B3B3).withOpacity(1),const Color(0xffB3B3B3).withOpacity(1),const Color(0xffCCCCCC).withOpacity(1),const Color(0xff999999).withOpacity(1)], [0.00537634,0.1989,0.5,0.7204,1]);
    canvas.drawPath(path_2,paint2Fill);

    final path_3 = Path();
    path_3.moveTo(size.width*0.7214472,size.height*0.7237597);
    path_3.cubicTo(size.width*0.6783292,size.height*0.7306240,size.width*0.5410503,size.height*0.7333682,size.width*0.4974913,size.height*0.7341938);
    path_3.cubicTo(size.width*0.4539323,size.height*0.7333682,size.width*0.3175354,size.height*0.7306240,size.width*0.2739764,size.height*0.7237597);
    path_3.cubicTo(size.width*0.2739764,size.height*0.7237597,size.width*0.2612168,size.height*0.7248566,size.width*0.2708963,size.height*0.7344690);
    path_3.cubicTo(size.width*0.2708963,size.height*0.7344690,size.width*0.2779360,size.height*0.7366628,size.width*0.2796963,size.height*0.7534109);
    path_3.cubicTo(size.width*0.2814559,size.height*0.7701628,size.width*0.2739764,size.height*0.7808682,size.width*0.2840963,size.height*0.7891047);
    path_3.lineTo(size.width*0.4838516,size.height*0.7891047);
    path_3.lineTo(size.width*0.5106907,size.height*0.7891047);
    path_3.lineTo(size.width*0.7117640,size.height*0.7891047);
    path_3.cubicTo(size.width*0.7218882,size.height*0.7808682,size.width*0.7144037,size.height*0.7698876,size.width*0.7161677,size.height*0.7534109);
    path_3.cubicTo(size.width*0.7179255,size.height*0.7369380,size.width*0.7249627,size.height*0.7350155,size.width*0.7249627,size.height*0.7350155);
    path_3.cubicTo(size.width*0.7350870,size.height*0.7251318,size.width*0.7214472,size.height*0.7237597,size.width*0.7214472,size.height*0.7237597);
    path_3.close();

    final paint3Fill = Paint()..style=PaintingStyle.fill;
    paint3Fill.shader = ui.Gradient.linear(Offset(size.width*0.2674286,size.height*0.7564264), Offset(size.width*0.7289255,size.height*0.7564264), [const Color(0xffCCCCCC).withOpacity(1),const Color(0xffE6E6E6).withOpacity(1),Colors.white.withOpacity(1),const Color(0xffE6E6E6).withOpacity(1),const Color(0xff999999).withOpacity(1)], [0.00537634,0.1989,0.5,0.7204,1]);
    canvas.drawPath(path_3,paint3Fill);

    final path_4 = Path();
    path_4.moveTo(size.width*0.7095652,size.height*0.8110698);
    path_4.cubicTo(size.width*0.7095652,size.height*0.8160155,size.width*0.7020870,size.height*0.8193101,size.width*0.6924037,size.height*0.8193101);
    path_4.lineTo(size.width*0.2893758,size.height*0.8193101);
    path_4.cubicTo(size.width*0.2801360,size.height*0.8193101,size.width*0.2722161,size.height*0.8160155,size.width*0.2722161,size.height*0.8110698);
    path_4.cubicTo(size.width*0.2722161,size.height*0.8061279,size.width*0.2796957,size.height*0.8028333,size.width*0.2893758,size.height*0.8028333);
    path_4.lineTo(size.width*0.6924037,size.height*0.8028333);
    path_4.cubicTo(size.width*0.7020870,size.height*0.8028333,size.width*0.7095652,size.height*0.8061279,size.width*0.7095652,size.height*0.8110698);
    path_4.close();

    final paint4Fill = Paint()..style=PaintingStyle.fill;
    paint4Fill.shader = ui.Gradient.linear(Offset(size.width*0.2725615,size.height*0.8110698), Offset(size.width*0.7096957,size.height*0.8110698), [const Color(0xffCCCCCC).withOpacity(1),const Color(0xffE6E6E6).withOpacity(1), Colors.white.withOpacity(1),const Color(0xffE6E6E6).withOpacity(1),const Color(0xff999999).withOpacity(1)], [0.00537634,0.1989,0.5,0.7204,1]);
    canvas.drawPath(path_4,paint4Fill);

    final path_5 = Path();
    path_5.moveTo(size.width*0.7095652,size.height*0.8426473);
    path_5.cubicTo(size.width*0.7095652,size.height*0.8475891,size.width*0.7020870,size.height*0.8522558,size.width*0.6924037,size.height*0.8522558);
    path_5.lineTo(size.width*0.2893758,size.height*0.8522558);
    path_5.cubicTo(size.width*0.2801360,size.height*0.8522558,size.width*0.2722161,size.height*0.8475891,size.width*0.2722161,size.height*0.8426473);
    path_5.cubicTo(size.width*0.2722161,size.height*0.8377054,size.width*0.2796957,size.height*0.8330349,size.width*0.2893758,size.height*0.8330349);
    path_5.lineTo(size.width*0.6924037,size.height*0.8330349);
    path_5.cubicTo(size.width*0.7020870,size.height*0.8330349,size.width*0.7095652,size.height*0.8377054,size.width*0.7095652,size.height*0.8426473);
    path_5.close();

    final paint5Fill = Paint()..style=PaintingStyle.fill;
    paint5Fill.shader = ui.Gradient.linear(Offset(size.width*0.2725615,size.height*0.8426473), Offset(size.width*0.7096957,size.height*0.8426473), [const Color(0xffCCCCCC).withOpacity(1),const Color(0xffE6E6E6).withOpacity(1),Colors.white.withOpacity(1),const Color(0xffE6E6E6).withOpacity(1),const Color(0xff999999).withOpacity(1)], [0.00537634,0.1989,0.5,0.7204,1]);
    canvas.drawPath(path_5,paint5Fill);

    final path_6 = Path();
    path_6.moveTo(size.width*0.7100062,size.height*0.8769690);
    path_6.cubicTo(size.width*0.7100062,size.height*0.8819109,size.width*0.7020870,size.height*0.8852054,size.width*0.6928447,size.height*0.8852054);
    path_6.lineTo(size.width*0.2911354,size.height*0.8852054);
    path_6.cubicTo(size.width*0.2814559,size.height*0.8852054,size.width*0.2739758,size.height*0.8819109,size.width*0.2739758,size.height*0.8769690);
    path_6.cubicTo(size.width*0.2739758,size.height*0.8720271,size.width*0.2818957,size.height*0.8687287,size.width*0.2911354,size.height*0.8687287);
    path_6.lineTo(size.width*0.6928447,size.height*0.8687287);
    path_6.cubicTo(size.width*0.7020870,size.height*0.8687287,size.width*0.7100062,size.height*0.8720271,size.width*0.7100062,size.height*0.8769690);
    path_6.close();

    final paint6Fill = Paint()..style=PaintingStyle.fill;
    paint6Fill.shader = ui.Gradient.linear(Offset(size.width*0.2735366,size.height*0.8769690), Offset(size.width*0.7099193,size.height*0.8769690), [const Color(0xffCCCCCC).withOpacity(1),const Color(0xffE6E6E6).withOpacity(1),Colors.white.withOpacity(1),const Color(0xffE6E6E6).withOpacity(1),const Color(0xff999999).withOpacity(1)], [0.00537634,0.1989,0.5,0.7204,1]);
    canvas.drawPath(path_6,paint6Fill);

    final path_7 = Path();
    path_7.moveTo(size.width*0.7100062,size.height*0.9085426);
    path_7.cubicTo(size.width*0.7100062,size.height*0.9134845,size.width*0.7020870,size.height*0.9181512,size.width*0.6928447,size.height*0.9181512);
    path_7.lineTo(size.width*0.2911354,size.height*0.9181512);
    path_7.cubicTo(size.width*0.2814559,size.height*0.9181512,size.width*0.2739758,size.height*0.9134845,size.width*0.2739758,size.height*0.9085426);
    path_7.cubicTo(size.width*0.2739758,size.height*0.9036008,size.width*0.2818957,size.height*0.8989341,size.width*0.2911354,size.height*0.8989341);
    path_7.lineTo(size.width*0.6928447,size.height*0.8989341);
    path_7.cubicTo(size.width*0.7020870,size.height*0.8989341,size.width*0.7100062,size.height*0.9036008,size.width*0.7100062,size.height*0.9085426);
    path_7.close();

    final paint7Fill = Paint()..style=PaintingStyle.fill;
    paint7Fill.shader = ui.Gradient.linear(Offset(size.width*0.2735366,size.height*0.9085426), Offset(size.width*0.7099193,size.height*0.9085426), [const Color(0xffCCCCCC).withOpacity(1),const Color(0xffE6E6E6).withOpacity(1),Colors.white.withOpacity(1),const Color(0xffE6E6E6).withOpacity(1),const Color(0xff999999).withOpacity(1)], [0.00537634,0.1989,0.5,0.7204,1]);
    canvas.drawPath(path_7,paint7Fill);

    final path_8 = Path();
    path_8.moveTo(size.width*0.3883733,size.height*0.9565930);
    path_8.cubicTo(size.width*0.3866137,size.height*0.9557674,size.width*0.5098106,size.height*0.9678488,size.width*0.6022087,size.height*0.9560426);
    path_8.cubicTo(size.width*0.6022087,size.height*0.9560426,size.width*0.5287304,size.height*0.9986008,size.width*0.5001311,size.height*0.9999729);
    path_8.cubicTo(size.width*0.4715317,size.height*1.001070,size.width*0.4116932,size.height*0.9678488,size.width*0.3883733,size.height*0.9565930);
    path_8.close();

    final paint8Fill = Paint()..style=PaintingStyle.fill;
    paint8Fill.color = const Color(0xff4D4D4D).withOpacity(1.0);
    canvas.drawPath(path_8,paint8Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}