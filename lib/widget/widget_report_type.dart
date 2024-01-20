part of 'widget.dart';

Widget widgetReportType({required String title}){
  Widget customTitle()=> Text(
    title,
    style: CustomFont.robotoSize12Weight700(
      color: CustomColor.blue1,
    ),
  );

  Widget customDate()=> Text(
    "19/10/2012 - 19/10/2012",
    style: CustomFont.robotoSize10Weight400(color: CustomColor.blue1),
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
          customDate(),
        ],
      ),
    )
  );
}