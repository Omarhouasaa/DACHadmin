import 'package:flutter/material.dart';
import 'package:grocery_admin_panel/controllers/MenuController.dart' as myMenuController;
import 'package:provider/provider.dart';

import '../responsive.dart';
import '../services/utils.dart';
import '../widgets/grid_products.dart';
import '../widgets/header.dart';
import '../widgets/side_menu.dart';

class ALLProductsScreen extends StatefulWidget {
  const ALLProductsScreen({Key? key}) : super(key: key);

  @override
  State<ALLProductsScreen> createState() => _ALLProductsScreenState();
}

class _ALLProductsScreenState extends State<ALLProductsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    return Scaffold(
      key: context.read<myMenuController.MenuController>().getgridscaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              const Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
             Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: SingleChildScrollView(
                controller: ScrollController(),
                child: Column(children: [
                  SizedBox(height: 25,),
                  Header(
                    fct: () {
                          context
                          .read<myMenuController.MenuController>().controlProductsMenu();
                   },
                   title: 'All Products',
                 ),
                 SizedBox(height: 25,),
                 Responsive(
                    mobile: ProductGridWidget(
                      crossAxisCount: size.width <750 ? 2:4,
                      childAspectRatio: size.width <650 && size.width >350 ? 1.1 :0.8,
                      isInMain: false,
                    )

                   ,desktop: ProductGridWidget(
                      childAspectRatio: size.width < 1400 ? 0.8 : 1.05,
                      isInMain: false,
                    ),  
                    ),
                ],),
              )
            ),
          ],
        ),
      ),
    );
  }
}