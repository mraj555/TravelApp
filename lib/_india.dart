import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyIndia extends StatefulWidget {
  const MyIndia({Key? key}) : super(key: key);

  @override
  _MyIndiaState createState() => _MyIndiaState();
}

class _MyIndiaState extends State<MyIndia> {
  List _places = [
    'https://www.holidify.com/images/bgImages/MANALI.jpg',
    'https://www.holidify.com/images/bgImages/LADAKH.jpg',
    'https://www.holidify.com/images/cmsuploads/compressed/15200591704_491338852a_z_20190315163300.jpg',
    'https://www.holidify.com/images/bgImages/LAKSHADWEEP-ISLANDS.jpg',
    'https://www.holidify.com/images/cmsuploads/compressed/b8_20170825162348.PNG',
    'https://www.holidify.com/images/bgImages/SRINAGAR.jpg',
    'https://www.holidify.com/images/cmsuploads/compressed/16437292286_8b820bd34d_z_20190306183132.jpg',
    'https://www.holidify.com/images/bgImages/MUNNAR.jpg',
    'https://www.holidify.com/images/bgImages/VARKALA.jpg',
    'https://www.holidify.com/images/bgImages/RISHIKESH.jpg',
    'https://www.holidify.com/images/bgImages/ALLEPPEY.jpg',
    'https://www.holidify.com/images/bgImages/DARJEELING.jpg',
    'https://www.holidify.com/images/bgImages/NAINITAL.jpg',
    'https://www.holidify.com/images/compressed/686.jpg?v=1.1',
    'https://www.holidify.com/images/bgImages/OOTY.jpg',
    'https://www.holidify.com/images/bgImages/JAIPUR.jpg',
    'https://www.holidify.com/images/bgImages/LONAVALA.jpg',
    'https://www.holidify.com/images/bgImages/MUSSOORIE.jpg',
    'https://www.holidify.com/images/bgImages/KODAIKANAL.jpg',
    'https://www.holidify.com/images/bgImages/AGRA.jpg',
    'https://www.holidify.com/images/cmsuploads/compressed/victoria-memorial-3052473_960_720_20190312144747.jpg',
    'https://www.holidify.com/images/cmsuploads/compressed/shutterstock_648046036_20190715100259.jpg',
    'https://www.holidify.com/images/bgImages/AMRITSAR.jpg',
    'https://www.holidify.com/images/cmsuploads/compressed/shutterstock_755661691_20190628191223.jpg',
    'https://www.holidify.com/images/bgImages/CHENNAI%20.jpg',
    'https://www.holidify.com/images/bgImages/AJANTA-AND-ELLORA-CAVES.jpg',
    'https://www.holidify.com/images/bgImages/HARIDWAR.jpg',
    'https://www.holidify.com/images/bgImages/KANYAKUMARI.jpg',
    'https://www.holidify.com/images/cmsuploads/compressed/Dada_Harir_Stepwell_-_top_view_20190806165155.JPG',
    'https://www.holidify.com/images/bgImages/KANHA-NATIONAL-PARK.jpg',
    'https://www.holidify.com/images/bgImages/MYSORE.jpg',
    'https://www.holidify.com/images/compressed/545.jpg?v=1.1',
    'https://www.holidify.com/images/bgImages/HAMPI.jpg',
    'https://www.holidify.com/images/bgImages/GULMARG.jpg',
    'https://www.holidify.com/images/bgImages/AULI.jpg',
    'https://www.holidify.com/images/cmsuploads/compressed/attr_wiki_2578_20190807125129.jpg',
    'https://www.holidify.com/images/bgImages/BODH-GAYA.jpg',
    'https://www.holidify.com/images/bgImages/MAHABALESHWAR.jpg',
    'https://www.holidify.com/images/compressed/dest_wiki_6702.jpg',
    'https://www.holidify.com/images/bgImages/NASIK.jpg',
    'https://www.holidify.com/images/bgImages/TIRUPATI.jpg',
    'https://www.holidify.com/images/compressed/2529.jpg?v=1.1',
    'https://www.holidify.com/images/bgImages/GWALIOR.jpg',
    'https://www.holidify.com/images/bgImages/MATHURA.jpg',
    'https://www.holidify.com/images/bgImages/RAMESWARAM.jpg',
    'https://www.holidify.com/images/bgImages/COIMBATORE.jpg',
    'https://www.holidify.com/images/bgImages/LUCKNOW.jpg',
    'https://www.holidify.com/images/compressed/1190.jpg?v=1.1',
    'https://www.holidify.com/images/bgImages/KOVALAM.jpg',
    'https://www.holidify.com/images/bgImages/MATHERAN.jpg',
    'https://www.holidify.com/images/cmsuploads/compressed/1024px-Rajmachi_20190813162231.jpg',
    'https://www.holidify.com/images/bgImages/KALIMPONG.jpg',
    'https://www.holidify.com/images/bgImages/BHUBANESWAR.jpg',
    'https://www.holidify.com/images/cmsuploads/compressed/shutterstock_381142438_20190715100439.jpg',
    'https://www.holidify.com/images/bgImages/AURANGABAD.jpg',
    'https://www.holidify.com/images/compressed/dest_wiki_3647.jpg',
    'https://www.holidify.com/images/bgImages/CHERRAPUNJEE.jpg',
    'https://www.holidify.com/images/bgImages/BIKANER.jpg',
    'https://www.holidify.com/images/bgImages/SHIMOGA.jpg',
    'https://www.holidify.com/images/compressed/326.jpg?v=1.1',
    'https://www.holidify.com/images/bgImages/CHITTORGARH.jpg',
    'https://www.holidify.com/images/bgImages/POOVAR.jpg',
  ];

  List _name = [
    'Manali',
    'Leh Ladakh',
    'Andaman',
    'Lakshadweep',
    'Goa',
    'Srinagar',
    'Gangtok',
    'Munnar',
    'Varkala',
    'Rishikesh',
    'Allleppey',
    'Darjeeling',
    'Nainital',
    'Shimla',
    'Ooty',
    'Jaipur',
    'Lonavala',
    'Mussoorie',
    'Kodaikanal',
    'Agra',
    'Kolkata',
    'Jodhpur',
    'Amritsar',
    'Pondicherry',
    'Chennai',
    'Ajanta and Ellora Caves',
    'Haridwar',
    'Kanyakumari',
    'Ahmedabad',
    'Kanha National Park',
    'Mysore',
    'Chandigarh',
    'Hampi',
    'Gulmarg',
    'Auli',
    'Madurai',
    'Bodh Gaya',
    'Mahabaleshwar',
    'Kasol',
    'Nashik',
    'Tirupati',
    'Ujjain',
    'Gwalior',
    'Mathura',
    'Rameshwaran',
    'Coimbatore',
    'Lucknow',
    'Dharamshala',
    'Kovalam',
    'Matheran',
    'Khandala',
    'Kalimpong',
    'Bhabaneswar',
    'Ajmer',
    'Aurangabad',
    'Dehradun',
    'Cherrapunji',
    'Bikaner',
    'Shimoga',
    'Kasauli',
    'Chittorgarh',
    'Poovar'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            _places.length,
            (index) {
              return Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(15),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        _places[index],
                        fit: BoxFit.fill,
                        color: Colors.white.withOpacity(0.5),
                        colorBlendMode: BlendMode.modulate,
                      ),
                    ),
                    Center(
                      child: Text(
                        _name[index],
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: GoogleFonts.ebGaramond(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),

      ),
    );
  }
}
