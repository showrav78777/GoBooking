import 'package:flutter/material.dart';

Widget travelCard(
  String imgUrl,
  String hotelName,
  String location,
  int rating,
) {
  return Card(
    margin: const EdgeInsets.only(right: 22.0),
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    elevation: 0.0,
    child: InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.cover,
            scale: 2.0,
          ),
        ),
        width: 200.0,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  //this loop will allow us to add as many star as the rating
                  for (var i = 0; i < rating; i++)
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(254, 140, 104, 1),
                    ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      location,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
