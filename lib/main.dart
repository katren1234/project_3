import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      theme: ThemeData.dark(),
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  final List<Map<String, dynamic>> chats = [
    {
      "name": "Amr Moustafa",
      "message": "what's up my bro , What are you doing now",
      "time": "02:55 pm",
      "avatar": "https://i.pravatar.cc/150?img=1",
      "online": true
    },
    {
      "name": "Mohamed Said yemlahi",
      "message": "What are you doing now?",
      "time": "09:12 pm",
      "avatar": "https://i.pravatar.cc/150?img=2",
      "online": true
    },
    {
      "name": "Andrey Esin",
      "message": "Hi",
      "time": "12:05 am",
      "avatar": "https://i.pravatar.cc/150?img=3",
      "online": true
    },
    {
      "name": "Moataz Mohammady",
      "message": "\"Hello, World!\"",
      "time": "02:55 pm",
      "avatar": "https://i.pravatar.cc/150?img=4",
      "online": true
    },
    {
      "name": "Iago Rocha",
      "message": "✌",
      "time": "08:01 pm",
      "avatar": "https://i.pravatar.cc/150?img=5",
      "online": true
    },
    {
      "name": "Gael",
      "message": "Hi my broo",
      "time": "12:34 am",
      "avatar": "https://i.pravatar.cc/150?img=6",
      "online": true
    },
    {
      "name": "Mohamed Khaled",
      "message": "yes this is my page",
      "time": " 2:55 pm",
      "avatar": "https://i.pravatar.cc/150?img=7",
      "online": true
    },
    {
      "name": "Anas Elgarhy",
      "message": "i'm Anas",
      "time": "12 pm",
      "avatar": "https://i.pravatar.cc/150?img=8",
      "online": true
    },
  ];

  final List<Map<String, dynamic>> contacts = List.generate(
    10,
        (index) => {
      "name": "User$index",
      "avatar": "https://i.pravatar.cc/150?img=${index + 11}",
      "online": index % 2 == 0,
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: CircleAvatar(
          backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=10'),
        ),
        title: Text("Chats"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
        ],
      ),
      body: Column(
        children: [
          // 🔹 مربع Search
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.white54),
                prefixIcon: Icon(Icons.search, color: Colors.white54),
                filled: true,
                fillColor: Colors.grey[900],
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          // 🔹 شريط جهات الاتصال
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                final contact = contacts[index];
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage(contact['avatar']),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 6,
                              backgroundColor: contact['online']
                                  ? Colors.green
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        contact['name'],
                        style:
                        TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Divider(color: Colors.white24),
          // 🔹 لستة الشات
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final chat = chats[index];
                return ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(chat['avatar']),
                        radius: 28,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: chat['online']
                              ? Colors.green
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  title: Text(chat['name'],
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text(chat['message'],
                      style: TextStyle(color: Colors.white60)),
                  trailing: Text(chat['time'],
                      style:
                      TextStyle(color: Colors.white54, fontSize: 12)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
