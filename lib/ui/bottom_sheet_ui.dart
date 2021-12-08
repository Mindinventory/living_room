import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.07246377,0);
    path_0.cubicTo(size.width*0.03244324,0,0,size.height*0.04120092,0,size.height*0.09202454);
    path_0.lineTo(0,size.height);
    path_0.lineTo(size.width,size.height);
    path_0.lineTo(size.width,size.height*0.09202454);
    path_0.cubicTo(size.width,size.height*0.04120092,size.width*0.9675580,0,size.width*0.9275362,0);
    path_0.lineTo(size.width*0.5474469,0);
    path_0.cubicTo(size.width*0.5112923,0,size.width*0.4770411,size.height*0.02056779,size.width*0.4541014,size.height*0.05605276);
    path_0.lineTo(size.width*0.3857174,size.height*0.1618325);
    path_0.cubicTo(size.width*0.3567271,size.height*0.2066748,size.width*0.3026932,size.height*0.2066748,size.width*0.2737029,size.height*0.1618325);
    path_0.lineTo(size.width*0.2053191,size.height*0.05605276);
    path_0.cubicTo(size.width*0.1823787,size.height*0.02056779,size.width*0.1481273,0,size.width*0.1119744,0);
    path_0.lineTo(size.width*0.07246377,0);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xff303030).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}