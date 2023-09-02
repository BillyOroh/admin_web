import 'package:admin_web/models/members_model.dart';
import 'package:flutter/material.dart';
import 'package:admin_web/controller/members_controller.dart';
import 'package:admin_web/models/active_members_model.dart';
import 'package:admin_web/controller/active_members_controller.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({
    super.key,
  });

  @override
  State<MembersPage> createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  final MembersController membersController = MembersController();
  final ActiveMembersController activeMembersController =
      ActiveMembersController();

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
                    return MyListTile(
                      title: [
                        Text(member.nama),
                        Text(member.jabatan),
                        Text(member.alamat),
                      ],
                      subtitle: Text("${member.noTelepon}"),
                      trailing: [
                        IconButton(
                          icon: const Icon(Icons.check_circle_outline),
                          onPressed: () {
                            setState(() {
                              activeMembersController.addActiveMember(
                                  nama: member.nama,
                                  noTelepon: member.noTelepon,
                                  jabatan: member.jabatan,
                                  alamat: member.alamat);
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.remove_circle_outline),
                          onPressed: () {},
                        ),
                      ],
                    );
                  }),
            ),
            const Divider(),
            const Text('Active member'),
            const SizedBox(height: 20.0),
            SizedBox(
              height: 300,
              width: 900,
              child: ListView.builder(
                  itemCount: activeMembersController.activeMembers.length,
                  itemBuilder: (contex, index) {
                    final ActiveMembers activeMember =
                        activeMembersController.activeMembers[index];
                    return MyListTile(
                      title: [
                        Text(activeMember.nama),
                        Text(activeMember.jabatan),
                        Text(activeMember.alamat),
                      ],
                      subtitle: Text("${activeMember.noTelepon}"),
                      trailing: const [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });

  final List<Widget> title;
  final Widget subtitle;
  final List<Widget> trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person),
      title: Wrap(
        spacing: 100.0,
        children: title,
      ),
      subtitle: subtitle,
      trailing: Wrap(
        spacing: 12.0,
        children: trailing,
      ),
    );
  }
}
