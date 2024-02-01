import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/DonationPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DonorBG extends StatefulWidget {
  @override
  _DonorBGState createState() => _DonorBGState();
}

class _DonorBGState extends State<DonorBG> {
  String? selectedBloodGroup;
  Widget bloodGroupButton(String bloodType) {
    double baseWidth = 391;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    bool isSelected = selectedBloodGroup == bloodType;
    return TextButton(
      onPressed: () {
        setState(() {
          selectedBloodGroup = isSelected ? null : bloodType;
        });
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20 * fem),
        ),
        backgroundColor: isSelected ? Color(0xffff3737) : Color(0xffd9d9d9),
      ),
      child: Container(
        width: 70 * fem,
        height: 70 * fem,
        alignment: Alignment.center,
        child: Text(
          bloodType,
          style: SafeGoogleFont(
            'Inknut Antiqua',
            fontSize: 32 * ffem,
            fontWeight: FontWeight.w400,
            color: isSelected ? Colors.white : Color(0xff000000),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
        // Navigate to login or signup page
      } else {
        print('User is signed in!');
        // Execute logic for signed-in user
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 391;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // bloodgroupTFa (94:98)
        width: double.infinity,
        height: 844 * fem,
        child: Container(
          // group451H6 (94:97)
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70 * fem),
          ),
          child: Stack(
            children: [
              Positioned(
                // rectangle4jit (37:12)
                left: 1 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 390 * fem,
                    height: 844 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70 * fem),
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // bloodqmv (17:7)
                left: 0 * fem,
                top: 0 * fem,
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                  width: 391 * fem,
                  height: 844 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70 * fem),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupud3iLig (9DSpGbzeqw87cZJqzSud3i)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 119.5 * fem),
                        width: double.infinity,
                        height: 296 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle4C8c (40:126)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 390 * fem,
                                  height: 296 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(70 * fem),
                                      color: Color(0xffff3737),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 26 * fem,
                              top: 50.0593261719 * fem,
                              child: GestureDetector(
                                onTap: () {
                                  // Navigate back to the previous page
                                  Navigator.pop(context);
                                },
                                child: Align(
                                  child: SizedBox(
                                    width: 12 * fem,
                                    height: 21.02 * fem,
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Image.asset(
                                        'assets/page-1/images/vector-h3i.png',
                                        width: 12 * fem,
                                        height: 21.02 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // bloodgroupAzY (39:75)
                              left: 77.5 * fem,
                              top: 111 * fem,
                              child: Center(
                                child: Align(
                                  child: SizedBox(
                                    width: 224 * fem,
                                    height: 83 * fem,
                                    child: Text(
                                      'Blood Group',
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
                          ],
                        ),
                      ),
                      Container(
                        // frame32G1z (90:245)
                        margin: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 20 * fem, 0 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group57zig (189:1553)
                              margin: EdgeInsets.fromLTRB(
                                  50 * fem, 0 * fem, 0 * fem, 0 * fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupmqtnXic (9DSpd1aKNMrMyhuHAkmQTn)
                                    margin: EdgeInsets.fromLTRB(
                                        20 * fem, 0 * fem, 19 * fem, 0 * fem),
                                    width: double.infinity,
                                    height: 83 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group1Fec (I189:1553;193:561)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 0 * fem),
                                          child: TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                            ),
                                            child: Container(
                                              width: 70 * fem,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20 * fem),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                top: 300 *
                                    fem, // You can adjust this value to move the buttons up
                                left: 0,
                                right: 0,
                                child: Container(
                                  // margin: EdgeInsets.fromLTRB(20 * fem, 0, 19 * fem, 0),
                                  child: Wrap(
                                    spacing:
                                        25, // Space between horizontal buttons
                                    runSpacing:
                                        15, // Space between lines of buttons
                                    children: [
                                      bloodGroupButton('A+'),
                                      bloodGroupButton('B+'),
                                      bloodGroupButton('O+'),
                                      bloodGroupButton('AB+'),
                                      bloodGroupButton('A-'),
                                      bloodGroupButton('B-'),
                                      bloodGroupButton('O-'),
                                      bloodGroupButton('AB-'),
                                    ],
                                  ),
                                )),
                            Container(
                              // group55MF2 (157:258)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 20 * fem, 0 * fem, 0 * fem),
                              width: double.infinity,
                              height: 83 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 20 *
                                        fem, // Adjust the top property as needed to place the button
                                    bottom: 0 * fem, // This is an example value
                                    left: 50 *
                                        fem, // Center the button horizontally
                                    right: 50 * fem,
                                    child: ElevatedButton(
                                      onPressed: selectedBloodGroup != null
                                          ? () async {
                                              try {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            DonationPage()));
                                                // Get the current user
                                                User? user = FirebaseAuth
                                                    .instance.currentUser;
                                                if (user != null) {
                                                  print("it is working");
                                                  // Path to the user's document in Firestore
                                                  DocumentReference userDoc =
                                                      FirebaseFirestore.instance
                                                          .collection(
                                                              'DonorBloodGroup')
                                                          .doc(user.uid);

                                                  // Update the user's profile with the selected blood group
                                                  await userDoc.set(
                                                      {
                                                        'BloodGroup':
                                                            selectedBloodGroup,
                                                      },
                                                      SetOptions(
                                                          merge:
                                                              true)); // Merge true to update the document without overwriting other fields

                                                  // Navigate to the DonationPage or show a success message
                                                }
                                              } catch (e) {
                                                // Handle errors, e.g., show an error message
                                                print(
                                                    "Error updating blood group: $e");
                                              }
                                            }
                                          : null, // Button is disabled if no blood group is selected
                                      // onPressed: selectedBloodGroup != null
                                      //     ? () {
                                      //         // Handle the request logic here
                                      //         Navigator.push(
                                      //           context,
                                      //           MaterialPageRoute(
                                      //               builder: (context) =>
                                      //                   DonationPage()), // Replace with your target page
                                      //         );
                                      //       }
                                      //     : null, // Button is disabled if no blood group is selected
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(
                                            0xffff3737), // Button background color
                                        disabledBackgroundColor: Color.fromARGB(
                                            255,
                                            236,
                                            135,
                                            135), // Button disabled color
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20 * fem),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20 * fem),
                                      ),
                                      child: Text(
                                        'Donate',
                                        style: TextStyle(
                                          fontSize: 24 * ffem,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:myapp/utils.dart';
// import 'package:myapp/page-1/DonationPage.dart';
// import 'package:myapp/page-1/login.dart';

// class DonorBG extends StatefulWidget {
//   // Remove 'const' from the constructor since we have non-final fields
//   DonorBG({Key? key}) : super(key: key);

//   @override
//   // Correct the state class name
//   _DonorBGState createState() => _DonorBGState();
// }

// class _DonorBGState extends State<DonorBG> {
//   // Move the button state variables to the state class
//   bool isButtonPressed1 = false;
//   bool isButtonPressed2 = false;
//   bool isButtonPressed3 = false;
//   bool isButtonPressed4 = false;
//   bool isButtonPressed5 = false;
//   bool isButtonPressed6 = false;
//   bool isButtonPressed7 = false;
//   bool isButtonPressed8 = false;
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 391;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         // bloodgroup6yr (157:122)
//         width: double.infinity,
//         height: 844 * fem,
//         child: Container(
//           // group45ri8 (157:123)
//           width: double.infinity,
//           height: double.infinity,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(70 * fem),
//           ),
//           child: Stack(
//             children: [
//               Positioned(
//                 // rectangle4bfi (157:124)
//                 left: 1 * fem,
//                 top: 0 * fem,
//                 child: Align(
//                   child: SizedBox(
//                     width: 390 * fem,
//                     height: 844 * fem,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(70 * fem),
//                         color: Color(0xffffffff),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 // bloodWng (157:125)
//                 left: 0 * fem,
//                 top: 0 * fem,
//                 child: Container(
//                   width: 391 * fem,
//                   height: 844 * fem,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(70 * fem),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         // autogroupnuvaRPr (9DSqUuJrMENGP18D9gNUVa)
//                         width: double.infinity,
//                         height: 296 * fem,
//                         child: Stack(
//                           children: [
//                             Positioned(
//                               // rectangle3ZW4 (157:127)
//                               left: 1 * fem,
//                               top: 0 * fem,
//                               child: Align(
//                                 child: SizedBox(
//                                   width: 390 * fem,
//                                   height: 296 * fem,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius:
//                                           BorderRadius.circular(70 * fem),
//                                       color: Color(0xffff3737),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               // rectangle4GvG (157:128)
//                               left: 0 * fem,
//                               top: 0 * fem,
//                               child: Align(
//                                 child: SizedBox(
//                                   width: 390 * fem,
//                                   height: 296 * fem,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius:
//                                           BorderRadius.circular(70 * fem),
//                                       color: Color(0xffff3737),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               left: 26 * fem,
//                               top: 50.0593261719 * fem,
//                               child: GestureDetector(
//                                 onTap: () {
//                                   // Navigate back to the previous page
//                                   Navigator.pop(context);
//                                 },
//                                 child: Align(
//                                   child: SizedBox(
//                                     width: 12 * fem,
//                                     height: 21.02 * fem,
//                                     child: TextButton(
//                                       onPressed: () {
//                                         Navigator.pop(context);
//                                       },
//                                       style: TextButton.styleFrom(
//                                         padding: EdgeInsets.zero,
//                                       ),
//                                       child: Image.asset(
//                                         'assets/page-1/images/vector-rRJ.png',
//                                         width: 12 * fem,
//                                         height: 21.02 * fem,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               // bloodgroupGYt (157:156)
//                               left: 77.5 * fem,
//                               top: 111 * fem,
//                               child: Center(
//                                 child: Align(
//                                   child: SizedBox(
//                                     width: 224 * fem,
//                                     height: 83 * fem,
//                                     child: Text(
//                                       'Blood Group',
//                                       textAlign: TextAlign.center,
//                                       style: SafeGoogleFont(
//                                         'Inknut Antiqua',
//                                         fontSize: 32 * ffem,
//                                         fontWeight: FontWeight.w400,
//                                         height: 2.5775 * ffem / fem,
//                                         color: Color(0xffffffff),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         // autogroupzxxukDA (9DSrJo6iX67nYPfJyYZxxU)
//                         padding: EdgeInsets.fromLTRB(
//                             18 * fem, 85 * fem, 19 * fem, 107 * fem),
//                         width: double.infinity,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Container(
//                               // autogroup4qpe5FS (9DSqbZnR3wasr2kK1D4QPE)
//                               margin: EdgeInsets.fromLTRB(
//                                   0 * fem, 0 * fem, 0 * fem, 71.5 * fem),
//                               padding: EdgeInsets.fromLTRB(
//                                   2 * fem, 17.5 * fem, 0 * fem, 0 * fem),
//                               width: double.infinity,
//                               height: 201.5 * fem,
//                               child: SizedBox(
//                                 // group57CL4 (189:1459)
//                                 width: double.infinity,
//                                 height: double.infinity,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupqyeywoS (9DSqheScmSViAAkdPvqYEY)
//                                       margin: EdgeInsets.fromLTRB(
//                                           0 * fem, 0 * fem, 0 * fem, 18 * fem),
//                                       width: double.infinity,
//                                       height: 83 * fem,
//                                       child: Row(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         children: [
//                                           Container(
//                                             // group1G52 (I189:1459;193:561)
//                                             margin: EdgeInsets.fromLTRB(0 * fem,
//                                                 0 * fem, 24 * fem, 0 * fem),
//                                             child: TextButton(
//                                               onPressed: () {},
//                                               style: TextButton.styleFrom(
//                                                 padding: EdgeInsets.zero,
//                                               ),
//                                               child: Container(
//                                                 width: 70 * fem,
//                                                 height: double.infinity,
//                                                 decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           20 * fem),
//                                                 ),
//                                                 child: Stack(
//                                                   children: [
//                                                     Positioned(
//                                                       // rectangle139uW (I189:1459;193:562)
//                                                       left: 0 * fem,
//                                                       top: 6.5 * fem,
//                                                       child: Align(
//                                                         child: SizedBox(
//                                                           width: 70 * fem,
//                                                           height: 70 * fem,
//                                                           child: Container(
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                           20 *
//                                                                               fem),
//                                                               color: const Color(
//                                                                   0xffd9d9d9),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                     Positioned(
//                                                       // aUB6 (I189:1459;193:563)
//                                                       left: 12.5 * fem,
//                                                       top: 0 * fem,
//                                                       child: Center(
//                                                         child: Align(
//                                                           child: SizedBox(
//                                                             width: 45 * fem,
//                                                             height: 83 * fem,
//                                                             child: Text(
//                                                               'A+',
//                                                               textAlign:
//                                                                   TextAlign
//                                                                       .center,
//                                                               style:
//                                                                   SafeGoogleFont(
//                                                                 'Inknut Antiqua',
//                                                                 fontSize:
//                                                                     32 * ffem,
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w400,
//                                                                 height: 2.5775 *
//                                                                     ffem /
//                                                                     fem,
//                                                                 color: const Color(
//                                                                     0xff000000),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           Container(
//                                             // group6AJp (I189:1459;193:537)
//                                             height: double.infinity,
//                                             decoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(
//                                                       20 * fem),
//                                             ),
//                                             child: Row(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               children: [
//                                                 TextButton(
//                                                   // group3WNg (I189:1459;193:538)
//                                                   onPressed: () {},
//                                                   style: TextButton.styleFrom(
//                                                     padding: EdgeInsets.zero,
//                                                   ),
//                                                   child: Container(
//                                                     width: 70 * fem,
//                                                     height: double.infinity,
//                                                     decoration: BoxDecoration(
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               20 * fem),
//                                                     ),
//                                                     child: Stack(
//                                                       children: [
//                                                         Positioned(
//                                                           // rectangle13dTJ (I189:1459;193:539)
//                                                           left: 0 * fem,
//                                                           top: 6.5 * fem,
//                                                           child: Align(
//                                                             child: SizedBox(
//                                                               width: 70 * fem,
//                                                               height: 70 * fem,
//                                                               child: Container(
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(20 *
//                                                                               fem),
//                                                                   color: Color(
//                                                                       0xffd9d9d9),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Positioned(
//                                                           // bx8C (I189:1459;193:540)
//                                                           left: 13.5 * fem,
//                                                           top: 0 * fem,
//                                                           child: Center(
//                                                             child: Align(
//                                                               child: SizedBox(
//                                                                 width: 43 * fem,
//                                                                 height:
//                                                                     83 * fem,
//                                                                 child: Text(
//                                                                   'B+',
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style:
//                                                                       SafeGoogleFont(
//                                                                     'Inknut Antiqua',
//                                                                     fontSize:
//                                                                         32 *
//                                                                             ffem,
//                                                                     fontWeight:
//                                                                         FontWeight
//                                                                             .w400,
//                                                                     height:
//                                                                         2.5775 *
//                                                                             ffem /
//                                                                             fem,
//                                                                     color: Color(
//                                                                         0xff000000),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 SizedBox(
//                                                   width: 24 * fem,
//                                                 ),
//                                                 TextButton(
//                                                   // group41MN (I189:1459;193:541)
//                                                   onPressed: () {},
//                                                   style: TextButton.styleFrom(
//                                                     padding: EdgeInsets.zero,
//                                                   ),
//                                                   child: Container(
//                                                     width: 70 * fem,
//                                                     height: double.infinity,
//                                                     decoration: BoxDecoration(
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               20 * fem),
//                                                     ),
//                                                     child: Stack(
//                                                       children: [
//                                                         Positioned(
//                                                           // rectangle13LuS (I189:1459;193:542)
//                                                           left: 0 * fem,
//                                                           top: 6.5 * fem,
//                                                           child: Align(
//                                                             child: SizedBox(
//                                                               width: 70 * fem,
//                                                               height: 70 * fem,
//                                                               child: Container(
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(20 *
//                                                                               fem),
//                                                                   color: Color(
//                                                                       0xffd9d9d9),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Positioned(
//                                                           // o4aY (I189:1459;193:543)
//                                                           left: 11.5 * fem,
//                                                           top: 0 * fem,
//                                                           child: Center(
//                                                             child: Align(
//                                                               child: SizedBox(
//                                                                 width: 47 * fem,
//                                                                 height:
//                                                                     83 * fem,
//                                                                 child: Text(
//                                                                   'O+',
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style:
//                                                                       SafeGoogleFont(
//                                                                     'Inknut Antiqua',
//                                                                     fontSize:
//                                                                         32 *
//                                                                             ffem,
//                                                                     fontWeight:
//                                                                         FontWeight
//                                                                             .w400,
//                                                                     height:
//                                                                         2.5775 *
//                                                                             ffem /
//                                                                             fem,
//                                                                     color: Color(
//                                                                         0xff000000),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 SizedBox(
//                                                   width: 24 * fem,
//                                                 ),
//                                                 Container(
//                                                   // group5weL (I189:1459;193:544)
//                                                   margin: EdgeInsets.fromLTRB(
//                                                       0 * fem,
//                                                       6.5 * fem,
//                                                       0 * fem,
//                                                       6.5 * fem),
//                                                   child: TextButton(
//                                                     onPressed: () {},
//                                                     style: TextButton.styleFrom(
//                                                       padding: EdgeInsets.zero,
//                                                     ),
//                                                     child: Container(
//                                                       width: 70 * fem,
//                                                       height: double.infinity,
//                                                       decoration: BoxDecoration(
//                                                         color:
//                                                             Color(0xffd9d9d9),
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(
//                                                                     20 * fem),
//                                                       ),
//                                                       child: Center(
//                                                         child: Center(
//                                                           child: Text(
//                                                             'AB+',
//                                                             textAlign: TextAlign
//                                                                 .center,
//                                                             style:
//                                                                 SafeGoogleFont(
//                                                               'Inknut Antiqua',
//                                                               fontSize:
//                                                                   20 * ffem,
//                                                               fontWeight:
//                                                                   FontWeight
//                                                                       .w400,
//                                                               height: 2.5775 *
//                                                                   ffem /
//                                                                   fem,
//                                                               color: Color(
//                                                                   0xff000000),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       // group7y5E (I189:1459;193:547)
//                                       width: double.infinity,
//                                       height: 83 * fem,
//                                       child: Row(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         children: [
//                                           TextButton(
//                                             // frame48JtC (I189:1459;193:548)
//                                             onPressed: () {},
//                                             style: TextButton.styleFrom(
//                                               padding: EdgeInsets.zero,
//                                             ),
//                                             child: SizedBox(
//                                               width: 70 * fem,
//                                               height: double.infinity,
//                                               child: Container(
//                                                 // group1qt8 (I189:1459;193:549)
//                                                 width: double.infinity,
//                                                 height: double.infinity,
//                                                 decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           20 * fem),
//                                                 ),
//                                                 child: Stack(
//                                                   children: [
//                                                     Positioned(
//                                                       // rectangle13Bh6 (I189:1459;193:550)
//                                                       left: 0 * fem,
//                                                       top: 6.5 * fem,
//                                                       child: Align(
//                                                         child: SizedBox(
//                                                           width: 70 * fem,
//                                                           height: 70 * fem,
//                                                           child: Container(
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                           20 *
//                                                                               fem),
//                                                               color: Color(
//                                                                   0xFFD9D9D9),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                     Positioned(
//                                                       // atLc (I189:1459;193:551)
//                                                       left: 12.5 * fem,
//                                                       top: 0 * fem,
//                                                       child: Center(
//                                                         child: Align(
//                                                           child: SizedBox(
//                                                             width: 45 * fem,
//                                                             height: 83 * fem,
//                                                             child: Text(
//                                                               'A-',
//                                                               textAlign:
//                                                                   TextAlign
//                                                                       .center,
//                                                               style:
//                                                                   SafeGoogleFont(
//                                                                 'Inknut Antiqua',
//                                                                 fontSize:
//                                                                     32 * ffem,
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w400,
//                                                                 height: 2.5775 *
//                                                                     ffem /
//                                                                     fem,
//                                                                 color: Color(
//                                                                     0xff000000),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             width: 24 * fem,
//                                           ),
//                                           TextButton(
//                                             // group3m9W (I189:1459;193:552)
//                                             onPressed: () {},
//                                             style: TextButton.styleFrom(
//                                               padding: EdgeInsets.zero,
//                                             ),
//                                             child: Container(
//                                               width: 70 * fem,
//                                               height: double.infinity,
//                                               decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                         20 * fem),
//                                               ),
//                                               child: Stack(
//                                                 children: [
//                                                   Positioned(
//                                                     // rectangle13HtY (I189:1459;193:553)
//                                                     left: 0 * fem,
//                                                     top: 6.5 * fem,
//                                                     child: Align(
//                                                       child: SizedBox(
//                                                         width: 70 * fem,
//                                                         height: 70 * fem,
//                                                         child: Container(
//                                                           decoration:
//                                                               BoxDecoration(
//                                                             borderRadius:
//                                                                 BorderRadius
//                                                                     .circular(
//                                                                         20 *
//                                                                             fem),
//                                                             color: Color(
//                                                                 0xffd9d9d9),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Positioned(
//                                                     // bCkc (I189:1459;193:554)
//                                                     left: 14 * fem,
//                                                     top: 0 * fem,
//                                                     child: Center(
//                                                       child: Align(
//                                                         child: SizedBox(
//                                                           width: 42 * fem,
//                                                           height: 83 * fem,
//                                                           child: Text(
//                                                             'B-',
//                                                             textAlign: TextAlign
//                                                                 .center,
//                                                             style:
//                                                                 SafeGoogleFont(
//                                                               'Inknut Antiqua',
//                                                               fontSize:
//                                                                   32 * ffem,
//                                                               fontWeight:
//                                                                   FontWeight
//                                                                       .w400,
//                                                               height: 2.5775 *
//                                                                   ffem /
//                                                                   fem,
//                                                               color: Color(
//                                                                   0xff000000),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             width: 24 * fem,
//                                           ),
//                                           TextButton(
//                                             // group4UCL (I189:1459;193:555)
//                                             onPressed: () {},
//                                             style: TextButton.styleFrom(
//                                               padding: EdgeInsets.zero,
//                                             ),
//                                             child: Container(
//                                               width: 70 * fem,
//                                               height: double.infinity,
//                                               decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                         20 * fem),
//                                               ),
//                                               child: Stack(
//                                                 children: [
//                                                   Positioned(
//                                                     // rectangle13bXr (I189:1459;193:556)
//                                                     left: 0 * fem,
//                                                     top: 6.5 * fem,
//                                                     child: Align(
//                                                       child: SizedBox(
//                                                         width: 70 * fem,
//                                                         height: 70 * fem,
//                                                         child: Container(
//                                                           decoration:
//                                                               BoxDecoration(
//                                                             borderRadius:
//                                                                 BorderRadius
//                                                                     .circular(
//                                                                         20 *
//                                                                             fem),
//                                                             color: Color(
//                                                                 0xffd9d9d9),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Positioned(
//                                                     // oiMa (I189:1459;193:557)
//                                                     left: 11.5 * fem,
//                                                     top: 0 * fem,
//                                                     child: Center(
//                                                       child: Align(
//                                                         child: SizedBox(
//                                                           width: 47 * fem,
//                                                           height: 83 * fem,
//                                                           child: Text(
//                                                             'O-',
//                                                             textAlign: TextAlign
//                                                                 .center,
//                                                             style:
//                                                                 SafeGoogleFont(
//                                                               'Inknut Antiqua',
//                                                               fontSize:
//                                                                   32 * ffem,
//                                                               fontWeight:
//                                                                   FontWeight
//                                                                       .w400,
//                                                               height: 2.5775 *
//                                                                   ffem /
//                                                                   fem,
//                                                               color: Color(
//                                                                   0xff000000),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             width: 24 * fem,
//                                           ),
//                                           Container(
//                                             // group5odv (I189:1459;193:558)
//                                             margin: EdgeInsets.fromLTRB(0 * fem,
//                                                 6.5 * fem, 0 * fem, 6.5 * fem),
//                                             child: TextButton(
//                                               onPressed: () {},
//                                               style: TextButton.styleFrom(
//                                                 padding: EdgeInsets.zero,
//                                               ),
//                                               child: Container(
//                                                 width: 70 * fem,
//                                                 height: double.infinity,
//                                                 decoration: BoxDecoration(
//                                                   color: Color(0xffd9d9d9),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           20 * fem),
//                                                 ),
//                                                 child: Center(
//                                                   child: Center(
//                                                     child: Text(
//                                                       'AB-',
//                                                       textAlign:
//                                                           TextAlign.center,
//                                                       style: SafeGoogleFont(
//                                                         'Inknut Antiqua',
//                                                         fontSize: 20 * ffem,
//                                                         fontWeight:
//                                                             FontWeight.w400,
//                                                         height:
//                                                             2.5775 * ffem / fem,
//                                                         color:
//                                                             Color(0xff000000),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               // group56r6Q (157:259)
//                               margin: EdgeInsets.fromLTRB(
//                                   70 * fem, 0 * fem, 69 * fem, 0 * fem),
//                               width: double.infinity,
//                               height: 83 * fem,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20 * fem),
//                               ),
//                               child: Stack(
//                                 children: [
//                                   Positioned(
//                                     // rectangle14yRv (157:260)
//                                     left: 0 * fem,
//                                     top: 9 * fem,
//                                     child: Align(
//                                       child: SizedBox(
//                                         width: 215 * fem,
//                                         height: 70 * fem,
//                                         child: TextButton(
//                                           onPressed: () {},
//                                           style: TextButton.styleFrom(
//                                             padding: EdgeInsets.zero,
//                                           ),
//                                           child: Container(
//                                             decoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(
//                                                       20 * fem),
//                                               color: Color(0xffff3737),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Positioned(
//                                     left: 49.5 * fem,
//                                     top: 0 * fem,
//                                     child: GestureDetector(
//                                       onTap: () {
//                                         // Navigate to the "Donation.dart" page
//                                         Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   DonationPage()), // Replace 'DonationScreen' with the actual class name
//                                         );
//                                       },
//                                       child: Center(
//                                         child: Align(
//                                           child: SizedBox(
//                                             width: 128 * fem,
//                                             height: 60 * fem,
//                                             child: Container(
//                                               decoration: BoxDecoration(
//                                                 color: Color(
//                                                     0xffff3737), // You can customize the color if needed
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                         20 * fem),
//                                               ),
//                                               child: Center(
//                                                 child: Text(
//                                                   'Donate',
//                                                   textAlign: TextAlign.center,
//                                                   style: SafeGoogleFont(
//                                                     'Inknut Antiqua',
//                                                     fontSize: 32 * ffem,
//                                                     fontWeight: FontWeight.w400,
//                                                     height: 2.5775 * ffem / fem,
//                                                     color: Colors.black,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
