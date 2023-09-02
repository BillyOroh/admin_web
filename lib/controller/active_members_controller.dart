import 'package:admin_web/models/active_members_model.dart';

class ActiveMembersController {
  List<ActiveMembers> activeMembers = [];

  void addActiveMember({
    required String nama,
    required double noTelepon,
    required String jabatan,
    required String alamat,
  }) {
    ActiveMembers activeMember = ActiveMembers(
      nama: nama,
      noTelepon: noTelepon,
      jabatan: jabatan,
      alamat: alamat,
    );
    activeMembers.add(activeMember);
  }
}
