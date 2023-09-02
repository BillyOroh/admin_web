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
              height: 120,
              width: 900,
              child: ListView.builder(
                  itemCount: membersController.members.length,
                  itemBuilder: (contex, index) {
                    final Members member = membersController.members[index];
                    return ListTile(
                        leading: const Icon(Icons.person),
                        title: Wrap(
                          spacing: 200.0,
                          children: [
                            Text(member.nama),
                            Text(member.jabatan),
                            Text(member.alamat),
                          ],
                        ),
                        subtitle: Text("${member.noTelepon}"),
                        trailing: const Wrap(
                          spacing: 12.0,
                          children: [
                            Icon(Icons.check_circle_outline),
                            Icon(Icons.remove_circle_outline),
                          ],
                        ));
                  }),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
