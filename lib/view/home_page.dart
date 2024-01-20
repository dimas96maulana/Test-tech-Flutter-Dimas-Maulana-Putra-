part of 'view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  RxBool isLayer3Active = true.obs;
  RxBool isEndAnimatedContainer = true.obs;
  @override
  Widget build(BuildContext context) {
    Widget body(){
      Widget customAppBar(){
        Widget customTitle()=> Center(
          child: Container(
            height: 35.h,
            decoration: null,
            child: Center(
              child: Text(
                "APP KEUANGAN",
                style: CustomFont.robotoSize14Weight700(
                  color: CustomColor.blue1,
                ),
              ),
            ),
          ),
        );

        Widget customIcon()=> Positioned(
          right: 10.w,
          child: Container(
            width: 35.r,
            height: 35.r,
            decoration: null,
            child: Image.asset(
              "assets/Button Notifikasi.png",
              width: 35.r,
              height: 35.r,
            ),
          ),
        );

        return Stack(
          children: [
            customTitle(),
            customIcon(),
          ],
        );
      }
      
      Widget customTabbar()=> Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          widgetIconTitle(
            title: "Home",
            iconActive: "assets/Button Home Aktif.png",
            iconNonActive: "assets/Button Home Tidak Aktif.png",
            sizeIcon: 30.r,
            isActive: true,
          ),

          widgetIconTitle(
            title: "TRANSAKSI",
            iconActive: "assets/Button Transaksi Aktif.png",
            iconNonActive: "assets/Button Transaksi Tidak Aktif.png",
            sizeIcon: 30.r,
            isActive: false,
          ),

          widgetIconTitle(
            title: "LAPORAN",
            iconActive: "assets/Button Laporan Aktif.png",
            iconNonActive: "assets/Button Laporan Tidak Aktif.png",
            sizeIcon: 30.r,
            isActive: false,
          ),

          widgetIconTitle(
            title: "TOOLS",
            iconActive: "assets/Button Tools Aktif.png",
            iconNonActive: "assets/Button Transaksi Tidak Aktif.png",
            sizeIcon: 30.r,
            isActive: false,
          ),
        ],
      );
      
      Widget customBody({required EdgeInsetsGeometry padding}){
        Widget customDots({required int index, required TextStyle style})=> Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            // color: Colors.amber,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for(int i=0 ; i<index ; i++)
                Text(
                  "-",
                  style: style
                )
              ],
            ),
          )
        );
        Widget customCard(){
          Widget details(){
            return Padding(
              padding: EdgeInsets.only(
                left: 10.w
              ),
              child: GestureDetector(
                onTap: (){
                  isLayer3Active.value = !isLayer3Active.value;
                },
                child: Image.asset(
                  (isLayer3Active.value == true)
                    ? "assets/Button Close Slide.png"
                    : "assets/Button Open Slide.png",
                  width: 18.r,
                  height: 18.r,
                  fit: BoxFit.fill,
                ),
              ),
            );
          }
          
          Widget customLayer1(){

            Widget customTitle()=> Text(
              "Nama Outlet",
              style: CustomFont.robotoSize12Weight700(
                color: CustomColor.blue1
              ),
            );
            Widget customDescription({required String title, required String value, required int index}){
             
              Widget customValue()=> Text(
                value,
                style: CustomFont.robotoSize12Weight700(
                  color: CustomColor.blue1
                ),
              );

              return Padding(
                padding: EdgeInsets.only(
                  left: 10.w
                ),
                child: Row(
                  children: [
                    widgetIconMoney(title: title),
                    SizedBox(width: 5.w,),
                    customDots(
                      index: index,
                      style: CustomFont.robotoSize12Weight700(
                        color: CustomColor.grey2.withOpacity(0.1)
                      ),
                    ),
                    customValue(),
                    // details(),
                  ],
                ),
              );
            }
            return Container(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 50.h
              ),
              width: double.infinity,
              child: Container(
                height: 140.h,
                decoration: null,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customTitle(),
                    SizedBox(height: 10.h,),
                    customDescription(
                      title: "IDR",
                      value: "500.000",
                      index: 31,
                    ),
                    SizedBox(height: 10.h,),
                    customDescription(
                      title: "USD",
                      value: "0",
                      index: 38,
                    ),
                    SizedBox(height: 10.h,),
                    customDescription(
                      title: "EUR",
                      value: "20.000",
                      index: 31,
                    ),
                    SizedBox(height: 10.h,),
                    customDescription(
                      title: "SGD",
                      value: "6.000",
                      index: 33,
                    ),
                  ],
                ),
              ),
            );
          }

          Widget customLayer2()=> Obx(()=>Visibility(
            visible: isLayer3Active.value,
            child: Container(
              decoration: BoxDecoration(
                color: CustomColor.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15.r)
              ),
              width: double.infinity,
              height: 140.h,
            ),
          ));

          Widget customLayer3(){
            Widget customIconButton()=> Container(
              padding: EdgeInsets.only(top: 10.h),
              color: Colors.transparent,
              // width: 250.w,
              width: (isLayer3Active.value == true && isEndAnimatedContainer.value == true)
                ? 250.w
                : 0.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  widgetIconTitle(
                    title: "MASUK",
                    iconActive: "assets/Button Home Aktif.png",
                    iconNonActive: "assets/Button Home Tidak Aktif.png",
                    sizeIcon: 26.r,
                    isActive: true,
                    onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InPage(),
                        )
                      );
                    }
                  ),
                  widgetIconTitle(
                    title: "KELUAR",
                    iconActive: "assets/Button Home Aktif.png",
                    iconNonActive: "assets/Button Home Tidak Aktif.png",
                    sizeIcon: 26.r,
                    isActive: true,
                    onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OutPage(),
                        )
                      );
                    }
                  ),
                  widgetIconTitle(
                    title: "PINDAH",
                    iconActive: "assets/Button Home Aktif.png",
                    iconNonActive: "assets/Button Home Tidak Aktif.png",
                    sizeIcon: 26.r,
                    isActive: true,
                    onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MovePage(),
                        )
                      );
                    }
                  ),
                  widgetIconTitle(
                    title: "MUTASI",
                    iconActive: "assets/Button Home Aktif.png",
                    iconNonActive: "assets/Button Home Tidak Aktif.png",
                    sizeIcon: 26.r,
                    isActive: true,
                    onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MutationPage(),
                        )
                      );
                    }
                  ),
                  widgetIconTitle(
                    title: "KURS",
                    iconActive: "assets/Button Home Aktif.png",
                    iconNonActive: "assets/Button Home Tidak Aktif.png",
                    sizeIcon: 26.r,
                    isActive: true,
                    onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const KursPage(),
                        )
                      );
                    }
                  ),
                ],
              ),
            );

            Widget customDetails(){
              Widget customTitleTotal()=> Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 9.w,
                  vertical: 4.h
                ),
                child: Row(
                  children: [
                    Text(
                      "Jumlah Barang",
                      style: CustomFont.robotoSize8Weight700(
                        color: CustomColor.grey
                      ),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "16",
                      style: CustomFont.robotoSize8Weight700(
                        color: CustomColor.grey
                      ),
                    ),
                  ],
                ),
              );

              Widget customTitleDescription({required String title, required String description, required int index})=> Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 9.w, 
                ),
                child: Row(
                  children: [
                    Text(
                      title,
                      style: CustomFont.robotoSize8Weight400(
                        color: CustomColor.blue1
                      ),
                    ),
                    customDots(
                      index: index,
                      style: CustomFont.robotoSize8Weight700(
                        color: CustomColor.grey2.withOpacity(0.1)
                      ),
                    ),
                    Text(
                      description,
                      style: CustomFont.robotoSize8Weight400(
                        color: CustomColor.blue1
                      ),
                    ),
                  ],
                ),
              );
              
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                elevation: ServiceLocal.elevation,
                child: Container(
                  decoration: null,
                  width: (isLayer3Active.value == true && isEndAnimatedContainer.value == true)
                    ? 240.w
                    : 0.w,
                  height: 67.h,
                  child: Column(
                    children: [
                      customTitleTotal(),
                      customTitleDescription(
                        title: "Total IDR",
                        description: "Rp 100.000.000",
                        index: 34
                      ),
                      customTitleDescription(
                        title: "Total USD",
                        description: "\$ 2.000",
                        index: 42
                      ),
                      customTitleDescription(
                        title: "Total EUR",
                        description: "€ 200",
                        index: 44
                      ),
                      customTitleDescription(
                        title: "Total SGD",
                        description: "S\$ 1.000",
                        index: 40
                      ),
                    ],
                  ),
                ),
              );
            }

            return Positioned(
              right: 0,
              child: Obx(()=>AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 140.h,
                onEnd: (){
                  if(isLayer3Active.value == true){
                    isEndAnimatedContainer.value = true;
                  }else{
                    isEndAnimatedContainer.value = false;
                  }
                },
                width: (isLayer3Active.value == false)
                  ? 35.w
                  : 290.w,
                decoration: BoxDecoration(
                  color: CustomColor.blue2,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.r),
                    bottomRight: Radius.circular(15.r)
                  )
                ),
                child: Row(
                  children: [
                    details(),
                    Column(
                      children: [
                        customIconButton(),
                        SizedBox(height: 10.h,),
                        customDetails(),
                      ],
                    )
                  ],
                ),
              )),
            );
          }
          
          return Padding(
            padding: padding,
            child: Card(
              // color: CustomColor.blue2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r)
              ),
              child: Stack(
                children: [
                  customLayer1(),
                  customLayer2(),
                  customLayer3(),
                ],
              )
            ),
          );
        } 
        return Expanded(
          child: Column(
            children: [
              customCard(),
            ],
          )
        );
      }

      iconRefresh()=> Image.asset(
        "assets/Button Refresh.png",
        width: 24.r,
        height: 24.r,
        fit: BoxFit.fill,
      );

      return SafeArea(
        child: Stack(
          children: [
            widgetBackgroundHome(),
            Column(
              children: [
                customAppBar(),
                SizedBox(height: 10.h,),
                customTabbar(),
                SizedBox(height: 23.h,),
                iconRefresh(),
                customBody(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.h,
                    horizontal: 10.w,
                  )
                ),
              ],
            ),
          ],
        )
      );
    }
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: body()
    );
  }
}

