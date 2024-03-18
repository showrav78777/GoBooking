import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gobooking/components/travelcard.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _GoBooking(),
    );
  }
}

class _GoBooking extends StatefulWidget {
  const _GoBooking({Key? key}) : super(key: key);

  @override
  _GoBookingState createState() => _GoBookingState();
}

class _GoBookingState extends State<_GoBooking> {
  List<String> urls = [
    "https://resofrance.eu/wp-content/uploads/2018/09/hotel-luxe-mandarin-oriental-paris.jpg",
    "https://lh3.googleusercontent.com/proxy/wTkD1USQGpbVXzZFNLCZBDCL1OQS1bFzSgPa44cHwiheaY9DpoqMdNjBgEJcCIZSQeSkCO-2q5gfuhtnuz4cDhtpansOcWos093YsGvogdQqWnpWlA",
    "https://images.squarespace-cdn.com/content/v1/57d5245815d5db80eadeef3b/1558864684068-1CX3SZ0SFYZA1DFJSCYD/ke17ZwdGBToddI8pDm48kIpXjvpiLxnd0TWe793Q1fcUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcZwk0euuUA52dtKj-h3u7rSTnusqQy-ueHttlzqk_avnQ5Fuy2HU38XIezBtUAeHK/Marataba+Safari+lodge",
    "https://lh3.googleusercontent.com/proxy/ovCSxeucYYoir_rZdSYq8FfCHPeot49lbYqlk7nXs7sXjqAfbZ2uw_1E9iivLT85LwIZiGSnXuqkdbQ_xKFhd91M7Y05G94d",
    "https://q-xx.bstatic.com/xdata/images/hotel/max500/216968639.jpg?k=a65c7ca7141416ffec244cbc1175bf3bae188d1b4919d5fb294fab5ec8ee2fd2&o=",
    "https://hubinstitute.com/sites/default/files/styles/1200x500_crop/public/2018-06/photo-1439130490301-25e322d88054.jpeg?h=f720410d&itok=HI5-oD_g",
    "https://cdn.contexttravel.com/image/upload/c_fill,q_60,w_2600/v1549318570/production/city/hero_image_2_1549318566.jpg",
    "https://www.shieldsgazette.com/images-i.jpimedia.uk/imagefetch/https://jpgreatcontent.co.uk/wp-content/uploads/2020/04/spain.jpg",
    "https://www.telegraph.co.uk/content/dam/Travel/2017/November/tunisia-sidi-bou-GettyImages-575664325.jpg",
    "https://lp-cms-production.imgix.net/features/2018/06/byrsa-hill-carthage-tunis-tunisia-2d96efe7b9bf.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 31, 31),
    appBar:  AppBar(

  elevation: 0.0,
  backgroundColor: Color.fromARGB(255, 91, 91, 91),
  title: Row(
    children: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      const Expanded(
        child: Text(
          'GoBooking',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center, // Aligns the text horizontally in the center
        ),
      ),
    ],
  ),
  actions: [
    IconButton(
      onPressed: () {
        // notification logic 



      },
      icon: const Icon(
        Icons.notifications,
        color: Colors.white,
      ),
    ),
    
  ],


),


      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            const SizedBox(height: 20.0),
        

           // Spacer(),
        

             const SizedBox(height: 30.0),
          DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    const TabBar(
                      indicatorColor: Color.fromRGBO(0, 60, 150, 1),
                      unselectedLabelColor: Color.fromARGB(255, 255, 252, 252),
                      labelColor: Color.fromARGB(255, 255, 255, 255),
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(text: "Trending"),
                        Tab(text: "Promotion"),
                        Tab(text: "Favorites")
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: TabBarView(
                        children: [
                          //Now let's create our first tab page
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              //Now let's add and test our first card
                              travelCard(urls[0], "Luxury Hotel", "Cox's Bazar", 3),
                              travelCard(urls[5], "Plaza Hotel", "Cox's Bazar", 4),
                              travelCard(urls[2], "Safari Hotel", "Bandarban", 5),
                            ],
                          ),
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              //Here you can add whatever you want
                              travelCard(urls[6], "Visit Rome", "Dhaka", 4),
                              travelCard(urls[8], "Visit Sidi bou Said",
                                  "Tunisia", 4),
                            ],
                          ),
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color(0xFFB7B7B7),
        selectedItemColor:Color.fromARGB(255, 50, 51, 51),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "favorite",
          ),

           BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "search",
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
