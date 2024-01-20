part of 'widget.dart';

Widget widgetFormPhoto({required String title, EdgeInsetsGeometry? padding}){
  customTitle()=> Text(
    title,
    style: CustomFont.robotoSize8Weight700(
      color: CustomColor.white,
    ),
  );
  customForm(){
    customPhoto()=> Container(
      height: 40.h,
      width: 60.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w),
        color: CustomColor.blue1.withOpacity(0.1)
      ),
    );
    customCamera(){
      customIcon()=> Image.asset(
        "assets/Union.png"
      );
      customTitle()=> Text(
        "Tambahkan\nFoto",
        style: CustomFont.robotoSize8Weight700(
          color: CustomColor.blue1
        ),
        textAlign: TextAlign.center,
      );
      return Card(
        child: Container(
          height: 40.h,
          width: 60.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.w),
            color: CustomColor.blue2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customIcon(),
              customTitle(),
            ],
          )
        ),
      );
    }
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
            children: [
              Expanded(child: Container()),
              customCamera(),
              SizedBox(width: 10.w,),
              customPhoto(),
              SizedBox(width: 10.w,),
              customPhoto(),
              SizedBox(width: 10.w,),
              customPhoto(),
              Expanded(child: Container()),
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