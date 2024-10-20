import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import '../../application_router.dart';
import '../widget/app_bar.dart';
import '../widget/side_bar_widget.dart';
import '../widget/user_account_drawer.dart';

class HomePage extends ConsumerWidget {
  final Widget child;

  const HomePage(this.child, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Open the endDrawer after the first frame is rendered
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Scaffold.of(context).openEndDrawer();
      Scaffold.of(context).openDrawer();
    });

    return Scaffold(
      drawerEnableOpenDragGesture: true,
      
      body: child,
      // appBar: const KulkulkanAppBar(
      //   preferredSize: Size.fromHeight(100),
      //   child: Text('Hello'),
      // ),
      appBar: AppBar(),
      drawer: const KulkulkanAccountDrawer(),
      endDrawer: const SideBarWidget(),

      bottomNavigationBar: Consumer(
        builder: (context, WidgetRef ref, __) {
          return ConvexAppBar(
            style: TabStyle.react,
            items: const [
              TabItem(icon: Icons.list),
              TabItem(icon: Icons.calendar_today),
              TabItem(icon: Icons.assessment),
            ],
            initialActiveIndex: 0,
            onTap: (int i) {
              switch (i) {
                case 0:
                 // const HomeScreenRoute().go(context);
                  break;
                case 1:
                //const BookPageRoute(id: 2, sku: '').go(context);
                 //BookPageRoute(sku: '').go(context);
                  context.go('/chapter');
                  break;
                default:
                  context.go('/');
              }
            },
          );
        },
      ),
    );
  }
}