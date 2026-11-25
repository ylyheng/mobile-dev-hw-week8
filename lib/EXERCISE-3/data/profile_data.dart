import 'package:flutter/material.dart';

import '../model/profile_tile_model.dart';

ProfileData lyhengProfile = ProfileData(
  name: "Lyheng",
  position: "Year3 Student",
  avatarUrl: 'lib/EXERCISE-3/assets/a.png',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.email, title: "Mail", value: "lyheng.y@student.cadt.edu.kh"),
  ],
);
