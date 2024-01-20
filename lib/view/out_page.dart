part of 'view.dart';

class OutPage extends StatelessWidget {
  const OutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget body(){
      Widget customDropDown()=> Container(
        padding: EdgeInsets.only(bottom: 25.h),
        color: CustomColor.white,
        child: Center(
          child: widgetDropDown(
            title: "Nama Outlet"
          ),
        ),
      );

      Widget customForm()=> Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            SizedBox(height: 15.h,),
            widgetFrom(
              padding: EdgeInsets.only(bottom: 5.h),
              title: "Start Date",
              description: "19/10/2012", 
            ),
            widgetFrom(
              padding: EdgeInsets.only(bottom: 5.h),
              title: "Judul",
              description: "", 
            ),
            widgetFormMoney(
              padding: EdgeInsets.only(bottom: 5.h),
              title: "Input",
              description: "description"
            ),
            widgetFormPhoto(
              padding: EdgeInsets.only(bottom: 5.h),
              title: "Photo",
            ),
            widgetFrom(
              padding: EdgeInsets.only(bottom: 5.h),
              title: "Keterangan",
              description: "", 
            ),
          ],
        ),
      );

      customButton()=> Expanded(
        child: Column(
          children: [
            Expanded(child: Container()),
            widgetButton(title: "Submit"),
            SizedBox(height: 50.h,)
          ],
        ),
      );

      return Column(
        children: [
          customDropDown(),
          customForm(),
          customButton(),
        ],
      );
    }
    return Scaffold(
      appBar: widgetAppbar(
        context,
        title: "Keluar"
      ),
      body: body(),
      backgroundColor: CustomColor.blue1,
    );
  }
}