import 'package:flutter/material.dart';
import 'package:pet_here/src/pages/home.dart';
import 'package:pet_here/src/pages/perfil.dart';
import 'package:pet_here/src/pages/pets.dart';
import 'package:pet_here/src/pages/registro.dart';

class NavigatorBarWidget extends StatefulWidget {

  @override
  _NavigatorBarWidgetState createState() => _NavigatorBarWidgetState();
}

class _NavigatorBarWidgetState extends State<NavigatorBarWidget> {

  PageController _pageController = PageController();
  List<Widget> _screens = [HomePage(), PetsPage() , RegistroPage(), PerfilPage()];

  int _currentIndex = 0;
  
  void _onPageChanged(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  void _onItemTapped(int indexSelected){
    _pageController.jumpToPage(indexSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
          backgroundColor: Color(0XFF20CDA3),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pets),
          label: 'Mascotas',
          backgroundColor: Color(0XFF20CDA3),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.watch),
          label: 'Registro',
          backgroundColor: Color(0XFF20CDA3),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
          backgroundColor: Color(0XFF20CDA3),
        ),
      ],
      onTap:_onItemTapped,
    ),
    );
  }
}