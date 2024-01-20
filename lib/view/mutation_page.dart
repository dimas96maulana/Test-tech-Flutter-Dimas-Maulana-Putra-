part of 'view.dart';

class MutationPage extends StatelessWidget {
  const MutationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget body(){
      Widget dropDown(){
        Widget customDropDown()=> Container(
          padding: EdgeInsets.only(bottom: 25.h),
          color: CustomColor.white,
          child: Center(
            child: widgetDropDown(
              title: "Nama Outlet"
            ),
          ),
        );
        
        return Container(
          color: CustomColor.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customDropDown(),
              customDropDown(),
            ],
          ),
        );
      }

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
          dropDown(),
          customForm(),
          customButton(),
        ],
      );
    }
    return Scaffold(
      appBar: widgetAppbar(
        context,
        title: "Mutasi"
      ),
      body: body(),
      backgroundColor: CustomColor.blue1,
    );
  }
}