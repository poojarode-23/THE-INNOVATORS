import 'package:flutter/material.dart';
import 'package:healthcare_app/ReportPage.dart';
import 'package:healthcare_app/book.dart';
import 'package:healthcare_app/pharmacy.dart';
//import 'package:healthcare_app/main.dart';
import 'package:healthcare_app/profilescrreen.dart';


class Thirdscreen extends StatefulWidget {
  const Thirdscreen({super.key});

  @override
  State<Thirdscreen> createState() => _HealthcareUIState();
}

class _HealthcareUIState extends State<Thirdscreen> {
  TextEditingController _searchController = TextEditingController();
  int _currentIndex = 0;
  
  List<Specifictions>  specifictionsList1=[
    Specifictions(img: "assets/gynocology.jpeg", title: "Gynocology", doctorList:[
    Doctor(name: "Dr. Amol Bhandkar", specialty: "Dermatologist", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Pradeep Kumari", specialty: "Dermatologist", experience: "21 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Hina Kherajani", specialty: "Dermatologist", experience: "22 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
    Doctor(name: "Dr. Rahul Sharma", specialty: "Cardiologist", experience: "18 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
    Doctor(name: "Dr.Sneha Patil ", specialty: "Dermatologist", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
    Doctor(name: "Dr. Vishal Mehta ", specialty: "Dermatologist", experience: "21 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/s6.jpg"),
    Doctor(name: "Dr.Anjali Desai ", specialty: "Dermatologist", experience: "22 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/s7.jpg"),
    Doctor(name: "Dr.Rajesh Khanna ", specialty: "Cardiologist", experience: "18 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/s5.jpeg"),
    
  ] ),
    
              Specifictions(img:"assets/mental1.jpg",title:  "Mental Wellness",doctorList: []),
              Specifictions(img:"assets/general physician.jpeg", title: "General Physician",doctorList:[]),
              Specifictions(img:"assets/dermitology.jpg",title:  "Dermitology",doctorList: []),
               
  ];

  Widget buildDoctorCard(String imagePath, String name) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
      borderRadius:BorderRadius.circular(30),
      ),
       child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipOval(
          child: GestureDetector(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 100, 
              width: 100,
            ),
            onTap: () {
        
   // Add navigation or functionality here
      }, 
          ),
        ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              name,
              
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                textAlign:TextAlign.center,
            ),
          
          ),
        ]
          ),
        
      );
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfileScreen()),
          );
        },
        child:const CircleAvatar(
          backgroundColor: Colors.amber,
        )
                ),
        title: Container(
          height: 40, // Search bar height
          decoration: BoxDecoration(
          color: Color.fromRGBO(206, 217, 237, 0.902),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.black87),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
            style: const TextStyle(color: Colors.black54),
          ),
        ),
        actions: [
          
             IconButton(
              icon: const
               Icon(Icons.chat, color: Color(0xFFB29CE1)),
               onPressed: () {
                print("Chat icon pressed");
               
              },
             ),
            
          
        ],
        backgroundColor: Colors.white,
      ),
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "CHOOSE FROM TOP SPECIALISTS",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: specifictionsList1.length
                ,itemBuilder: (context,index){
                  return  Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(30),
        ),
         child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
            child: GestureDetector(
              child: Image.asset(
                specifictionsList1[index].img,
                fit: BoxFit.cover,
                height: 100, 
                width: 100,
              ),
              onTap: () {
           Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HealthcareApp(doctorList:   specifictionsList1[index].doctorList,)
                          ),
                        );
           // Add navigation or functionality here
        }, 
            ),
          ),
            const SizedBox(height: 8),
            Center(
              child: Text(
              
                "${specifictionsList1[index].title}",
                
                
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  textAlign:TextAlign.center,
              ),
            
            ),
          ]
            ),
          
        ); }),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildDoctorCard("assets/gynocology.jpeg", "Gynocology"),
                  buildDoctorCard("assets/mental1.jpg", "Mental Wellness"),
                  buildDoctorCard("assets/general physician.jpeg", "General Physician"),
                  buildDoctorCard("assets/dermitology.jpg", "Dermitology"),
                 
                ],
              ),
            ),
        
        
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildDoctorCard("assets/Pediatric.jpeg", "Pediatric"),
                  buildDoctorCard("assets/Orthopedic.jpeg", "Orthopedic"),
                  buildDoctorCard("assets/sexiology.jpeg", "Sexiology"),
                  buildDoctorCard("assets/diabitiology.jpeg", "Diabitiology"),
                 
                ],
              ),
            ),
            
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Common Health Issue",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildDoctorCard("assets/stomach pain.jpeg", "Stomach pain"),
                  buildDoctorCard("assets/Vertigo.jpeg", "Vertigo"),
                  buildDoctorCard("assets/Acne.jpeg", "Acne"),
                  buildDoctorCard("assets/PCOS.png", "PCOS"),
                  
                ],
              ),
            ),
        
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildDoctorCard("assets/back pain.jpeg", "Back Pain"),
                  buildDoctorCard("assets/Thyroid.jpeg", "Thyroid"),
                  buildDoctorCard("assets/hedaches.jpeg", "Headaches"),
                  buildDoctorCard("assets/fungai.jpeg", "Fungai"),
                  
                ],
              ),
            ),
        
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "General Physician",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
             
              child: Row(
                children: [
                  buildDoctorCard("assets/fever.jpeg", "Fever"),
                  buildDoctorCard("assets/high blood pressure.jpeg", "Highblood pressure"),
                  buildDoctorCard("assets/pneumonia.jpeg", "Pneumonia"),
                  buildDoctorCard("assets/Diziness.jpeg", "Diziness"),
                ],
              ),
            ),
        
             const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Orthopedist",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
             
              child: Row(
                children: [
                  buildDoctorCard("assets/Knee pain.jpeg", "Knee pain"),
                  buildDoctorCard("assets/hand pain.jpeg", "Hand pain"),
                  buildDoctorCard("assets/Leg pain.jpeg", "Leg pain"),
                  buildDoctorCard("assets/back pain.jpeg", "Back pain"),
                ],
              ),
            ),
          ],
        ),
      ),

      

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.teal,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
                // Add any additional action for Home tap
              },
              child: const Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                });
                // Add any additional action for Notifications tap
              },
              child: const Icon(Icons.notifications_active),
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = 2;
                });
                 Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HealthDashboard()
                        ),
                      );
   // Add navigation or functionality here
      
                // Add any additional action for Report tap
              },
              child: const Icon(Icons.report),
            ),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = 3;
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Pharmacy()
                        ),
                      );
                });
                // Add any additional action for Profile tap
              },
              child: const Icon(Icons.local_pharmacy),
            ),
            label: 'Pharma',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = 4;
                });
                // Add any additional action for Profile tap
              },
              child: const Icon(Icons.person),
            ),
            label: 'Profile',
          ),
        ],
      )

  );
  }
}