import 'package:flutter/material.dart';
import 'off_campus.dart';

class HootLoot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 21, 255),
          title: Text("Off-Campus Locations"),
        ),
        body: OffList(kStore)
      );
  }

}

class OffList extends StatelessWidget {

  final List<OffCampus> _store;

  OffList(this._store);

  @override
  Widget build(BuildContext context) {
    return ListView(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          
          children: _buildOffList()
          
        );
  }

  List<_OffListItem> _buildOffList() {
    return _store.map((store) => _OffListItem(store))
                    .toList();
  }

}

class _OffListItem extends ListTile {

  _OffListItem(OffCampus store) :
    super(
      title : Text(store.storeName),
      subtitle: Text(store.address),
      trailing: Text(store.phone),
      leading: CircleAvatar(
        child: Text(store.storeName[0])
      )
    );

}
