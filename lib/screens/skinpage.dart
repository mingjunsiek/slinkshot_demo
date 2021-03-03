import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:slinkshot_demo/models/skin.dart';
import 'package:slinkshot_demo/screens/skin_in_season.dart';
import 'package:slinkshot_demo/utils/constant.dart';
import 'package:slinkshot_demo/utils/size_config.dart';
import 'package:dropdown_search/dropdown_search.dart';

class SkinPage extends StatelessWidget {
  const SkinPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: getProportionateScreenHeight(45),
            child: DropdownSearch<Skin>(
              dropdownSearchDecoration: InputDecoration(
                labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
                ),
              ),
              mode: Mode.BOTTOM_SHEET,
              label: "Search",
              onFind: (String filter) => getData(filter),
              itemAsString: (Skin u) => u.name,
              onChanged: (Skin data) => print(data),
              showSearchBox: true,
              searchBoxDecoration: InputDecoration(
                labelText: 'Search Skins',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            height: getProportionateScreenHeight(60),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '700',
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(20)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      defaultCurrencyUrl,
                      width: getProportionateScreenWidth(20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Owned Slink Coins')
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SkinInSeason(
                    season: 4,
                  ),
                  SkinInSeason(
                    season: 3,
                  ),
                  SkinInSeason(
                    season: 2,
                  ),
                  SkinInSeason(
                    season: 1,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
