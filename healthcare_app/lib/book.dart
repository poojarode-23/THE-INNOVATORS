import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Specifictions{
  final String img;
  final String title;
  final List<Doctor> doctorList;

  Specifictions({
    required this.img,required this.title,required this.doctorList
    
  });
}
class Doctor {
  final String name;
  final String specialty;
  final String experience;
  final int approvalRate;
  final int patientReviews;
  final String clinicTime;
  final String appointmentLink;
  final String image;

  Doctor({
    required this.name,
    required this.specialty,
    required this.experience,
    required this.approvalRate,
    required this.patientReviews,
    required this.clinicTime,
    required this.appointmentLink,
    required this.image,
  });
}

class HealthcareApp extends StatefulWidget {
  final List<Doctor> doctorList;

  const HealthcareApp({super.key,required this.doctorList});


  @override
  State createState() => _HealthcareAppState();
}

class _HealthcareAppState extends State<HealthcareApp> {
  // final List<Doctor> doctors = [
  //   Doctor(name: "Dr. Amol Bhandkar", specialty: "Dermatologist", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
  //   Doctor(name: "Dr. Pradeep Kumari", specialty: "Dermatologist", experience: "21 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
  //   Doctor(name: "Dr. Hina Kherajani", specialty: "Dermatologist", experience: "22 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
  //   Doctor(name: "Dr. Rahul Sharma", specialty: "Cardiologist", experience: "18 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
  //   Doctor(name: "Dr.Sneha Patil ", specialty: "Dermatologist", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
  //   Doctor(name: "Dr. Vishal Mehta ", specialty: "Dermatologist", experience: "21 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/s6.jpg"),
  //   Doctor(name: "Dr.Anjali Desai ", specialty: "Dermatologist", experience: "22 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/s7.jpg"),
  //   Doctor(name: "Dr.Rajesh Khanna ", specialty: "Cardiologist", experience: "18 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/s5.jpeg"),
    
  // ];

  List<Doctor> filteredDoctors = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredDoctors = filteredDoctors;
  }

  // void _filterDoctors(String query) {
  //   List<Doctor> results = doctors.where((doctor) =>
  //   doctor.name.toLowerCase().contains(query.toLowerCase())) .toList();
    
   
  //   results.sort((a, b) => a.name.toLowerCase().indexOf(query.toLowerCase()).compareTo(b.name.toLowerCase().indexOf(query.toLowerCase())));

  //   setState(() {
  //     filteredDoctors = results;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 227, 241, 241),
      appBar: AppBar(
        title: Text(
          "Find Your Health Concern",
          style: GoogleFonts.quicksand(fontSize: 20, color: Colors.white),
        ),
       //backgroundColor: Color.fromARGB(255, 111, 81, 255),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              // onChanged: _filterDoctors,
              style: const TextStyle(fontSize: 15),
              decoration: const InputDecoration(
                hintText: "Search Doctor",
                hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromARGB(255, 243, 238, 238),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: widget.doctorList.length,
                itemBuilder: (context, index) {
                  final doctor = widget.doctorList[index];
                  return Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(
                      color: Colors.grey,  
                       width: 1,             
                      ),
                    ),
                    
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: GestureDetector(
                        onTap: () {
                          // NAVIGATOR
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DoctorDetailPage(doctor: doctor),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            ///////
                             Container(
                              padding: const EdgeInsets.all(8), 
                              decoration: BoxDecoration(
  
                               borderRadius: BorderRadius.circular(8), 
                               border: Border.all(
                                  color: const Color.fromARGB(255, 250, 248, 248), 
                                  width: 2, 
                                 ),
                               
                                ),
                               child: Image.asset(
                               doctor.image, 
                                width: 90, 
                                height: 80, 
                                fit: BoxFit.cover, 
                                ),
                               ),
                            
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    doctor.name,
                                    style: GoogleFonts.quicksand(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 84, 84, 84),
                                    ),
                                  ),
                                  Text(
                                    doctor.specialty,
                                    style: GoogleFonts.quicksand(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 84, 84, 84),
                                    ),
                                  ),
                                  Text(
                                    doctor.experience,
                                    style: GoogleFonts.quicksand(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 84, 84, 84),
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.amberAccent),
                                    Text('4.7'),
                                     SizedBox(width: 10),
                                     Icon(Icons.location_pin,color: Colors.grey),
                                     Text('• 800m away'),
                                    ],
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Passing a sample doctor to the DoctorDetailPage.
    final doctor = Doctor(
      name: "Dr. Amol Bhandkar",
      specialty: "Cardiologist",
      experience: "21 years",
      approvalRate: 96,
      patientReviews: 473,
      clinicTime: "Mon-Fri: 10AM - 5PM",
      appointmentLink: "",
      image: "assets/Dr.Amol.jpeg",
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoctorDetailPage(doctor: doctor),
    );
  }
}

class DoctorDetailPage extends StatefulWidget {
  final Doctor doctor; 

  const DoctorDetailPage({super.key, required this.doctor});

  @override
  State createState() => _DoctorDetailPageState();
}

class _DoctorDetailPageState extends State<DoctorDetailPage> {
  String selectedDate = 'Wed\n23';
  String selectedTime = '02:00 PM';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(255, 245, 252, 252),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Doctor Detail'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(widget.doctor.image), 
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.doctor.name, 
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(widget.doctor.specialty),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        Text('4.7'),
                        SizedBox(width: 10),
                        Text('• 800m away'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'About',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...',
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(height: 8),
            Text(
              'Read more',
              style: TextStyle(color: Colors.teal),
            ),
            SizedBox(height: 16),
            Text(
              'Select Date',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8,width: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _dateButton('Mon\n21'),
                _dateButton('Tue\n22'),
                _dateButton('Wed\n23'),
                _dateButton('Thu\n24'),
                _dateButton('Fri\n25'),
                _dateButton('Sat\n26'),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Select Time',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _timeButton('09:00 AM'),
                _timeButton('10:00 AM'),
                _timeButton('11:00 AM'),
                _timeButton('01:00 PM'),
                _timeButton('02:00 PM'),
                _timeButton('03:00 PM'),
                _timeButton('04:00 PM'),
                _timeButton('07:00 PM'),
                _timeButton('08:00 PM'),
              ],
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Book Appointment',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dateButton(String day) {
    final isSelected = day == selectedDate;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedDate = day;
        });
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.teal : Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          day,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _timeButton(String time) {
    final isSelected = time == selectedTime;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTime = time;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.teal : Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          time,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
