part of 'view.dart';

class KursPage extends StatelessWidget {
  const KursPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget body(){
      Widget customDropDown()=> Container(
        padding: EdgeInsets.only(bottom: 25.h),
        color: CustomColor.white,
        child: Container(
          color: CustomColor.white,
          width: double.infinity,
          child: Column(
            children: [
              widgetDropDown(
                title: "Nama Outlet"
              ),
              widgetReportType(
                title: "Jenis Laporan"
              ),
            ],
          ),
        ),
      );

      Widget customForm()=> Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            SizedBox(height: 15.h,),
            widgetFormMoney(
              padding: EdgeInsets.only(bottom: 5.h),
              title: "Dari",
              description: "description"
            ),
            widgetFormMoney(
              padding: EdgeInsets.only(bottom: 5.h),
              title: "Ke",
              description: "description"
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
        title: "Kurs"
      ),
      body: body(),
      backgroundColor: CustomColor.blue1,
    );
  }
}