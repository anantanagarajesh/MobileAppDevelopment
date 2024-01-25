import 'package:flutter/material.dart';
import 'package:myapp/page-1/donors-BqN.dart';
import 'package:myapp/page-1/donors.dart';
import 'package:myapp/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class hospital2 extends StatelessWidget {
  // Define a method to launch URLs
  void _launchURL() async {
    final Uri url = Uri.parse(
        'https://www.google.com/maps'); // Parse the URL into a Uri object
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390.0000305176;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    // Function to create text field decoration
    InputDecoration textFieldDecoration(String label) {
      return InputDecoration(
        labelText: label,
        fillColor: Color(0xffd9d9d9),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20 * fem),
          borderSide: BorderSide.none,
        ),
        labelStyle: SafeGoogleFont(
          'Inknut Antiqua',
          fontSize: 20 * ffem,
          fontWeight: FontWeight.w400,
          height: 2.5775 * ffem / fem,
          color: Color(0xff555555), // Changed to a darker color for visibility
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        width: double.infinity,
        height: 844 * fem,
        child: Stack(
          children: [
            Positioned(
              // rectangle10CzY (142:107)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 390 * fem,
                  height: 844 * fem,
                  child: Material(
                    borderRadius: BorderRadius.circular(70 * fem),
                    color: Color(
                        0xfffffefe), // Assuming this is the color you want for the material
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70 * fem),
                        color: Color(0xfffffefe),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 26 * fem,
              top: 452 * fem,
              child: Material(
                color: Colors
                    .transparent, // Use a transparent color to maintain the image visibility
                child: InkWell(
                  onTap: _launchURL, // Add the launch URL function here
                  child: Image.asset(
                    'assets/page-1/images/mask-group-E36.png',
                    width: 344 * fem,
                    height: 141 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // doctornameR6c (142:112)
              left: 24 * fem,
              top: 303 * fem,
              child: Align(
                child: SizedBox(
                  width: 146 * fem,
                  height: 52 * fem,
                  child: Text(
                    'Doctor Name',
                    style: SafeGoogleFont(
                      'Inknut Antiqua',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 2.5775 * ffem / fem,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // hospitallocationWdr (142:121)
              left: 24 * fem,
              top: 400 * fem,
              child: Align(
                child: SizedBox(
                  width: 200 * fem,
                  height: 52 * fem,
                  child: Text(
                    'Hospital Location',
                    style: SafeGoogleFont(
                      'Inknut Antiqua',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 2.5775 * ffem / fem,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // hospitalnameo7A (142:113)
              left: 24 * fem,
              top: 206.5 * fem,
              child: Align(
                child: SizedBox(
                  width: 165 * fem,
                  height: 52 * fem,
                  child: Text(
                    'Hospital Name',
                    style: SafeGoogleFont(
                      'Inknut Antiqua',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 2.5775 * ffem / fem,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 26.5 * fem,
              top: 257 * fem,
              child: Material(
                elevation:
                    0, // You can adjust this value for shadow effect if you want
                borderRadius: BorderRadius.circular(20 * fem),
                child: Container(
                  width: 337 * fem,
                  height: 46.94 * fem,
                  child: TextField(
                    decoration: textFieldDecoration('Hospital Name'),
                  ),
                ),
              ),
            ),

            // Replace Positioned container with a TextField for doctor name
            Positioned(
              left: 29 * fem,
              top: 353 * fem,
              child: Material(
                borderRadius: BorderRadius.circular(
                    20 * fem), // Set border radius for Material
                color: Colors
                    .transparent, // Assuming you want to keep the container color
                child: Container(
                  width: 337 * fem,
                  height: 46.94 * fem,
                  child: TextField(
                    decoration: textFieldDecoration('Doctor Name'),
                  ),
                ),
              ),
            ),

            Positioned(
              // group46Wfn (142:129)
              left: 133 * fem,
              top: 760 * fem,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Donors()),
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 124 * fem,
                  height: 52 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffff3737),
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  child: Center(
                    child: Center(
                      child: Text(
                        'Request',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inknut Antiqua',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 2.5775 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group32Y6g (142:108)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                width: 390 * fem,
                height: 194 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70 * fem),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle18d88 (142:109)
                      left: 0.0051269531 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 389.99 * fem,
                          height: 194 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70 * fem),
                              color: Color(0xffff3737),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // hospitaldetailsw8p (142:110)
                      left: 46.9975128174 * fem,
                      top: 51.2435913086 * fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 287 * fem,
                            height: 83 * fem,
                            child: Text(
                              'Hospital Details',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inknut Antiqua',
                                fontSize: 32 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2.5775 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vectordXS (142:111)
                      left: 36 * fem,
                      top: 33 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 12 * fem,
                          height: 20 * fem,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Image.asset(
                              'assets/page-1/images/vector-o1e.png',
                              width: 12 * fem,
                              height: 20 * fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
