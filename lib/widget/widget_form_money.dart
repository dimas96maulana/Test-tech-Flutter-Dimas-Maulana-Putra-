part of 'widget.dart';

Widget widgetFormMoney({required String title, required String description, EdgeInsetsGeometry? padding}){
  customTitle()=> Text(
    title,
    style: CustomFont.robotoSize8Weight700(
      color: CustomColor.white,
    ),
  );
  customForm(){
    customValue()=> Text(
      "0",
      style: CustomFont.robotoSize12Weight700(color: CustomColor.blue1),
    );
    customDotsVertical(){
      return Column(
        children: [
          for(int i=0 ; i<7 ; i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w),
            color: (i % 2 != 0)
              ? CustomColor.white
              : CustomColor.blue1,
            height: 2.h,
            width: 1.w,
          ),
        ],
      );
    }

    customIcon()=> Image.asset(
      "assets/Arow Down.png"
    );

    return Card(
      elevation: ServiceLocal.elevation,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: CustomColor.white,
        ),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              customValue(),
              customDotsVertical(),
              widgetIconMoney(title: "IDR"),
              SizedBox(width: 5.w,),
              customIcon(),
              SizedBox(width: 10.w,),
            ],
          )
        ),
      ),
    );
  }
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