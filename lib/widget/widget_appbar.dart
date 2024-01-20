part of 'widget.dart';

PreferredSizeWidget widgetAppbar(context, {required String title})=> AppBar(
  leading: GestureDetector(
    onTap: (){
      closeWidget(context);
    },
    child: Image.asset(
      "assets/Back button.png",
    )
  ),
  actions: [
    SizedBox(
      width: 45.w,
    )
  ],
  title: Center(
    child: Text(
      title,
      style: CustomFont.robotoSize14Weight700(
        color: CustomColor.blue1
      ),
    ),
  ),
);