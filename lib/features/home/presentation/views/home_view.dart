import 'package:flutter/material.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'widgets/drawer_home_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: HomeViewBody(scaffoldKey: _scaffoldKey),
      drawer: const DrawerHomeView(),
      
    );
  }
}
