import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<String> litems = ["1", "2", "Third", "4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 245, 245),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // * Search Bar and settings
              Row(
                children: [
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 8),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search...',
                          prefixIcon: Icon(
                            Icons.search,
                            size: 25,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings),
                      hoverColor: Colors.grey,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Flexible(
                child: ListView.builder(
                    itemCount: litems.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          ListTile(
                            onTap: (() {
                              Navigator.pushNamed(
                                context,
                                '/Chat',
                                arguments: {
                                  'name': litems[index],
                                },
                              );
                            }),
                            leading: const Icon(Icons.person, size: 40),
                            title: Text(litems[index],
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600)),
                            subtitle: const Text(
                              'This is a subtitle',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            trailing: const Text(
                              '12:00',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 161, 161, 161)),
                            ),
                            horizontalTitleGap: 20,
                            tileColor: Colors.white,
                            shape: ShapeBorder.lerp(
                                const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                1),
                            contentPadding: EdgeInsetsGeometry.lerp(
                                const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 20),
                                const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 25),
                                1),
                          ),
                          const SizedBox(height: 10)
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),

      // * Bottom Navigation Bar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: LineIcons.facebookMessenger,
                  text: 'Chat',
                ),
                GButton(
                  icon: LineIcons.userPlus,
                  text: 'Create',
                ),
                GButton(
                  icon: LineIcons.star,
                  text: 'Starred',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
