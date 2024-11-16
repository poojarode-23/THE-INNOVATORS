import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_app/homescreen.dart';
import 'package:healthcare_app/pharmacy.dart';
import 'package:healthcare_app/productDetailPage.dart';
import 'package:healthcare_app/productListingPage.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentPage();
}

class _PaymentPage extends State<Paymentpage> {
  void navigateToProductDetail(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ProductDetailPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Payment",
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Payment Method",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              _paymentMethodItem(context, "assets/visa.jpg"),
              _paymentMethodItem(context, "assets/mastercard.png"),
              _paymentMethodItem(context, "assets/UPI.jpeg"),
              const SizedBox(height: 20), // Replace Spacer with a fixed height to prevent layout issues
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Pharmacy()),
                    );
                    // Add your payment processing code here
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Payment processed successfully!',
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Pay Now",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
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

  Widget _paymentMethodItem(BuildContext context, String imagePath) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 40, // Set a fixed width
              height: 40, // Set a fixed height
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 270),
           
            const Icon(Icons.check_circle, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
