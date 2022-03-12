import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:starbucks/models/models.dart';
import 'package:starbucks/presentation/helpers/constants.dart';
import 'package:starbucks/presentation/screen/details/details_screen.dart';

import '../../../widgets/productCard.dart';
import '../../../widgets/section_title.dart';

class HomeBody extends StatefulWidget {
  HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          const SectionTitle(
            data: 'STARBUCKS',
          ),
          SizedBox(
            height: 25.h,
          ),
          SizedBox(
            child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.transparent,
                tabs: const [
                  Tab(
                    text: 'Recent',
                  ),
                  Tab(
                    text: 'Popular',
                  ),
                  Tab(
                    text: 'Unique',
                  ),
                  Tab(
                    text: 'Modern',
                  ),
                ]),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: double.maxFinite,
            height: 320.h,
            child: TabBarView(controller: _tabController, children: [
              Recent(
                model: recentProduct,
              ),
              Recent(
                model: popularProducts,
              ),
              Recent(
                model: uniqueProducts,
              ),
              Recent(
                model: modernProduct,
              ),
            ]),
          ),
          SizedBox(
            height: 30.h,
          ),
          const SectionTitle(
            data: 'COFFE HOUSE',
          ),
          SizedBox(height: 20.h),
          Container(
            width: double.maxFinite,
            height: 320.h,
            child: Recent(
              model: uniqueProducts,
            ),
          ),
        ],
      ),
    );
  }
}

class Recent extends StatefulWidget {
  Recent({Key? key, required this.model}) : super(key: key);

  final model;
  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  int _current = 0;

  dynamic _selectedProduct = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: CarouselSlider.builder(
        itemCount: widget.model.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            GestureDetector(
          onTap: () {
            if (_selectedProduct == itemIndex) {
              _selectedProduct = {};
            } else {
              _selectedProduct = itemIndex;
            }
            Get.to(() => DetailScreen(product: widget.model[itemIndex]));
          },
          child: ProductCard(
            child: _current == itemIndex
                ? Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[800],
                        radius: 25,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30.h,
                        ),
                      ),
                    ),
                  )
                : Container(),
            bgColor: itemIndex == _current ? kPrimaryColor : Colors.grey,
            image: widget.model[itemIndex].image,
            price: widget.model[itemIndex].price,
            name: widget.model[itemIndex].name,
            id: widget.model[itemIndex].id,
            press: () {
              Get.snackbar('Item Added', '',
                  messageText: const Center(
                      child: Text('Item added',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))),
                  colorText: Colors.white,
                  backgroundColor: Colors.white.withOpacity(0.3),
                  snackPosition: SnackPosition.TOP);
            },
          ),
        ),
        options: CarouselOptions(
            onPageChanged: ((index, reason) {
              setState(() {
                _current = index;
              });
            }),
            initialPage: _current,
            viewportFraction: 0.55,
            enlargeCenterPage: true,
            reverse: false,
            enableInfiniteScroll: false,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            aspectRatio: 10 / 9,
            autoPlay: false,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800)),
      ),
    );
  }
}
