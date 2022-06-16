import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/_india.dart';
import 'package:travelapp/_login.dart';

class MyHome extends StatefulWidget {
  final String email;

  const MyHome({Key? key, required this.email}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  static DateTimeRange cd = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now().add(
      Duration(days: 7),
    ),
  );
  static List _place = [
    'assets/places/India.jpg',
    'assets/places/Australia.jpg',
    'assets/places/China.jpg',
    'assets/places/Finland.jpg',
    'assets/places/France.jpg',
    'assets/places/Iceland.jpg',
    'assets/places/Maldives.jpg',
    'assets/places/Myanmar.jpg',
    'assets/places/Netherlands.jpg',
    'assets/places/Poland.jpg',
    'assets/places/Singapore.jpg',
    'assets/places/Slovenia.jpg',
    'assets/places/Switzerland.jpg',
    'assets/places/Thailand.jpg',
    'assets/places/UAE.jpg',
  ];
  List _vp = [
    'Taj Mahal',
    'Opera House',
    'Sky Corridor Waterfall',
    'Kakslauttanen Arctic Resort',
    'Disney Land',
    'Hallgrímskirkja',
    'Waldorf Astoria',
    'Architecture of Bagan',
    'Tulips of the Netherlands',
    'Pogorze Izerskie',
    'Changi Airport',
    'Lake Bled',
    'Green Paradise',
    'Wat Sam Phran',
    'Miracle Garden'
  ];
  List _country = [
    'India',
    'Australia',
    'China',
    'Finland',
    'France',
    'Iceland',
    'Maldives',
    'Myanmar',
    'Netherlands',
    'Poland',
    'Singapore',
    'Slovenia',
    'Switzerland',
    'Thailand',
    'UAE'
  ];
  static List _resort = [
    'https://www.tripsavvy.com/thmb/rsaQrOKU-A1UWDj473C7cNAnLuY=/1920x960/filters:no_upscale():max_bytes(150000):strip_icc()/the-oberoi-amarvilas-5bc8e83d46e0fb00510a986d.jpg',
    'https://www.vacationstravel.com/wp-content/uploads/2021/02/Crown-Sydney-Resort-pool-on-level-three.jpg',
    'https://cdn.cnn.com/cnnnext/dam/assets/161216154728-3-vinpearl-resort.jpg',
    'https://www.hotelscombined.com/kimg/b8/38/12ddb566c43eeb19.jpg',
    'https://www.fodors.com/wp-content/uploads/2021/07/01_FranceBeachfrontHotels__HotelDuCap-Eden-Roc_1-2009-HDCER-Swimming-pool-sunset-JMS.1.jpg',
    'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F28%2F2021%2F08%2F18%2Fnaladhu-private-island-ocean-house-pool-NEWMALDIVES0821.jpg',
    'https://res.cloudinary.com/thrillophilia/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_auto,q_auto/v1/filestore/8fn4x2gmb2rlgct4vnl7x166ose9_o21bfbmv24cr053c5fo5qdu6q358_exterior%20view%20centara%20%281%29.jpg',
    'https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2018/08/cover-image-myanmar-resort.jpg',
    'https://cdn-cms.bookingexperts.nl/media/854/83/preprocessed.jpg',
    'https://cf.bstatic.com/xdata/images/hotel/max1280x900/88201362.jpg?k=ea938fe058548e6ff2388ea115e17d91e69c962ad4c8ede1979afa3f8d09748a&o=&hp=1',
    'https://w0.peakpx.com/wallpaper/814/936/HD-wallpaper-hotel-with-pool-in-singapore-hotel-city-singapore-pool-terrace.jpg',
    'https://cf.bstatic.com/xdata/images/hotel/max1280x900/148622551.jpg?k=3215364b7372934ea6877f4358d50bdec514a154044bbe20f76609435c22bea3&o=&hp=1',
    'https://c4.wallpaperflare.com/wallpaper/696/745/310/zurich-nature-winter-switzerland-wallpaper-preview.jpg',
    'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dGhhaWxhbmQlMjBob3RlbHxlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://wallpapershome.com/images/pages/pic_h/4601.jpg'
  ];
  List _rname = [
    'The Oberoi Amarvilas',
    'Palazzo Versace',
    'Club Med Sanya',
    'Tahko Golden Resort',
    'Le Theven',
    'Blabjorg',
    'Constance Halaveli',
    'Mandalay Hill',
    'Chalet Wanama',
    'Grand Lubicz Hotel',
    'World Sentosa',
    'Astoria Bled',
    'Gstaad Palace',
    'Sea Sand Sun',
    'Fairmont Fujairah Beach',
  ];
  List _price = [
    '\$100',
    '\$252',
    '\$350',
    '\$190',
    '\$230',
    '\$150',
    '\$310',
    '\$165',
    '\$225',
    '\$180',
    '\$205',
    '\$175',
    '\$330',
    '\$270',
    '\$295',
  ];
  var isPressed = List.generate(_place.length, (index) => false);
  var _fav = List.generate(_resort.length, (index) => false);
  var _star = List.generate(_resort.length, (index) => false);
  var _star1 = List.generate(_resort.length, (index) => false);
  var _star2 = List.generate(_resort.length, (index) => false);
  var _star3 = List.generate(_resort.length, (index) => false);
  var _star4 = List.generate(_resort.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: _drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo/world-travel.png'),
              RichText(
                text: TextSpan(
                  text: ' T',
                  style: GoogleFonts.lobster(
                    fontSize: 35,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'ravilia',
                      style: GoogleFonts.pacifico(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.yellow, Colors.amber],
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  // color: Colors.black,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Find The Best Tour',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'Country',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        height: 225,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: _place.length,
                          shrinkWrap: true,
                          padding: EdgeInsets.only(left: 15, right: 15),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                if (index == 0) {
                                  setState(
                                    () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => MyIndia(),
                                        ),
                                      );
                                    },
                                  );
                                }
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: EdgeInsets.only(right: 7),
                                width: 170,
                                // color: Colors.black,
                                child: Stack(
                                  fit: StackFit.passthrough,
                                  children: [
                                    ClipRRect(
                                      child: Image.asset(
                                        _place[index],
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    Wrap(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.black38,
                                          ),
                                          child: Text(
                                            'New',
                                            style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Wrap(
                                      runAlignment: WrapAlignment.end,
                                      children: [
                                        ListTile(
                                          contentPadding: EdgeInsets.only(
                                              bottom: 6, right: 10, left: 10),
                                          title: Text(
                                            _country[index],
                                            style: GoogleFonts.andada(
                                              color: Colors.white,
                                            ),
                                          ),
                                          subtitle: Text(
                                            _vp[index],
                                            style: GoogleFonts.andada(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          trailing: Container(
                                            height: double.infinity,
                                            width: 30,
                                            padding: EdgeInsets.only(top: 5),
                                            margin: EdgeInsets.only(bottom: 5),
                                            decoration: BoxDecoration(
                                              color: Colors.black38,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Wrap(
                                              runAlignment:
                                                  WrapAlignment.center,
                                              alignment: WrapAlignment.center,
                                              children: [
                                                Text(
                                                  '4.5',
                                                  style: GoogleFonts.nunito(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                                IconButton(
                                                  padding: EdgeInsets.zero,
                                                  alignment:
                                                      Alignment.topCenter,
                                                  color: Colors.black,
                                                  icon: Icon(
                                                    isPressed[index]
                                                        ? Icons.star
                                                        : Icons.star_border,
                                                    color: isPressed[index]
                                                        ? Colors.yellow
                                                        : Colors.white,
                                                    size: 20,
                                                  ),
                                                  onPressed: () {
                                                    setState(
                                                      () {
                                                        setState(
                                                          () {
                                                            isPressed[index] =
                                                                !isPressed[
                                                                    index];
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        height: 80,
                        width: 180,
                        alignment: Alignment.topCenter,
                        child: ListTile(
                          title: Text(
                            'Choose Date',
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black45,
                            ),
                          ),
                          subtitle: Text(
                            '${cd.start.day} ${DateFormat.MMM().format(cd.start)} - ${cd.end.day} ${DateFormat.MMM().format(cd.end)}',
                            style: GoogleFonts.roboto(
                              color: Colors.black54,
                            ),
                          ),
                          onTap: () async {
                            DateTimeRange? d = await showDateRangePicker(
                                context: context,
                                initialEntryMode:
                                    DatePickerEntryMode.calendarOnly,
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now().add(
                                  Duration(days: 100),
                                ),
                                currentDate: DateTime.now(),
                                builder: (context, child) {
                                  return Theme(
                                    data: ThemeData.light().copyWith(
                                      primaryColor: Colors.amber[500],
                                      scaffoldBackgroundColor:
                                          Colors.amberAccent[50],
                                      dividerColor: Colors.black26,
                                      textTheme: TextTheme(
                                        bodyText2:
                                            TextStyle(color: Colors.black),
                                      ),
                                      colorScheme:
                                          ColorScheme.fromSwatch().copyWith(
                                        primary: Colors.amber,
                                        onSurface: Colors.amber,
                                        onPrimary: Colors.white,
                                      ),
                                    ),
                                    child: child!,
                                  );
                                });
                            if (d != null) {
                              setState(() {
                                cd = d;
                              });
                            }
                          },
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.black45,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Container(
                        height: 80,
                        width: 180,
                        alignment: Alignment.topCenter,
                        child: ListTile(
                          title: Text(
                            'Number Of Rooms',
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black45,
                            ),
                          ),
                          subtitle: Text(
                            '1 Room - 2 Adults',
                            style: GoogleFonts.roboto(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: List.generate(
                      _resort.length,
                      (index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Card(
                            elevation: 15,
                            shadowColor: Colors.black38,
                            color: Colors.white70,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: [
                                      ClipRRect(
                                        child: Image.network(
                                          _resort[index],
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Wrap(
                                          alignment: WrapAlignment.end,
                                          runAlignment: WrapAlignment.start,
                                          children: [
                                            FloatingActionButton(
                                              heroTag: index,
                                              onPressed: () {
                                                setState(
                                                  () {
                                                    _fav[index] = !_fav[index];
                                                  },
                                                );
                                              },
                                              child: Icon(
                                                _fav[index]
                                                    ? Icons.favorite
                                                    : Icons.favorite_border,
                                                size: 23,
                                                color: _fav[index]
                                                    ? Colors.redAccent
                                                    : Colors.black,
                                              ),
                                              backgroundColor: Colors.white38,
                                              mini: true,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.only(
                                      bottom: 5, right: 15, left: 15),
                                  title: Text(
                                    _rname[index],
                                    style: GoogleFonts.merriweather(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Surat,Gujarat ',
                                            style: GoogleFonts.ptSans(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              color: Colors.black38,
                                            ),
                                          ),
                                          Icon(
                                            Icons.location_on_sharp,
                                            color: Colors.tealAccent,
                                            size: 12,
                                          ),
                                          Text(
                                            ' 2 km to city',
                                            style: GoogleFonts.ptSans(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              color: Colors.black38,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(
                                                () {
                                                  _star[index] = !_star[index];
                                                  if (_star[index] == false) {
                                                    _star[index] = false;
                                                    _star1[index] = false;
                                                    _star2[index] = false;
                                                    _star3[index] = false;
                                                    _star4[index] = false;
                                                  }
                                                },
                                              );
                                            },
                                            child: Icon(
                                              _star[index]
                                                  ? Icons.star
                                                  : Icons.star_border,
                                              size: 15,
                                              color: _star[index]
                                                  ? Colors.yellow
                                                  : Colors.black,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(
                                                () {
                                                  _star1[index] =
                                                      !_star1[index];
                                                  if (_star1[index] == true) {
                                                    _star[index] = true;
                                                  }
                                                  if (_star1[index] == false) {
                                                    _star1[index] = false;
                                                    _star2[index] = false;
                                                    _star3[index] = false;
                                                    _star4[index] = false;
                                                  }
                                                },
                                              );
                                            },
                                            child: Icon(
                                              _star1[index]
                                                  ? Icons.star
                                                  : Icons.star_border,
                                              size: 15,
                                              color: _star1[index]
                                                  ? Colors.yellow
                                                  : Colors.black,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(
                                                () {
                                                  _star2[index] =
                                                      !_star2[index];
                                                  if (_star2[index] == true) {
                                                    _star[index] = true;
                                                    _star1[index] = true;
                                                  }
                                                  if (_star2[index] == false) {
                                                    _star2[index] = false;
                                                    _star3[index] = false;
                                                    _star4[index] = false;
                                                  }
                                                },
                                              );
                                            },
                                            child: Icon(
                                              _star2[index]
                                                  ? Icons.star
                                                  : Icons.star_border,
                                              size: 15,
                                              color: _star2[index]
                                                  ? Colors.yellow
                                                  : Colors.black,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(
                                                () {
                                                  _star3[index] =
                                                      !_star3[index];
                                                  if (_star3[index] == true) {
                                                    _star[index] = true;
                                                    _star1[index] = true;
                                                    _star2[index] = true;
                                                  }
                                                  if (_star3[index] == false) {
                                                    _star3[index] = false;
                                                    _star4[index] = false;
                                                  }
                                                },
                                              );
                                            },
                                            child: Icon(
                                              _star3[index]
                                                  ? Icons.star
                                                  : Icons.star_border,
                                              size: 15,
                                              color: _star3[index]
                                                  ? Colors.yellow
                                                  : Colors.black,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(
                                                () {
                                                  _star4[index] =
                                                      !_star4[index];
                                                  if (_star4[index] == true) {
                                                    _star[index] = true;
                                                    _star1[index] = true;
                                                    _star2[index] = true;
                                                    _star3[index] = true;
                                                  }
                                                  if (_star4[index] == false) {
                                                    _star4[index] = false;
                                                  }
                                                },
                                              );
                                            },
                                            child: Icon(
                                              _star4[index]
                                                  ? Icons.star
                                                  : Icons.star_border,
                                              size: 15,
                                              color: _star4[index]
                                                  ? Colors.yellow
                                                  : Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  trailing: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: _price[index],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '\n/Per Night',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawer() {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, left: 20),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.topRight,
                begin: Alignment.bottomLeft,
                colors: [
                  Colors.amber,
                  Colors.yellow,
                ],
              ),
            ),
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/profiles/mark-zuckerberg.jpg'),
                  radius: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    widget.email[0].toUpperCase() +
                        widget.email.substring(1).toLowerCase(),
                    style: GoogleFonts.allerta(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.home),
            label: Text('Home'),
            style: _textButton(),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.person),
            label: Text('Help'),
            style: _textButton(),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.help),
            label: Text('FeedBack'),
            style: _textButton(),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.supervisor_account),
            label: Text('Invite Friend'),
            style: _textButton(),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.share),
            label: Text('Rate the App'),
            style: _textButton(),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.announcement),
            label: Text('About Us'),
            style: _textButton(),
          ),
          SizedBox(
            height: 300,
          ),
          Divider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                selectedTileColor: Colors.white,
                onTap: () {
                  setState(
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MyLogin(),
                        ),
                      );
                    },
                  );
                },
                title: Text(
                  'Sign Out',
                ),
                trailing: Icon(
                  Icons.logout,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  ButtonStyle _textButton() {
    return ButtonStyle(
      fixedSize: MaterialStateProperty.all(
        Size.fromWidth(250),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(20),
          ),
        ),
      ),
      padding: MaterialStateProperty.all(
        EdgeInsets.only(left: 10),
      ),
      overlayColor: MaterialStateProperty.all(Colors.amber[200]),
      foregroundColor: MaterialStateProperty.all(Colors.black),
      alignment: Alignment.centerLeft,
    );
  }
}
