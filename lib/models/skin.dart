import 'package:flutter/material.dart';
import 'package:slinkshot_demo/utils/constant.dart';

class Skin {
  final String name;
  final String imageUrl;
  final int price;
  final int season;
  Skin({
    @required this.name,
    this.imageUrl = defaultImageUrl,
    @required this.price,
    @required this.season,
  });
}

List<Skin> skinList = [
  Skin(name: 'Freya', price: 600, season: 4),
  Skin(name: 'Theowin', price: 900, season: 4),
  Skin(name: 'Tritos', price: 600, season: 4),
  Skin(name: 'Zymir', price: 1200, season: 4),
  Skin(name: 'Assyria', price: 900, season: 3),
  Skin(name: 'Ixtori', price: 1200, season: 3),
  Skin(name: 'Khizl', price: 600, season: 3),
  Skin(name: 'Silumo', price: 300, season: 3),
  Skin(name: 'Che\' Oti', price: 900, season: 2),
  Skin(name: 'Elbion', price: 600, season: 2),
  Skin(name: 'Kyana', price: 600, season: 2),
  Skin(name: 'Vania', price: 1200, season: 2),
  Skin(name: 'Amax', price: 600, season: 1),
  Skin(name: 'Anne', price: 300, season: 1),
  Skin(name: 'Big Shot', price: 300, season: 1),
  Skin(name: 'Crow', price: 900, season: 1),
];

Map<int, List<Skin>> skinMap = {
  1: [
    Skin(name: 'Amax', price: 600, season: 1),
    Skin(name: 'Anne', price: 300, season: 1),
    Skin(name: 'Big Shot', price: 300, season: 1),
    Skin(name: 'Crow', price: 900, season: 1),
  ],
  2: [
    Skin(name: 'Che\' Oti', price: 900, season: 2),
    Skin(name: 'Elbion', price: 600, season: 2),
    Skin(name: 'Kyana', price: 600, season: 2),
    Skin(name: 'Vania', price: 1200, season: 2),
  ],
  3: [
    Skin(name: 'Assyria', price: 900, season: 3),
    Skin(name: 'Ixtori', price: 1200, season: 3),
    Skin(name: 'Khizl', price: 600, season: 3),
    Skin(name: 'Silumo', price: 300, season: 3),
  ],
  4: [
    Skin(name: 'Freya', price: 600, season: 4),
    Skin(name: 'Theowin', price: 900, season: 4),
    Skin(name: 'Tritos', price: 600, season: 4),
    Skin(name: 'Zymir', price: 1200, season: 4),
  ]
};

Future<List<Skin>> getData(String filter) async {
  return skinList.where((element) => element.name.contains(filter)).toList();
}
