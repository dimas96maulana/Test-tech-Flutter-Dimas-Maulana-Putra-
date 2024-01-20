part of 'widget.dart';

Widget widgetIconTitle({required String title, required String iconActive, required String iconNonActive, required bool isActive, required double sizeIcon, void Function()? onTap}){
  Widget icon()=> Image.asset(
    (isActive == true)
      ? iconActive
      : iconNonActive,
    height: sizeIcon,
    width: sizeIcon,
    fit: BoxFit.fill,
  );
  Widget customTitle()=> Padding(
    padding: EdgeInsets.only(top: 0.h),
    child: Text(
      title,
      style: CustomFont.robotoSize8Weight700(
        color: CustomColor.blue1,
      ),
    ),
  );

  return GestureDetector(
    onTap: onTap,
    child: Column(
      children: [
        icon(),
        customTitle(),
      ],
    ),
  );
}