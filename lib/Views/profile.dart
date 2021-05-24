import 'package:challange8_app/Widgets/appbar.dart';
import 'package:challange8_app/models/card_data.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    expandedHeight: 320,
                    floating: false,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: CustomFlexiableAppBar(),
                    ),
                  ),
                  SliverPersistentHeader(
                    delegate: _SliverAppBarDelegate(
                      TabBar(
                          indicatorColor: Color(0xff12B0E8)..withOpacity(0.8),
                          tabs: [
                            Tab(
                              child: Text(
                                "About".toUpperCase(),
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Post".toUpperCase(),
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          ]),
                    ),
                    pinned: true,
                  ),
                ];
              },
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: alldata
                            .map((carddata) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15.0, horizontal: 20),
                                  child: Row(
                                    children: [
                                      Icon(
                                        carddata.icon,
                                        color: Color(0xff12B0E8)
                                          ..withOpacity(0.8),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            carddata.title,
                                            style: TextStyle(
                                                color: Color(0xff12B0E8)
                                                  ..withOpacity(0.8)),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(carddata.subtitle)
                                        ],
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Status",
                                style: TextStyle(
                                    color: Color(0xff12B0E8)..withOpacity(0.8)),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Available",
                                //style: TextStyle(
                                //color: Color(0xff12B0E8)..withOpacity(0.8)
                                //),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
