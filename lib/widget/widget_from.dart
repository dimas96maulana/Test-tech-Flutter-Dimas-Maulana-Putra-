part of 'widget.dart';

Widget widgetFrom({required String title, required String description, EdgeInsetsGeometry? padding}){
  customTitle()=> Text(
    title,
    style: CustomFont.robotoSize8Weight700(
      color: CustomColor.white,
    ),
  );
  customForm()=> Card(
    elevation: ServiceLocal.elevation,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: CustomColor.white,
      ),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(5.h),
        child: Center(
          child: Text(
            description,
            style: CustomFont.robotoSize12Weight700(
              color: CustomColor.blue1
            ),
          ),
        ),
      ),
    ),
  );
  return Container(
    padding: padding,
    child: Column(
      children: [
        customTitle(),
        customForm(),
      ],
    ),
  );
}