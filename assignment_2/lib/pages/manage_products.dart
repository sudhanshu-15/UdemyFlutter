import 'package:assignment_2/pages/products.dart';
import 'package:flutter/material.dart';

class ManageProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text("Products"),
              onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductsPage(),
                    ),
                  ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Manage Products'),
      ),
      body: Center(
        child: Text("Manage Products to be implemented"),
      ),
    );
  }
}
