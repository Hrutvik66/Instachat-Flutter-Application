import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final List<String> litems = ["1", "2", "Third", "4"];
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context)!.settings.arguments as Map;
    // var argument = args['name'];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 245, 245),
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1610004542779-8b8e1b2b2b1c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            ),
            const SizedBox(width: 20),
            Text(args['name']),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Message...',
                      ),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                  color: const Color.fromARGB(255, 162, 31, 249),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
