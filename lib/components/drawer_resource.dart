import 'package:flutter/material.dart';

class DrawerResource extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.1),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Image.asset(
                    'assets/logo.png',
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height*0.2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              ListTile(
                leading: Icon(Icons.person_outlined, color: Colors.white),
                title: Text("Profile",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.info_outline, color: Colors.white),
                title: Text("About",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(Icons.logout_rounded, color: Colors.white),
            title: Text("Log Out",
              style: TextStyle(
                color: Colors.white
              )
            )
          ),
        )
      ],
    );
  }
}