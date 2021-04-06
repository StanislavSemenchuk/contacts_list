import 'package:contacts_list/contact.dart';
import 'package:flutter/material.dart';

class ContactListItem extends StatefulWidget {
  ContactListItem({Key key, this.contact}) : super(key: key);

  final Contact contact;

  @override
  _ContactListItemState createState() => _ContactListItemState(contact);
}

class _ContactListItemState extends State<ContactListItem> {
  Contact _contact;

  _ContactListItemState(Contact contact) {
    this._contact = contact;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: IconButton(
                  icon: Icon(Icons.star_border),
                  onPressed: () {},
                ),
              ),
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  child:
                      _contact.avatarPath != null && _contact.avatarPath != ''
                          ? Text(_contact.name[0])
                          : Text(_contact.name[1]),
                ),
              ),
              Expanded(
                flex: 7,
                child: ListTile(
                  title: Text(_contact.name),
                  subtitle: Text(_contact.aditionalInfo),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
