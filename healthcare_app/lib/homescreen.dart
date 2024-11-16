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
    Doctor(name: "Dr. Amol Bhandkar", specialty: "Gynocology", experience: "21 years", approvalRate: 90, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Pradeep Kumari", specialty: "Gynocology", experience: "19 years", approvalRate: 89, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Hina Kherajani", specialty: "Gynocology", experience: "25 years", approvalRate: 92, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
    Doctor(name: "Dr.Rani Khanna ", specialty: "Gynocology", experience: "30 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/s5.jpeg"),
    Doctor(name: "Dr.Soham Patil ", specialty: "Gynocology", experience: "35 years", approvalRate: 98, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
   
  ] ),
       
    Specifictions(img:"assets/mental1.jpg",title:  "Mental Wellness",doctorList: [ 
    Doctor(name: "Dr. Amol Bhandkar", specialty: "Mental Wellness", experience: "20 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr.Suresh Patil ", specialty: "Mental Wellness", experience: "41 years", approvalRate: 98, patientReviews: 900, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
    Doctor(name: "Dr.Anjali Desai ", specialty: "Mental Wellness", experience: "20 years", approvalRate: 94, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/s5.jpeg"),
    Doctor(name: "Dr.Rahul deshmukh ", specialty: "Mental Wellness", experience: "25 years", approvalRate: 95, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/s7.jpg"),
    ]),
    Specifictions(img:"assets/general physician.jpeg", title: "General Physician",doctorList:[   
    Doctor(name: "Dr. Pradeep Kumari", specialty: "General Physician", experience: "21 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Hina Kherajani", specialty: "General Physician", experience: "40 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
    Doctor(name: "Dr.Sneha Patil ", specialty: "General Physician", experience: "26 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/s5.jpeg"),
    Doctor(name: "Dr.Rajni deshmukh ", specialty: "General Physician", experience: "25 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d3.jpg"),
    ]),
    Specifictions(img:"assets/dermitology.jpg",title:  "Dermitology",doctorList: [ 
    Doctor(name: "Dr. Pradeep Kumari", specialty: "Dermatologist", experience: "21 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Hina Kherajani", specialty: "Dermatologist", experience: "22 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
    Doctor(name: "Dr.Rajni deshmukh ", specialty: "Cardiologist", experience: "25 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/s5.jpeg"),
    Doctor(name: "Dr.Sneha Patil ", specialty: "Dermatologist", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
    ]),
               
  ];

   List<Specifictions>  specifictionsList2=[
    Specifictions(img: "assets/Pediatric.jpeg", title: "Pediatric", doctorList:[
    Doctor(name: "Dr. Amol Bhandkar", specialty: "Pediatric", experience: "22 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Pradeep Kumari", specialty: "Pediatrict", experience: "26 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Hina Kherajani", specialty: "Pediatric", experience: "29 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
   Doctor(name: "Dr.Rajni deshmukh ", specialty: "Pediatric", experience: "25 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/s5.jpeg"),
     Doctor(name: "Dr.Sushant Patil ", specialty: "Pediatric", experience: "32 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
   
  ] ),
       
              Specifictions(img:"assets/Orthopedic.jpeg",title:  "Orthopedic",doctorList: [
     Doctor(name: "Dr. Pradeep Kumari", specialty: "Orthopedic", experience: "22 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Hina Kherajani", specialty: "Orthopedic", experience: "27 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
    Doctor(name: "Dr.Rajni deshmukh ", specialty: "Orthopedic", experience: "25 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/s5.jpeg"),
    Doctor(name: "Dr.Amol Patil ", specialty: "Orthopedic", experience: "17 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
     ]),
              Specifictions(img:"assets/sexiology.jpeg", title: "Sexiology",doctorList:[ 
    Doctor(name: "Dr. Pradeep Kumari", specialty: "Sexiology", experience: "28 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Hina Kherajani", specialty: "Sexiology", experience: "25 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
    Doctor(name: "Dr. Sneha Sharma", specialty: "Sexiology", experience: "17 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
    Doctor(name: "Dr.Rahul Patil ", specialty: "Sexiology", experience: "23 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
   ]),
              Specifictions(img:"assets/diabitiology.jpeg",title:  "Diabitiology",doctorList: [ Doctor(name: "Dr. Amol Bhandkar", specialty: "Dermatologist", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Pradeep Kumari", specialty: "Diabitiology", experience: "23 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Hina Kherajani", specialty: "Diabitiology", experience: "22 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
    Doctor(name: "Dr. Sneha Sharma", specialty: "Diabitiology", experience: "15 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
    Doctor(name: "Dr.Rahul Patil ", specialty: "Diabitiology", experience: "22 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
    ]),
               
  ];

List<Specifictions>  specifictionsList3=[
    Specifictions(img: "assets/stomach pain.jpeg", title: "Stomach Pain", doctorList:[
    Doctor(name: "Dr.Vishal Patil ", specialty: "Stomach Pain", experience: "25 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
    Doctor(name: "Dr. Sneha Mehta ", specialty: "Stomach Pain", experience: "22 years", approvalRate: 90, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/s6.jpg"),
    Doctor(name: "Dr.Rajesh Desai ", specialty: "Stomach Pain", experience: "12 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/s7.jpg"),
    Doctor(name: "Dr.Anjali Khanna ", specialty: "Stomach Pain", experience: "10 years", approvalRate: 79, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/s5.jpeg"),
    
  ] ),
       
              Specifictions(img:"assets/Vertigo.jpeg",title:  "Vertigo",doctorList: [
    Doctor(name: "Dr. Pradeep Kumari", specialty: "Vertigo", experience: "22 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Hina Kherajani", specialty: "Vertigo", experience: "21 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
    Doctor(name: "Dr. sneha Sharma", specialty: "Vertigo", experience: "10 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
    Doctor(name: "Dr.Shubham Patil ", specialty: "Vertigo", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
     ]),
              Specifictions(img:"assets/Acne.jpeg", title: "Acne",doctorList:[
    Doctor(name: "Dr. Amol Bhandkar", specialty: "Acne", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Pradeep Kumari", specialty: "Acne", experience: "20 years", approvalRate: 89, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Rutuja Kherajani", specialty: "Acne", experience: "22 years", approvalRate: 92, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
    Doctor(name: "Dr.Shubham Patil ", specialty: "Acne", experience: "11 years", approvalRate: 78, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
   ]),
              Specifictions(img:"assets/PCOS.png",title:  "PCOS",doctorList: [ 
    Doctor(name: "Dr. Amol Bhandkar", specialty: "PCOS", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Pradeep Kumari", specialty: "PCOS", experience: "21 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Rutuja Sharma", specialty: "PCOS", experience: "18 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
    Doctor(name: "Dr.Sham Patil ", specialty: "PCOS", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
    ]),
               
  ];
  List<Specifictions>  specifictionsList4=[
    Specifictions(img: "assets/back pain.jpeg", title: "Back Pain", doctorList:[
    Doctor(name: "Dr. Pradeep Kumari", specialty: "Back Pain", experience: "20 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Hina Kherajani", specialty: "Back Pain", experience: "21 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
   
  ] ),
       
              Specifictions(img:"assets/Thyroid.jpeg",title:  "Thyroid",doctorList: [
    Doctor(name: "Dr. Amol Bhandkar", specialty: "Thyroid", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Pornima Sharma", specialty: "Thyroid", experience: "18 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
    Doctor(name: "Dr.RUdra Patil ", specialty: "Thyroid", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
     ]),
              Specifictions(img:"assets/hedaches.jpeg", title: "Headache",doctorList:[
    Doctor(name: "Dr. Amol Bhandkar", specialty: "Headache", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Rashi Sharma", specialty: "Headache", experience: "18 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
    Doctor(name: "Dr.Akash Patil ", specialty: "Headache", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
   ]),
              Specifictions(img:"assets/fungai.jpeg",title:  "Fungai",doctorList: [ 
    Doctor(name: "Dr. Amol Bhandkar", specialty: "Fungai", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Pradeep Kumari", specialty: "Fungai", experience: "26 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Hina Kherajani", specialty: "Fungai", experience: "50 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
   ]),
               
  ];
   List<Specifictions>  specifictionsList5=[
    Specifictions(img: "assets/fever.jpeg", title: "Fever", doctorList:[
    Doctor(name: "Dr. Amol Bhandkar", specialty: "Fever", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Pradeep Kumari", specialty: "Fever", experience: "21 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Hina Kherajani", specialty: "Fever", experience: "22 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
    Doctor(name: "Dr. Rushi Sharma", specialty: "Fever", experience: "18 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
  
  ] ),
       
              Specifictions(img:"assets/high blood pressure.jpeg",title:  "Blood pressure",doctorList: [
    Doctor(name: "Dr. Amol Bhandkar", specialty: "Blood pressure", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Hina Kherajani", specialty: "Blood pressure", experience: "22 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
    Doctor(name: "Dr. Anmol Sharma", specialty: "Blood pressure", experience: "18 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
    Doctor(name: "Dr.Swamini Patil ", specialty: "Blood pressure", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
     ]),
              Specifictions(img:"assets/pneumonia.jpeg", title: "Pneumonia",doctorList:[
    Doctor(name: "Dr. Amol Bhandkar", specialty: "Pneumonia", experience: "20 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Pradeep Kumari", specialty: "Pneumonia", experience: "25 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. sneha Sharma", specialty: "Pneumonia", experience: "10 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
    Doctor(name: "Dr.Sushant Patil ", specialty: "Pneumonia", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
   ]),
              Specifictions(img:"assets/Diziness.jpeg",title:  "Diziness",doctorList: [ Doctor(name: "Dr. Amol Bhandkar", specialty: "Dermatologist", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Pradeep Kumari", specialty: "Diziness", experience: "21 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Hina Kherajani", specialty: "Diziness", experience: "22 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
    Doctor(name: "Dr. Shital Sharma", specialty: "Diziness", experience: "18 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
    Doctor(name: "Dr.Shiv Patil ", specialty: "Diziness", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
    ]),
               
  ];
   List<Specifictions>  specifictionsList6=[
    Specifictions(img: "assets/Knee pain.jpeg", title: "Knee pain", doctorList:[
    Doctor(name: "Dr. Amol Bhandkar", specialty: "Knee pain", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Rutuja Chaudhri", specialty: "Knee pain", experience: "18 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
    Doctor(name: "Dr.Ram Patil ", specialty: "Knee pain", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
   
  ] ),
       
              Specifictions(img:"assets/hand pain.jpeg",title:  "hand pain",doctorList: [ Doctor(name: "Dr. Amol Bhandkar", specialty: "hand pain", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
   Doctor(name: "Dr. Rahul Sharma", specialty: "hand pain", experience: "18 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
    Doctor(name: "Dr.Sneha Patil ", specialty: "hand pain", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
     ]),
              Specifictions(img:"assets/Leg pain.jpeg", title: "Leg pain",doctorList:[ Doctor(name: "Dr. Amol Bhandkar", specialty: "Dermatologist", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
   Doctor(name: "Dr. Vaishnavi Sharma", specialty: "Cardiologist", experience: "18 years", approvalRate: 94, patientReviews: 512, clinicTime: "Mon-Fri: 9AM - 5PM", appointmentLink: "http://bookrahul.com",image: "assets/d2.jpg"),
    Doctor(name: "Dr.Omkar Patil ", specialty: "Dermatologist", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com",image: "assets/d3.jpg"),
   ]),
              Specifictions(img:"assets/back pain.jpeg",title:  "back pain",doctorList: [ Doctor(name: "Dr. Amol Bhandkar", specialty: "back pain", experience: "21 years", approvalRate: 96, patientReviews: 473, clinicTime: "Mon-Fri: 10AM - 5PM", appointmentLink: "http://bookamol.com ",image: "assets/20.jpg",),
    Doctor(name: "Dr. Pradeep Kumari", specialty: "back pain", experience: "21 years", approvalRate: 96, patientReviews: 706, clinicTime: "Mon-Fri: 9AM - 6PM", appointmentLink: "http://bookpradeep.com",image: "assets/21.jpeg"),
    Doctor(name: "Dr. Hina Kherajani", specialty: "back pain", experience: "22 years", approvalRate: 98, patientReviews: 876, clinicTime: "Mon-Sat: 9AM - 7PM", appointmentLink: "http://bookhina.com",image: "assets/d1.avif"),
    ]),
               
  ];
  
  get bottomNavigationBar => null;
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
                itemCount: specifictionsList1.length,

                itemBuilder: (context,index){
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




              //const Padding(
             // padding: EdgeInsets.all(16.0),
             // child: Text(
             //   "CHOOSE FROM TOP  10 SPECIALISTS",
             //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
             // ),
          //  ),
           
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: specifictionsList1.length,

                itemBuilder: (context,index){
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
                specifictionsList2[index].img,
                
                
                fit: BoxFit.cover,
                height: 100, 
                width: 100,
              ),
              onTap: () {
           Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HealthcareApp(doctorList:   specifictionsList2[index].doctorList,)
                          ),
                        );
        }, 
            ),
          ),
            const SizedBox(height: 8),
            Center(
              child: Text(
              
                "${specifictionsList2[index].title}",
                
                
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  textAlign:TextAlign.center,
              ),
            ),
          ]
            ),
          
        ); }),
            ),
 const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Common Health Issue",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
           
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: specifictionsList3.length,

                itemBuilder: (context,index){
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
                specifictionsList3[index].img,
                
                
                fit: BoxFit.cover,
                height: 100, 
                width: 100,
              ),
              onTap: () {
           Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HealthcareApp(doctorList:   specifictionsList3[index].doctorList,)
                          ),
                        );
        }, 
            ),
          ),
            const SizedBox(height: 8),
            Center(
              child: Text(
              
                "${specifictionsList3[index].title}",
                
                
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  textAlign:TextAlign.center,
              ),
            
            ),
          ]
            ),
          
        ); }),
            ),

             SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: specifictionsList4.length,

                itemBuilder: (context,index){
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
                specifictionsList4[index].img, 
                fit: BoxFit.cover,
                height: 100, 
                width: 100,
              ),
              onTap: () {
           Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HealthcareApp(doctorList:   specifictionsList4[index].doctorList,)
                          ),
                        );
        }, 
            ),
          ),
            const SizedBox(height: 8),
            Center(
              child: Text(
              
                "${specifictionsList4[index].title}",
                
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  textAlign:TextAlign.center,
              ),
            ),
          ]
            ),
          
        ); }),
            ),

             const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "General Physician",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
             SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: specifictionsList5.length,
                itemBuilder: (context,index){
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
                specifictionsList5[index].img,
                fit: BoxFit.cover,
                height: 100, 
                width: 100,
              ),
              onTap: () {
           Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HealthcareApp(doctorList:   specifictionsList5[index].doctorList,)
                          ),
                        );
        }, 
            ),
          ),
            const SizedBox(height: 8),
            Center(
              child: Text(
              
                "${specifictionsList5[index].title}",
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  textAlign:TextAlign.center,
              ),
            
            ),
          ]
            ),
          
        ); }),
            ),
             const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Orthopedist",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
             SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: specifictionsList6.length,
                itemBuilder: (context,index){
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
                specifictionsList6[index].img,
                fit: BoxFit.cover,
                height: 100, 
                width: 100,
              ),
              onTap: () {
           Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HealthcareApp(doctorList:   specifictionsList6[index].doctorList,)
                          ),
                        );
        }, 
            ),
          ),
            const SizedBox(height: 8),
            Center(
              child: Text(         
                "${specifictionsList6[index].title}",
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  textAlign:TextAlign.center,
              ),
            
            ),
          ]
            ),
          
        ); }),
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