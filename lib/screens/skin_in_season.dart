import 'package:flutter/material.dart';
import 'package:slinkshot_demo/models/skin.dart';
import 'package:slinkshot_demo/utils/constant.dart';
import 'package:slinkshot_demo/utils/size_config.dart';

class SkinInSeason extends StatelessWidget {
  final int season;
  const SkinInSeason({
    Key key,
    this.season,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(500),
      child: Column(
        children: [
          Text("Season $season"),
          Expanded(
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: skinMap[season].length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return InkResponse(
                  child: Column(
                    children: [
                      Spacer(),
                      Text(skinMap[season][index].name),
                      Spacer(),
                      Image.asset(
                        skinMap[season][index].imageUrl,
                        width: getProportionateScreenWidth(65),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            defaultCurrencyUrl,
                            width: getProportionateScreenWidth(15),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(skinMap[season][index].price.toString())
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  onTap: () {
                    print('tap');
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
