import 'package:flutter/material.dart';

class Contact {
  Contact({@required this.name, @required this.email});
  final String name;
  final String email;
}

List<Contact> _contacts = [
  Contact(name: 'Isa Tusa', email: 'isa.tusa@me.com'),
  Contact(name: 'Racquel Ricciardi', email: 'racquel.ricciardi@me.com')
];

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Container(
        child: _ContactList(),
      ),
    );
  }
}

class _ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _contacts.length,
      itemBuilder: (BuildContext context, int index) {
        Contact contact = _contacts[index];
        return ListTile(
          title: Text(contact.name),
          subtitle: Text(contact.email),
          leading: CircleAvatar(child: Text(contact.name[0])),
        );
      },
    );
  }
}