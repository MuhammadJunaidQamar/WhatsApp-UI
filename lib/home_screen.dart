import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            const Icon(
              Icons.search,
              size: 20,
            ),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_horiz_outlined),
              itemBuilder: (context) => const [
                PopupMenuItem(
                  value: 1,
                  child: Text('New Group'),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text('Settings'),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text('Logout'),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Call'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const Center(
              child: Text(
                'Kutta Wapis kar pehle baad me selfie lelain.',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/john-wick-chapter-3-parabellum-1572870851.jpg?resize=480:*'),
              ),
              title: Text('John Wick'),
              subtitle: Text('Where is my dog?'),
              trailing: Text('Just Now'),
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 3),
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/236x/30/88/9e/30889e83f47add79e10041682bd8749a--funny-moments-funny-things.jpg',
                  ),
                ),
              ),
              subtitle: const Text(
                'Just Now',
              ),
              title: const Text('John Wick'),
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: const Text('John Wick'),
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/john-wick-chapter-3-parabellum-1572870851.jpg?resize=480:*'),
                  ),
                  trailing: const Icon(Icons.call),
                  subtitle: Row(
                    children: const [
                      Icon(
                        Icons.call_missed_outlined,
                        color: Colors.red,
                        size: 17,
                      ),
                      Text(
                        'Today, Just Now',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
