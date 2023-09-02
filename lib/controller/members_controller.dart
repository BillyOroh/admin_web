import 'package:admin_web/models/members_model.dart';

class MembersController {
  List<Members> members = [
    Members(
        nama: 'John Minahasa',
        noTelepon: 089898754898,
        jabatan: 'Ketua',
        alamat: 'Tondano, Rinegetan'),
    Members(
        nama: 'Nontje Montana',
        noTelepon: 089845854568,
        jabatan: 'Sekertaris',
        alamat: 'Tondano, Tuutu')
  ];

  void addMember({
    required String nama,
    required double noTelepon,
    required String jabatan,
    required String alamat,
  }) {
    Members member = Members(
      nama: nama,
      noTelepon: noTelepon,
      jabatan: jabatan,
      alamat: alamat,
    );
    members.add(member);
  }
}
