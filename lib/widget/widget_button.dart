part of 'widget.dart';

Widget widgetButton({required String title}){
  Widget customTitle()=> Text(
    title,
    style: CustomFont.robotoSize12Weight700(
      color: CustomColor.blue1,
    ),
  );

  Widget customIcon()=> Image.asset(
    "assets/Arow Down.png"
  );

  return Card(
    elevation: ServiceLocal.elevation,
    color: CustomColor.blue2,
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 45.w,
        vertical: 10.h
      ),
      child: customTitle(),
    )
  );
}