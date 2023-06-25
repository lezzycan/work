import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:work/src/views/users_and_permissions/users_and_permissions_widget.dart';

class UsersAndPermission extends StatefulWidget {
  const UsersAndPermission({super.key});

  @override
  State<UsersAndPermission> createState() => _UsersAndPermissionState();
}

class _UsersAndPermissionState extends State<UsersAndPermission>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    final acceptedList = [];
    final sentList = [];

    return Scaffold(
        resizeToAvoidBottomInset: true,
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFFFFFBFE),
          onPressed: () async {
            // await showModalBottomSheet(
            //   isScrollControlled: true,
            //   shape: const RoundedRectangleBorder(
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(24),
            //       topRight: Radius.circular(24),
            //     ),
            //   ),
            //   context: context,
            //   builder: (context) {
            //     return ;
            //   },
            // );
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xFF781596),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back),
                      ),
                      const Column(
                        children: [
                          Text(
                            'Users & Permission',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Add a staff to your business',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
                TabBar(
                  indicatorColor: const Color(0xFF781596),
                  controller: _tabController,
                  tabs: const [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Accepted',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF1C1B1F),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Sent',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF49454F),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Container(
                        child: acceptedList.isEmpty
                            ? Center(
                                child:
                                    SvgPicture.asset('assets/noAccepted.svg'),
                              )
                            : ListView(
                                children: [
                                  GestureDetector(
                                    // onTap: () => showBottomSheet(
                                    //   context: context,
                                    //   builder: (context) =>
                                    //       const EditAcceptedStaff(),
                                    // ),
                                    child: usersAndPermissionListWidget(
                                      mainText: 'Georgia Young',
                                      subText: 'georgia@gmail.com',
                                      filled: true,
                                    ),
                                  ),
                                  GestureDetector(
                                    // onTap: () => showBottomSheet(
                                    //   context: context,
                                    //   builder: (context) =>
                                    //       const EditAcceptedStaff(),
                                    // ),
                                    child: usersAndPermissionListWidget(
                                      mainText: 'Georgia Young',
                                      subText: 'georgia@gmail.com',
                                      filled: true,
                                    ),
                                  ),
                                  GestureDetector(
                                    // onTap: () => showBottomSheet(
                                    //   context: context,
                                    //   builder: (context) =>
                                    //       const EditAcceptedStaff(),
                                    // ),
                                    child: usersAndPermissionListWidget(
                                      mainText: 'Georgia Young',
                                      subText: 'georgia@gmail.com',
                                      filled: true,
                                    ),
                                  ),
                                ],
                              ),
                      ),
                      Container(
                        child: sentList.isEmpty
                            ? Center(
                                child: SvgPicture.asset('assets/noInvite.svg'),
                              )
                            : ListView(children: [
                                usersAndPermissionListWidget(
                                  mainText: 'Georgia Young',
                                  subText: 'georgia@gmail.com',
                                ),
                                usersAndPermissionListWidget(
                                  mainText: 'Georgia Young',
                                  subText: 'georgia@gmail.com',
                                ),
                                usersAndPermissionListWidget(
                                  mainText: 'Georgia Young',
                                  subText: 'georgia@gmail.com',
                                ),
                              ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
