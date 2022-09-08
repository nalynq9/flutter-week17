import 'package:flutter/material.dart';

class ListMenu{
  final String? title;
  final String? subtitle;
  final IconData? icon;
  const ListMenu({this.title,this.subtitle,this.icon});
}

List<ListMenu>menus=[
  const ListMenu(title: 'MENU-1',subtitle: 'SUB-1',icon: Icons.person),
  const ListMenu(title: 'MENU-2',subtitle: 'SUB-2',icon: Icons.person_add),
  const ListMenu(title: 'MENU-3',subtitle: 'SUB-3',icon: Icons.wifi),
];

class ListViewMenu extends StatelessWidget {
  const ListViewMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Menu"),
      ),
      body: Container(
        child: ListView.separated(
          padding: EdgeInsets.all(8.0),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Divider(color: Colors.lightGreen,);
          },
          separatorBuilder: (context, index) {
            return ListTile(
              title: Text('${menus[index].title}'),
              subtitle: Text("${menus[index].subtitle}"),
              leading: CircleAvatar(
                child: Icon(menus[index].icon),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                debugPrint(menus[index].title);
              },
            );
          },

        ),
      ),
    );
  }
}