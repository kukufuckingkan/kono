
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class KulkulkanAppBar extends PreferredSize {
  
  const KulkulkanAppBar({super.key, required super.preferredSize, required super.child});

  @override
  Widget get child => const ApplicationBar(user: '',title: '',);

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class ApplicationBar extends ConsumerWidget {
  const ApplicationBar({
    super.key,
    required this.user,
    required this.title
  });

  final String user;
    final String title;

  @override
  Widget build(context, ref) {
    return AppBar(
      //elevation: 10,
      backgroundColor: Colors.green,
  
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        background: Container(
          color: Colors.grey[200], // Background color
          child: const Center(
            child: CircleAvatar(
              radius: 40.0, // Adjust the radius as needed
              backgroundImage: NetworkImage('https://mythlok.com/wp-content/uploads/2022/05/Mythlok-Kukulkan-modern.png'), // Your profile image
            ),
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          color: Colors.black,
          onPressed: () {
            // Add your search functionality here
          },
        ),
        Badge(
          label: Text("4"),
          child: IconButton(
            icon: const Icon(Icons.notifications),
            color: Colors.black,
            onPressed: () {
              // Add your notifications functionality here
              GoRouter.of(context).go('/notifications');
            },
          ),
        ),
        IconButton(
          icon: const Icon(Icons.mail_outline),
          color: Colors.black,
          onPressed: () {
            // Add your direct messages functionality here
          },
        ),
      ],
    );
  }
}