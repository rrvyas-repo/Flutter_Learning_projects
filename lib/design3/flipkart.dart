import 'package:flutter/material.dart';

class FlipKart extends StatelessWidget {
  const FlipKart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 115,
                width: double.infinity,
                color: Colors.blue,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.menu,
                            size: 30,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Flipkart',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 20),
                                ),
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Explore',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' Plus',
                                        style: TextStyle(
                                          color: Colors.yellow,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.notification_important,
                            color: Colors.white,
                            size: 32,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.public,
                            color: Colors.white,
                            size: 32,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 20, left: 10, right: 10),
                      height: 40,
                      padding: const EdgeInsets.only(left: 10),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          const Expanded(
                            child: Text(
                              'Search for Products, Brands and More',
                              style: TextStyle(
                                color: Colors.grey,
                                //  fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(4),
                                  bottomRight: Radius.circular(4)),
                            ),
                            child: Icon(
                              Icons.mic_rounded,
                              color: Colors.blue.shade500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.menu,
                          size: 35,
                          color: Colors.blue,
                        ),
                        Text(
                          'All Categories',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.ice_skating,
                          size: 35,
                          color: Colors.red,
                        ),
                        Text(
                          'Essentials',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.local_offer,
                          size: 35,
                          color: Colors.deepPurple,
                        ),
                        Text(
                          'Offer Zone',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.local_grocery_store,
                          size: 35,
                          color: Colors.orange,
                        ),
                        Text(
                          'Grocery',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.mobile_friendly,
                          size: 35,
                          color: Colors.brown,
                        ),
                        Text(
                          'Mobiles',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.electric_bike,
                          size: 35,
                          color: Colors.green,
                        ),
                        Text(
                          'Electics',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://www.cmarix.com/blog/wp-content/uploads/2021/12/ezgif.com-gif-maker-1-1024x768.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 80,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://png.pngtree.com/thumb_back/fw800/back_pic/04/33/94/46584650733bc61.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Card(
                  color: Colors.amber.shade800,
                  elevation: 15,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 40, top: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'EXTRA \$30 OFF',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'ON FASHION',
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30, top: 22),
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade600,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              'Shop Now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discounts for You',
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blue.shade900,
                        child: const Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 210,
                          width: 180,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://www.cmarix.com/blog/wp-content/uploads/2021/12/ezgif.com-gif-maker-1-1024x768.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Text(
                          'Men\'s Mufflers',
                          style: TextStyle(
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Min 60 % Off',
                          style: TextStyle(
                              color: Colors.green.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 210,
                          width: 180,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://www.cmarix.com/blog/wp-content/uploads/2021/12/ezgif.com-gif-maker-1-1024x768.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Text(
                          'Headphones',
                          style: TextStyle(
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Min 50 % Off',
                          style: TextStyle(
                              color: Colors.green.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 210,
                          width: 180,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://www.cmarix.com/blog/wp-content/uploads/2021/12/ezgif.com-gif-maker-1-1024x768.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Text(
                          'Men\'s Mufflers',
                          style: TextStyle(
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Min 60 % Off',
                          style: TextStyle(
                              color: Colors.green.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 210,
                          width: 180,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://www.cmarix.com/blog/wp-content/uploads/2021/12/ezgif.com-gif-maker-1-1024x768.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Text(
                          'Headphones',
                          style: TextStyle(
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Min 50 % Off',
                          style: TextStyle(
                              color: Colors.green.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
