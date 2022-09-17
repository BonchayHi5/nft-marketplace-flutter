import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nft_marketplace_ui/utils.dart';

class DetailScreen extends StatelessWidget {
  final String imgUrl;
  final int index;
  const DetailScreen({Key? key,required this.imgUrl, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: CustomBtn(btnText: "Place a Bid", onTap: (){}),
      ),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    circularButton(Ionicons.chevron_back),
                    Text("Dope Bored Ape".toUpperCase(), style: TextStyle(fontSize: 18,color: HexColor("#231955"),fontWeight: FontWeight.bold)),
                    circularButton(Ionicons.heart_outline),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Hero(
                  tag: index.toString(),
                  child: Container(
                    height: 350,
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
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(imgUrl))
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: HexColor("#554994"),
                      backgroundImage: const CachedNetworkImageProvider("https://i.seadn.io/gcs/files/f3b11e36be14a5d31c75b19d03996fed.gif?w=500&auto=format"),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("RENGA",style: TextStyle(fontWeight: FontWeight.bold,color: HexColor("#231955"),fontSize: 18)),
                        const SizedBox(height: 4),
                        SizedBox(
                          width: 150,
                          child: Text(
                            "By RENGA-inc",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12,color: HexColor("#554994"),fontWeight: FontWeight.w600),
                          )
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  style: TextStyle(color: HexColor("#554994"))
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Highest Bid Placed",  style: TextStyle(color: HexColor("#554994"))),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                          decoration: BoxDecoration(
                             color: Colors.grey[200],
                             borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                            children: [
                              Image.asset("assets/near_icon.png",height: 28,width: 28,),
                              Text("10 NEAR",style: TextStyle(fontWeight: FontWeight.bold,color: HexColor("#231955"))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Auction Ending In",  style: TextStyle(color: HexColor("#554994"))),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                          decoration: BoxDecoration(
                             color: Colors.grey[200],
                             borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                            children: [
                              
                              // Image.asset("assets/near_icon.png",height: 28,width: 28,),
                              Text("20h : 35m : 08s",style: TextStyle(fontWeight: FontWeight.bold,color: HexColor("#231955"))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
                
          
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget circularButton(IconData icon) {
    return Container(
      height: 40,
      width: 40,
      // padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200]
      ),
      child: Center(child: Icon(icon)),
    );
  }
}



class CustomBtn extends StatelessWidget {
  final String btnText;
  final void Function() onTap;
  const CustomBtn({Key? key,required this.btnText,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color:  HexColor("#231955"),
          borderRadius: BorderRadius.circular(16),
         
        ),
        child: Center(child: Text(btnText, style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.white))),
      ),
    );
  }
}
