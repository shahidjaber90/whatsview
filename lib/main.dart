import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chat_View(),
    );
  }
}

class Chat_View extends StatefulWidget {
  const Chat_View({super.key});

  @override
  State<Chat_View> createState() => _Chat_ViewState();
}

class _Chat_ViewState extends State<Chat_View> {
  @override
  // var tabColor = Color.fromARGB(255, 10, 170, 77);
  // var tabIndicate = Colors.greenAccent[700];
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          backgroundColor: Colors.green,
          toolbarHeight: 75,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.greenAccent,
            tabs: [
              Tab(
                icon: Icon(Icons.groups_sharp),
              ),
              Tab(text: ("CHATS")),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.green,
        child: const Icon(Icons.message),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              chatWidget('Shahid', 'Tab Color Ka Bta Dijye', '07:26 pm'),
              chatWidget('Shahid', 'Tab Color Ka Bta Dijye', '07:26 pm'),
              chatWidget('Shahid', 'Tab Color Ka Bta Dijye', '07:26 pm'),
              chatWidget('Shahid', 'Tab Color Ka Bta Dijye', '07:26 pm'),
              chatWidget('Shahid', 'Tab Color Ka Bta Dijye', '07:26 pm'),
              chatWidget('Shahid', 'Tab Color Ka Bta Dijye', '07:26 pm'),
              chatWidget('Shahid', 'Tab Color Ka Bta Dijye', '07:26 pm'),
              chatWidget('Shahid', 'Tab Color Ka Bta Dijye', '07:26 pm'),
              chatWidget('Shahid', 'Tab Color Ka Bta Dijye', '07:26 pm'),
            ],
          ),
        ),
      ),
    );
  }
}

chatWidget(name, msg, time) {
  return ListTile(
      leading: const CircleAvatar(
        // backgroundColor: Color.fromARGB(255, 56, 128, 187),
        backgroundImage: AssetImage('assets/shahid_1.jpg'),
      ),
      title: Text("$name"),
      subtitle: Text("$msg......"),
      trailing: Column(
        children: [Text("$time"), const Icon(Icons.check)],
      ));
}



// const TabBarView(
//           children: [
//             Center(
//               child: Text('')
//             ),
//             Center(
//               child: Text('Chat Tab'),
//             ),
//             Center(
//               child: Text('Status Tab'),
//             ),
//             Center(
//               child: Text('Calls Tab'),
//             ),
//           ],
//         ),