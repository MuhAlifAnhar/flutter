import 'package:flutter/material.dart';

class Latihan {
  void cetakNama() {
    String namasaya = "Muh. Alif Anhar";
    print("Nama Saya: $namasaya");
  }
}

class Pemanggil {
  void memanggilLatihan() {
    Latihan latihansaya = Latihan();
    latihansaya.cetakNama();
  }
}

void main() {
  Pemanggil pemanggilan = Pemanggil();
  pemanggilan.memanggilLatihan();
}
