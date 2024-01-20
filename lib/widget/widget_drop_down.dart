part of 'widget.dart';

Widget widgetDropDown({required String title}){
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
        horizontal: 15.w,
        vertical: 10.h
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          customTitle(),
          SizedBox(width: 10.w,),
          customIcon(),
        ],
      ),
    )
  );
}