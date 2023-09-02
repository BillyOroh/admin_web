import 'package:admin_web/models/members_model.dart';
import 'package:flutter/material.dart';
import 'package:admin_web/controller/members_controller.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({
    super.key,
  });

  @override
  State<MembersPage> createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  final MembersController membersController = MembersController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30.0),
            const Text('Members', style: TextStyle(fontSize: 30.0)),
            const SizedBox(height: 20.0),
            const Text('Confirm new member'),
            SizedBox(
              height: 300,
              width: 700,
              child: ListView.builder(
                  itemCount: membersController.members.length,
                  itemBuilder: (contex, index) {
                    final Members member = membersController.members[index];
                    return ListTile(
                      leading: const Icon(Icons.person),
                      title: Text(member.nama),
                      subtitle: Text("${member.noTelepon}"),
                      trailing: Text(member.alamat),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
