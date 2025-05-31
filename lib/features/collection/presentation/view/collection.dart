import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ntitask/core/resources/theme_color.dart';

class Collection extends StatefulWidget {
  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<Collection>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isWatchlisted = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar:AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 20.sp,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(
        'Collection',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
    ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage('assets/Banner.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                          colors: [Colors.black54, Colors.transparent],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),

                  // Profile Avatar
                  Transform.translate(
                    offset: Offset(0, -50),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 4),
                        image: DecorationImage(
                          image: AssetImage('assets/Image.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  Transform.translate(
                    offset: Offset(0, -20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'kendrick lamar',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(
                              Icons.verified,
                              color: Colors.blue,
                              size: 20,
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            'Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                              height: 1.4,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildStatItem('10.0K', 'Items'),
                            buildStatItem('689.10K', 'Volume'),
                            buildStatItem('13.99', 'Floor Price'),
                          ],
                        ),
                        SizedBox(height: 24),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isWatchlisted = !isWatchlisted;
                              });
                            },
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 14),
                              decoration: BoxDecoration(
                                color: Color(0xFF9ACD32),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    isWatchlisted ? Icons.check : Icons.add,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    isWatchlisted ? 'Watchlisted' : 'Watchlist',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: TabBar(
                controller: _tabController,
                indicatorColor: Color(0xFF9ACD32),
                indicatorWeight: 3,
                labelColor: Color(0xFF9ACD32),
                unselectedLabelColor: Colors.grey[600],
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                tabs: [
                  Tab(text: "Item's"),
                  Tab(text: 'Activity'),
                ],
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.white,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 0.85,
                        ),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return buildNFTCard(index);
                        },
                      ),
                    ),
                    Center(
                      child: Text(
                        'Activity content goes here',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
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

  Widget buildStatItem(String value, String label) {
    return Row(
      children: [
        Image.asset(
          'assets/Dark Ethereum Logo.png',
          width: 24,
          height: 24,
        ),
        Column
          (
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildNFTCard(int index) {
    final List<Map<String, dynamic>> nftData = [
      {
        'id': '#0415',
        'name': 'Hypebeast Apes B',
        'photo': 'assets/Image.png',
      },
      {
        'id': '#0530',
        'name': 'Hypebeast Apes D',
        'photo': 'assets/Image.png',
      },
      {
        'id': '#0641',
        'name': 'Hypebeast Apes C',
        'photo': 'assets/Image.png',
      },
      {
        'id': '#0752',
        'name': 'Hypebeast Apes A',
        'photo': 'assets/Image.png',
      },
    ];

    final nft = nftData[index];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                      stops: [0.6, 1.0],
                    ).createShader(rect);
                  },
                  blendMode: BlendMode.darken,
                  child: Image.asset(
                    nft['photo'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 30,
            left: 12,
            child: Text(
              nft['id'],
              style: TextStyle(
                color:AppColors.primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Positioned(
            bottom: 12,
            left: 10,
            child: Text(
              nft['name'],
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}