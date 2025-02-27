import 'package:flutter/material.dart';

class Hotell extends StatefulWidget {
  const Hotell({super.key});

  @override
  State<Hotell> createState() => _HotelState();
}

class _HotelState extends State<Hotell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF456543),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
            padding: EdgeInsets.only(top: 100),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://media.istockphoto.com/id/2175438682/photo/beautiful-businesswoman-greeting-her-female-business-partner.webp?a=1&b=1&s=612x612&w=0&k=20&c=WK9FvdBhsmZFbk70KwToBJmm1H2ettB3EP77w_eCVJ0=",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "What kind of hotel you need?",
                  style: TextStyle(
                    color: Colors.deepOrange.shade700,
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 55),
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFF456543),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF456543),
                      label: Icon(Icons.search, size: 20, color: Colors.grey),
                      border: InputBorder.none,
                      hintText: "Search for hotels...",
                      hintStyle: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Best Hotels",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                hotel(
                  "https://plus.unsplash.com/premium_photo-1681338224373-9669c2497c05?w=500&auto=format&fit=crop&q=60",
                  "Hotel 1",
                ),
                hotel(
                  "https://images.unsplash.com/photo-1661777997156-ccac1c9876e3?w=500&auto=format&fit=crop&q=60",
                  "Hotel 2",
                ),
                hotel(
                  "https://images.unsplash.com/photo-1636847782599-d4b10f4811d1?w=500&auto=format&fit=crop&q=60",
                  "Hotel 3",
                ),
                hotel(
                  "https://images.unsplash.com/photo-1623334663819-1bb79f9f03f8?w=500&auto=format&fit=crop&q=60",
                  "Hotel 4",
                ),
                hotel(
                  "https://images.unsplash.com/photo-1700639699341-ba1aa58154a3?w=500&auto=format&fit=crop&q=60",
                  "Hotel 5",
                ),
                hotel(
                  "https://media.istockphoto.com/id/2187851521/photo/modern-living-room-design-with-open-dining-area-digitally-generated.webp?a=1&b=1&s=612x612&w=0&k=20&c=3KyOct_y7GaCAe70q85wiuIuL79h310f5oJbWNNBuUA=",
                  "Hotel 6",
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 200,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                hotel(
                  "https://plus.unsplash.com/premium_photo-1661963123153-5471a95b7042?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8THV4JTIwaG90ZWwlMjBpbWFnZXxlbnwwfHwwfHx8MA%3D%3D",
                  "Lux Hotel 1",
                ),
                hotel(
                  "https://media.istockphoto.com/id/636948050/photo/luxury-construction-hotel-swimming-pool.webp?a=1&b=1&s=612x612&w=0&k=20&c=88lnRBc-HPcEi_M_MzRxZNpIz8KYOAcyr9Todraj9hY=",
                  "Lux Hotel 2",
                ),
                hotel(
                  "https://media.istockphoto.com/id/2110310187/photo/luxury-tropical-pool-villa-at-dusk.webp?a=1&b=1&s=612x612&w=0&k=20&c=3wDvy4YueLfVHI9Kycl7J-nYKJsxiJL1rpBQ-ZS0hTI=",
                  "Lux Hotel 3",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget hotel(String image, String text) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 150,
      width: 300,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
        color: Colors.yellow,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          margin: EdgeInsets.only(left: 10),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.orange.shade700,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
