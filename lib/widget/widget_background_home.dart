part of 'widget.dart';

Widget widgetBackgroundHome()=> CustomPaint(
  size: const Size(double.infinity, double.infinity), 
  painter: CurvedPainter(),
);

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = CustomColor.blue1;
    paint.strokeWidth = 15;

    var path = Path();

    // path.moveTo(0, size.height * 0.7);
    // path.quadraticBezierTo(size.width * 0.25, size.height * 0.7,size.width * 0.5, size.height * 0.7);
    // // path.quadraticBezierTo(size.width * 0.75, size.height * 0.9,size.width * 1.0, size.height * 0.8);
    // path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);


    path.moveTo(0, size.height * 0.14);
    path.quadraticBezierTo(size.width * 0, size.height * 0.14, size.width * 0.36, size.height * 0.14);
    path.quadraticBezierTo(size.width * 0.41, size.height * 0.14, size.width * 0.41, size.height * 0.16);
    path.quadraticBezierTo(size.width * 0.42, size.height * 0.18, size.width * 0.5, size.height * 0.18);
    path.quadraticBezierTo(size.width * 0.57, size.height * 0.18, size.width * 0.58, size.height * 0.16);
    path.quadraticBezierTo(size.width * 0.58, size.height * 0.14, size.width * 0.65, size.height * 0.14);
    path.quadraticBezierTo(size.width * 1, size.height * 0.14, size.width * 1, size.height * 0.14);
    
    // path.quadraticBezierTo(size.width * 0, size.height * 0.14, size.width * 0.36, size.height * 0.14);
    // path.quadraticBezierTo(size.width * 0.41, size.height * 0.14, size.width * 0.41, size.height * 0.16);
    // path.quadraticBezierTo(size.width * 0.4, size.height * 0.18, size.width * 0.5, size.height * 0.18);
    // path.quadraticBezierTo(size.width * 0.61, size.height * 0.18, size.width * 0.6, size.height * 0.16);
    // path.quadraticBezierTo(size.width * 0.6, size.height * 0.14, size.width * 0.65, size.height * 0.14);
    // path.quadraticBezierTo(size.width * 1, size.height * 0.14, size.width * 1, size.height * 0.14);
    
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}