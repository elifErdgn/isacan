import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Siparişlerim",
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: OrderBody(),
    );
  }
}

class OrderBody extends StatefulWidget {
  @override
  State<OrderBody> createState() => _OrderBodyState();
}

class _OrderBodyState extends State<OrderBody> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    controller: _tabController,
                    // isScrollable: true,
                    labelPadding: const EdgeInsets.only(left: 20, right: 20),
                    tabs: [
                      Tab(text: "TÜMÜ"),
                      Tab(text: "Devam Eden Sipariş"),
                      Tab(text: "İadeler"),
                      Tab(text: "İptaller"),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: SizeConfig.screenHeight,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    /// TÜMÜ
                    Column(
                      children: [
                        orderCard(color: Colors.deepOrangeAccent),
                        orderCard(color: Colors.deepOrangeAccent),
                        orderCard(color: Colors.deepOrangeAccent),
                      ],
                    ),

                    /// DEVAM EDEN SİPARİŞLER
                    Column(
                      children: [
                        orderCard(color: Colors.green),
                      ],
                    ),

                    /// İADELER
                    Column(
                      children: [
                        orderCard(color: Colors.red),
                      ],
                    ),

                    /// İPTALLER
                    Column(
                      children: [
                        orderCard(color: Colors.blueAccent),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class orderCard extends StatelessWidget {
  const orderCard({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10)),
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(15),
              ),
              height: 190,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 0),
                  )
                ],
                color: color,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "17 EYLÜL 2021",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Toplam: 300tl",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "detay ",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(height: 2, color: Colors.white),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/adam.png"),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Text(
                        "PAKET İSMİ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
