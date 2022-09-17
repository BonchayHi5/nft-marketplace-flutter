import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:nft_marketplace_ui/home_screen.dart';
import 'package:nft_marketplace_ui/utils.dart';
import 'package:slider_button/slider_button.dart';


class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      image: const DecorationImage(image: CachedNetworkImageProvider("https://i.seadn.io/gae/e7wtk3pF7-Gx49cyvm4lx0pfZxg1SmSr-6poo2DYlj8bYF8gO2obVhzXdOQYXGXmjlF9ypT2komcIJY980VRZ3dobvMKSReFUyinSA?w=500&auto=format"))
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      image: const DecorationImage(image: CachedNetworkImageProvider("https://i.seadn.io/gae/wo8VZDy6Sq9RTJWnii2PFM1eE0AvXkKP5GtZBoj9o33BhBNZf8Ny2HR9gE1Uc93zSbfC4FWhHbGqO5YdiL9gvQ3ttd2gJierTV9X?w=500&auto=format"))
                    ),
                    
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(24),
                        bottomLeft: Radius.circular(24),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      image: const DecorationImage(image: CachedNetworkImageProvider("https://i.seadn.io/gae/485xqemrEMWMzWxWBCkEuDOMe5tVyN4CtWoWMlrlsZpHIQNrxe-GPos8YLqh-Q9F6QTGTTtvhNVR2nBAk0m1SWlwtXC5Rfu2Zx_uLw?w=500&auto=format"))
                    ),
                    
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(24),
                        bottomLeft: Radius.circular(24),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      image: const DecorationImage(image: CachedNetworkImageProvider("https://i.seadn.io/gae/bFqgO6eK_UspF-acB5f5Hy5HzoRoRCpZLOgWEKXOl4aTIeZUYXlzdwZLyaO4oKVKsGj7EWeMrH6aaMyHFuDN1M4XFTTZzx_wrfX6iuM?w=500&auto=format"))
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      image: const DecorationImage(image: CachedNetworkImageProvider("https://i.seadn.io/gae/q_-xRBmlAVdhxwLvWx2JbjwO4JqqR0OyPJt4oQA8cpfY-xdZUb7373xgbpSslOopAKUTK23V5FP3lXiJJ2ePAhbfOtVrexGdXkVHmw?w=500&auto=format"),fit: BoxFit.cover)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discover Rare Collections of Art \n& NFTs",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: HexColor("#231955"))),
                        const SizedBox(height: 24),
                        Text("Digital marketplace for crypto collectibles\nand non-fungibke tokens NFTs",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: HexColor("#554994"))),
                      ],
                    ),
                    SliderButton(
                      height: 60,
                      width: double.infinity,
                      radius: 16,
                      buttonColor: HexColor("#231955"),
                      backgroundColor: Colors.grey[200]!,
                      highlightedColor: Colors.white,
                      shimmer: false,
                      vibrationFlag: false,
                      buttonSize: 60,
                      dismissible :false,
                      alignLabel: Alignment.center,
                      label: const Text("Get Started",style: TextStyle(color: Color(0xff4a4a4a),fontWeight: FontWeight.w500,fontSize: 16)),
                      icon: const Center(child: Icon(Icons.arrow_forward_ios,color: Colors.white)),
                      action: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                        ///Do something here OnSlide
                      },
                    ),
                  ],
                ),
              ),
            ),
          
          ],
        ),
      ),
    );
  }


  Widget itemCard() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        color: Colors.blue
      ),
      child: const Center(
        child: Text("0"),
      ),
    );
  }
}