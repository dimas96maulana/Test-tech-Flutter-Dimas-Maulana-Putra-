part of 'widget.dart';

Widget widgetIconMoney({required String title}){
  Widget customIcon()=> Image.asset(
    "assets/Icon Rupiah.png",
  );
  
  Widget customTitle()=> Text(
    title,
    style: CustomFont.robotoSize12Weight700(
      color: CustomColor.grey
    ),
  );

  return Row(
    children: [
      customIcon(),
      SizedBox(width: 5.w,),
      customTitle(),
    ],
  );
}