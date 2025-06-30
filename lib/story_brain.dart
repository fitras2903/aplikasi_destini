//TODO: Step 6 - import story.dart
import 'story.dart';

//TOTO: Step 5 - membuat class StoryBrain
class StoryBrain {
  //TODO: Step 7 - membuat storyData sebagai private properties
  final List<Story> _storyData = [
    Story(
      storyTitle:
          'Kamu sedang menyusuri lorong kampus saat melihat pintu perpustakaan lama yang katanya sudah ditutup bertahun-tahun. Aneh, pintunya terbuka sedikit. Mau masuk?',
      choice1: 'Masuk pelan-pelan, siapa tahu ada buku langka.',
      choice2: 'Tutup lagi pintunya. Nggak mau ikut-ikutan hal aneh.',
    ),
    Story(
      storyTitle:
          'Di dalam, lampunya remang dan debu di mana-mana. Tiba-tiba kamu mendengar suara buku jatuh di ujung rak. Ada catatan kecil tertempel: "Buka halaman 77".',
      choice1: 'Ambil bukunya dan buka halaman 77.',
      choice2: 'Abaikan. Cari jalan keluar sekarang juga.',
    ),
    Story(
      storyTitle:
          'Halaman 77 berisi peta lantai bawah tanah perpustakaan yang tidak pernah diumumkan ke publik. Kamu menemukan pintu rahasia di balik rak!',
      choice1: 'Masuk ke ruang bawah tanah. Ini terlalu menarik!',
      choice2: 'Nope! Simpan petanya dan pergi.',
    ),
    Story(
      storyTitle:
          'Kamu buru-buru keluar dari perpustakaan. Tapi beberapa hari kemudian, kamu mulai menerima email misterius bertuliskan kutipan dari buku-buku yang belum pernah kamu baca...',
      choice1: 'Mulai dari awal',
      choice2: '',
    ),
    Story(
      storyTitle:
          'Kamu mengikuti peta ke ruang bawah tanah dan menemukan arsip tua, catatan sejarah kampus yang mengungkap proyek rahasia tahun 1978. Kamu catat semuanya.',
      choice1: 'Mulai dari awal',
      choice2: '',
    ),
    Story(
      storyTitle:
          'Kamu membawa petanya ke dosen pembimbing. Dia kaget, lalu berkata pelan: "Saya kira tidak ada mahasiswa yang akan menemukannya lagi..."',
      choice1: 'Mulai dari awal',
      choice2: '',
    ),
  ];

  int _storyNumber = 0;

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
