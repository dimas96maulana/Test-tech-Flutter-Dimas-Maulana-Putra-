part of 'view.dart';

class MovePage extends StatelessWidget {
  const MovePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget body(){
      Widget dropDown(){
        Widget customDropDown({required String title})=> Column(
          children: [
            Text(
              title,
              style: CustomFont.robotoSize8Weight700(color: CustomColor.blue1),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 25.h),
              color: CustomColor.white,
              child: Center(
                child: widgetDropDown(
                  title: "Nama Outlet"
                ),
              ),
            ),
          ],
        );
        
        return Container(
          color: CustomColor.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customDropDown(
                title: "Dari"
              ),
              customDropDown(
                title: "Ke"
              ),
            ],
          ),
        );
      }

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
          dropDown(),
          customForm(),
          customButton(),
        ],
      );
    }
    return Scaffold(
      appBar: widgetAppbar(
        context,
        title: "Pindah"
      ),
      body: body(),
      backgroundColor: CustomColor.blue1,
    );
  }
}