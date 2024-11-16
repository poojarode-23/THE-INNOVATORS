import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 import 'package:healthcare_app/PaymentPage.dart';
import 'package:healthcare_app/productDetailPage.dart';


class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int obhQuantity = 1;
  int panadolQuantity = 2;
  double obhPrice = 9.99;
  double panadolPrice = 19.99;
  double tax = 1.0;

  @override
  Widget build(BuildContext context) {
    double subtotal = (obhQuantity * obhPrice) + (panadolQuantity * panadolPrice);
    double total = subtotal + tax;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductDetailPage(),
                      ),
                    );
          },
        ),
        title: Text(
          "My cart",
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView( 
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _cartItem(
              context,
              "assets/OBH.jpeg",
              "OBH Combi",
              "75ml",
              obhQuantity,
              obhPrice,
              (quantity) => setState(() => obhQuantity = quantity),
            ),
            _cartItem(
              context,
              "assets/Panadol.jpeg", 
              "Panadol",
              "70ml",
              panadolQuantity,
              panadolPrice,
              (quantity) => setState(() => panadolQuantity = quantity),
            ),
            const SizedBox(height: 20),
            
            Text(
              "Payment Detail",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            _paymentDetailRow("Subtotal", "\$${subtotal.toStringAsFixed(2)}"),
            _paymentDetailRow("Taxes", "\$${tax.toStringAsFixed(2)}"),
            _paymentDetailRow(
              "Total",
              "\$${total.toStringAsFixed(2)}",
              isBold: true,
            ),
            const SizedBox(height: 20),
            // Total and Checkout Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "\$${total.toStringAsFixed(2)}",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
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
                    MaterialPageRoute(builder: (context) => const Paymentpage()),
                  );
                },
                child: Text(
                  "Checkout",
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
    );
  }

  Widget _cartItem(
    BuildContext context,
    String imagePath,
    String title,
    String subtitle,
    int quantity,
    double price,
    ValueChanged<int> onQuantityChanged,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[100],
      ),
      child: Row(
        children: [
          Image.asset(imagePath, height: 50, errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.broken_image, size: 50, color: Colors.grey);
          }),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  if (quantity > 1) onQuantityChanged(quantity - 1);
                },
              ),
              Text(
                quantity.toString(),
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  onQuantityChanged(quantity + 1);
                },
              ),
            ],
          ),
          const SizedBox(width: 10),
          Text(
            "\$${(price * quantity).toStringAsFixed(2)}",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline, color: Colors.grey),
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }

  Widget _paymentDetailRow(String label, String amount, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
          Text(
            amount,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
