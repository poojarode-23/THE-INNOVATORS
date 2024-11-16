import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_app/main.dart';
import 'package:healthcare_app/productDetailPage.dart';


class Pharmacy extends StatefulWidget {
  const Pharmacy({super.key});

  @override
  State<Pharmacy> createState() => _Pharmacy();
}

class _Pharmacy extends State<Pharmacy> {
  void navigateToProductDetail(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProductDetailPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Pharmacy",
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_rounded),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
             Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => const Thirdscreen()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  focusColor: Colors.teal,
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  hintText: "Search drugs, category...",
                  hintStyle: GoogleFonts.poppins(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.teal),
                  ),
                  fillColor: Color.fromARGB(255, 184, 219, 213),
                ),
              ),
            ),
            const ImageCarousel(),  
           const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color:const Color.fromRGBO(206, 217, 237, 0.902),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Order quickly with Prescription",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Upload Prescription",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigateToProductDetail(context);
                    },
                    child: Image.asset(
                      "assets/Medicines.jpg",
                      height: 160,
                      width: 160,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Must Have",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  productCard("Everherb Jamun Juice", "250Gms", "\$215.46", "assets/a.jpeg"),
                  productCard("Healthy Seed Mix", "200Gms", "\$219.45", "assets/b.jpeg"),
                  productCard("Hot Water Bag", "1pc", "\$209.40", "assets/c.jpeg"),
                  productCard("Tongue Cleaner", "1pc", "\$84.15", "assets/d.jpeg"),
                  productCard("Nail Cutter", "1pc", "\$49.45", "assets/e.jpeg"),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Personal care",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  productCard("Uv SunScreen", "250Gms", "\$500.46", "assets/2.jpeg"),
                  productCard(" Moisturizing Lotion", "200Gms", "\$219.45", "assets/3.jpeg"),
                  productCard("Roasted Seed", "1pc", "\$209.40", "assets/4.jpeg"),
                  productCard("Pain Relief Oil", "1pc", "\$84.15", "assets/1.webp"),
                  productCard(" Skin Cleanser", "1pc", "\$49.45", "assets/5.jpeg"),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Elder Care",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  productCard("Liveasy Adult Diape", "250Gms", "\$215.46", "assets/aaa.jpeg"),
                  productCard("Pain Relief oil", "200Gms", "\$219.45", "assets/bbb.jpeg"),
                  productCard("Calcium Magnesium ", "1pc", "\$209.40", "assets/ccc.jpeg"),
                  productCard("Iodex Pain Relief Balm", "1pc", "\$84.15", "assets/ddd.jpeg"),
                  productCard("Omnigel Gel", "1pc", "\$49.45", "assets/eee.jpeg"),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Must Have",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  
                  productCard("Septonsil Drops", "1pc", "\$140.45", "assets/11.jpeg"),
                  productCard(" Diabetes Drops", "1pc", "\$459.45", "assets/12.jpeg"),
                  productCard(" Calcarea Fluoricum ", "1pc", "\$1000.45", "assets/13.jpeg"),
                  productCard("Hemorrhoidal Drop", "1pc", "\$500.45", "assets/14.jpeg"),
                  productCard("Homeopathic Medicine", "1pc", "\$100.45", "assets/15.jpeg"),
                ],
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Widget productCard(String name, String size, String price, String imagePath, {String? oldPrice}) {
    return Container(
      width: 140,  // Set a fixed width for each product card
      height: 200,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color.fromARGB(255, 202, 209, 208)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const ProductDetailPage();
              }));
            },
            child: Image.asset(
              imagePath,
              height: 100, // Increased image height to better fit the layout
              width: 120,  // Increased width to make image more prominent
              fit: BoxFit.cover, // Ensures the image fits within the container
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            size,
            style: GoogleFonts.poppins(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (oldPrice != null)
                    Text(
                      oldPrice,
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  Text(
                    price,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// Image Carousel Widget
class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  final List<String> _images = [
    'assets/x.jpg',
    'assets/y.jpg',
    'assets/z.jpg',
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < _images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 36, 172, 151),
          ),
        ),
        height: 150,
        child: PageView.builder(
          controller: _pageController,
          onPageChanged: (index) => _currentPage = index,
          itemCount: _images.length,
          itemBuilder: (context, index) {
            return Image.asset(
              _images[index],
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}