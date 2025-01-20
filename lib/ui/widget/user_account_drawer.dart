
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';





class KulkulkanAccountDrawer extends ConsumerWidget {
  const KulkulkanAccountDrawer({super.key});


  @override
  Widget build(context, ref) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            accountEmail:  Text('kulkulkan@gmail.com') ,
            accountName: const Text('Kulkulkan'),
            
            onDetailsPressed: () {
              
            },
            currentAccountPicture: GestureDetector(
                onTap: () async {
                  //ref.read(userAssetsController.notifier).pickAndSaveImage();
                },
                child: const CircleAvatar(backgroundImage: NetworkImage(''))),
          ),
    
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}