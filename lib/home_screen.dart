import 'package:cached_network_image/cached_network_image.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nft_marketplace_ui/detail_screen.dart';
import 'package:nft_marketplace_ui/utils.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: FloatingNavbar(
          backgroundColor: HexColor("#231955"),
          borderRadius: 32,
          itemBorderRadius: 32,
          currentIndex: 0,
          items: [
            FloatingNavbarItem(icon: Icons.home),
            FloatingNavbarItem(icon: Ionicons.search_outline),
            FloatingNavbarItem(icon: Ionicons.wallet_outline),
            FloatingNavbarItem(icon: Ionicons.person_outline),
          ],
          onTap: (int val) {}
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: HexColor("#554994"),
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: HexColor("#231955"),
                        backgroundImage: const CachedNetworkImageProvider("https://i.seadn.io/gae/On1y3hwC09ZGhLvIgxq6sm-ftYZZoryqH9H0ICuHTGFtA33dGKLyK8bMdQv465hdn2nFYluOj3jjhh43Vm_4KpUjl7zIN8qzCD-K?w=500&auto=format"),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 6), child: Text("Your wallet")),
                        Row(
                          children: [
                            Image.asset("assets/near_icon.png",height: 28,width: 28,),
                            const Text("1000 NEAR",style: TextStyle(fontWeight: FontWeight.bold)),
                            const Icon(Icons.arrow_drop_down),
                          ],
                        )
                      ],
                    ),
                    const Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.more_vert),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Padding(padding: const EdgeInsets.only(left: 24), child: Text("Explore Collections",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: HexColor("#231955")))),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              SizedBox(
                height: 370,
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(imgUrl: index == 1 ? "https://i.seadn.io/gae/DjT1GfyyzdEC6Uii5THBBdcwwVz7uOuQqsKeYuZKYn5VV_6AeVooIaY7yCiz9z-_toUOFuOFoHG-4-2Da-ZpHc5Lan3xJTVxG6oB?w=500&auto=format" : "https://i.seadn.io/gae/K4MxsiAyNTM4adkjWPp76lP7L26NGwaI3xrX3AitIiwK434bwFCwcbXax4rg7JJL-yHaMhBHp0MD118G2MddmX0t9GmMEkwr5dKCrQ?w=500&auto=format",index: index,))),
                      child: Hero(
                        tag: index.toString(),
                        child: Container(
                          margin: EdgeInsets.only(right: 20, left: index == 0 ? 24 : 0),
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(width: 0.2,color: Colors.grey),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(index == 1 ? "https://i.seadn.io/gae/DjT1GfyyzdEC6Uii5THBBdcwwVz7uOuQqsKeYuZKYn5VV_6AeVooIaY7yCiz9z-_toUOFuOFoHG-4-2Da-ZpHc5Lan3xJTVxG6oB?w=500&auto=format" : "https://i.seadn.io/gae/K4MxsiAyNTM4adkjWPp76lP7L26NGwaI3xrX3AitIiwK434bwFCwcbXax4rg7JJL-yHaMhBHp0MD118G2MddmX0t9GmMEkwr5dKCrQ?w=500&auto=format"),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 70,
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.9),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(24),
                                  bottomRight: Radius.circular(24),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Dope Ape Bros",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: HexColor("#231955"))),
                                      const SizedBox(height: 8),
                                      Text("Owned by ED08CE",style: TextStyle(fontSize: 12,color: HexColor("#554994"))),
                                    ],
                                  ),
                              
                                 Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Highest Bid",style: TextStyle(fontSize: 12,color: HexColor("#554994"))),
                                    Row(
                                      children: [
                                        Image.asset("assets/near_icon.png",height: 28,width: 28,),
                                        Text("10 NEAR",style: TextStyle(fontWeight: FontWeight.bold,color: HexColor("#231955"))),
                                      ],
                                    ),
                                  ],
                                 ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Artists",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: HexColor("#231955"))),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey[200]
                      ),
                      child: const Center(child: Text("See All",style: TextStyle(color: Colors.grey))),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: List.generate(5, (index) => Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(width: 0.2,color: Colors.grey)
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: HexColor("#554994"),
                            backgroundImage: const CachedNetworkImageProvider("https://i.seadn.io/gcs/files/f3b11e36be14a5d31c75b19d03996fed.gif?w=500&auto=format"),
                          ),
                          const SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("RENGA",style: TextStyle(fontWeight: FontWeight.bold,color: HexColor("#231955"))),
                              const SizedBox(height: 4),
                              SizedBox(
                                width: 150,
                                child: Text(
                                  "A handcrafted collection of 10,000 characters developed by artist DirtyRobot. Each with their own identity to be discovered within the wider stories of RENGA. In its purest form, RENGA is the art of storytelling.",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 12,color: HexColor("#554994")),
                                )
                              )
                            ],
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 60,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                   boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider("https://img.seadn.io/files/8917cd9b7b307bc0d0c32dcb5f27b697.jpg?auto=format&fit=max&w=640"))
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}