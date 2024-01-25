import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        // signupowr (90:248)
        width: double.infinity,
        height: 844 * fem,
        child: Stack(
          children: [
            // Positioned(
            //   // group283Dv (85:44)
            //   left: 27 * fem,
            //   top: 445 * fem,
            //   child: Container(
            //     width: 337 * fem,
            //     height: 46.94 * fem,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20 * fem),
            //     ),
            //     child: Center(
            //       // rectangle21jcY (84:39)
            //       child: SizedBox(
            //         width: double.infinity,
            //         height: 46.94 * fem,
            //         child: Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20 * fem),
            //             color: Color.fromARGB(255, 0, 0, 0),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              // rectangle1237S (39:32)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 390 * fem,
                  height: 844 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70 * fem),
                      color: Color(0xfffffefe),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // password8ua (84:35)
              left: 24 * fem,
              top: 297.9692306519 * fem,
              child: Align(
                child: SizedBox(
                  width: 105 * fem,
                  height: 52 * fem,
                  child: Text(
                    'Password',
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
              // phonenoBcx (87:33)
              left: 29 * fem,
              top: 492 * fem,
              child: Align(
                child: SizedBox(
                  width: 110 * fem,
                  height: 52 * fem,
                  child: Text(
                    'Phone no.',
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
              // confirmpasswordeFe (84:38)
              left: 23 * fem,
              top: 396 * fem,
              child: Align(
                child: SizedBox(
                  width: 202 * fem,
                  height: 52 * fem,
                  child: Text(
                    'Confirm Password',
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
              // emailiWQ (84:32)
              left: 24 * fem,
              top: 201.4710063934 * fem,
              child: Align(
                child: SizedBox(
                  width: 65 * fem,
                  height: 52 * fem,
                  child: Text(
                    'Email',
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
              // rectangle18QPE (84:31)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 390 * fem,
                  height: 194.77 * fem,
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
              left: 120.5 * fem,
              top: 44.9437866211 * fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 134 * fem,
                    height: 83 * fem,
                    child: Text(
                      'Sign Up',
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
              left: 31 * fem,
              top: 48 * fem,
              child: GestureDetector(
                onTap: () {
                  // Navigate back to the previous page
                  Navigator.pop(context);
                },
                child: Align(
                  child: SizedBox(
                    width: 12 * fem,
                    height: 20 * fem,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        print("going back");
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/page-1/images/vector-bS4.png',
                        width: 12 * fem,
                        height: 20 * fem,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle19RxY (84:33)
              left: 26.5 * fem,
              top: 252 * fem,
              child: Align(
                child: SizedBox(
                  width: 337 * fem,
                  height: 46.94 * fem,
                  child: Material(
                    borderRadius: BorderRadius.circular(20 * fem),
                    elevation:
                        2, // Optional: Adds a subtle shadow for depth (remove if not needed)
                    child: TextFormField(
                      keyboardType: TextInputType
                          .emailAddress, // Optimizes the keyboard for email input
                      decoration: InputDecoration(
                        hintText:
                            'example@gmail.com', // Placeholder text for email
                        filled: true, // Fill the field with a background color
                        fillColor: Color(
                            0xffd9d9d9), // Background color for the input field
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20 * fem),
                          borderSide: BorderSide
                              .none, // Removes the default underline border
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20 * fem,
                            vertical: 12 * fem), // Padding inside the field
                      ),
                      style: TextStyle(
                        fontFamily: 'Inknut Antiqua',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        color: Colors.black, // Text color for the input
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle20aix (84:36)
              left: 24 * fem,
              top: 349 * fem,
              child: Align(
                child: SizedBox(
                  width: 337 * fem,
                  height: 46.94 * fem,
                  child: Material(
                    borderRadius: BorderRadius.circular(20 * fem),
                    elevation:
                        2, // Optional: Adds a subtle shadow for depth (remove if not needed)
                    child: TextFormField(
                      obscureText:
                          !_isPasswordVisible, // Ensures the text is hidden for password input
                      decoration: InputDecoration(
                        hintText: 'Password', // Placeholder text for password
                        filled: true, // Fill the field with a background color
                        fillColor: Color(
                            0xffd9d9d9), // Background color for the input field
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20 * fem),
                          borderSide: BorderSide
                              .none, // Removes the default underline border
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20 * fem,
                            vertical: 12 * fem), // Padding inside the field
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ), // Toggle visibility icon
                          onPressed: _togglePasswordVisibility,
                        ),
                      ),
                      style: TextStyle(
                        fontFamily:
                            'Inknut Antiqua', // Specify your font family
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        color: Colors.black, // Text color for the input
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
            ),
            // Positioned(
            //   // rectangle20aix (84:36)
            //   left: 24 * fem,
            //   top: 349 * fem,
            //   child: Align(
            //     child: SizedBox(
            //       width: 337 * fem,
            //       height: 46.94 * fem,
            //       child: Container(
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20 * fem),
            //           color: Color(0xffd9d9d9),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              // rectangle20aix (84:36)
              left: 24 * fem,
              top: 445 * fem,
              child: Align(
                child: SizedBox(
                  width: 337 * fem,
                  height: 46.94 * fem,
                  child: Material(
                    borderRadius: BorderRadius.circular(20 * fem),
                    elevation:
                        2, // Optional: Adds a subtle shadow for depth (remove if not needed)
                    child: TextFormField(
                      obscureText:
                          !_isPasswordVisible, // Ensures the text is hidden for password input
                      decoration: InputDecoration(
                        hintText:
                            'Confirm Password', // Placeholder text for password
                        filled: true, // Fill the field with a background color
                        fillColor: Color(
                            0xffd9d9d9), // Background color for the input field
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20 * fem),
                          borderSide: BorderSide
                              .none, // Removes the default underline border
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20 * fem,
                            vertical: 12 * fem), // Padding inside the field
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ), // Toggle visibility icon
                          onPressed: _togglePasswordVisibility,
                        ),
                      ),
                      style: TextStyle(
                        fontFamily:
                            'Inknut Antiqua', // Specify your font family
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        color: Colors.black, // Text color for the input
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
            ),
            // Positioned(
            //   // rectangle21VL8 (98:101)
            //   left: 27 * fem,
            //   top: 445 * fem,
            //   child: Align(
            //     child: SizedBox(
            //       width: 337 * fem,
            //       height: 46.94 * fem,
            //       child: Container(
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20 * fem),
            //           color: Color(0xffd9d9d9),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              // group34na8 (87:34)
              left: 27 * fem,
              top: 532.5 * fem,
              child: Container(
                width: 337 * fem,
                height: 52 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20 * fem),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle21g9i (87:35)
                      left: 0 * fem,
                      top: 2.5 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 337 * fem,
                          height: 47 * fem,
                          child: Material(
                            borderRadius: BorderRadius.circular(20 * fem),
                            elevation:
                                2, // Optional: Adds a subtle shadow for depth (remove if not needed)
                            child: TextFormField(
                              keyboardType: TextInputType
                                  .phone, // Optimizes the keyboard for phone number input
                              decoration: InputDecoration(
                                hintText:
                                    '+91-XXXXXXXXXX', // Placeholder text for phone number
                                filled:
                                    true, // Fill the field with a background color
                                fillColor: Color(
                                    0xffd9d9d9), // Background color for the input field
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20 * fem),
                                  borderSide: BorderSide
                                      .none, // Removes the default underline border
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20 * fem,
                                    vertical:
                                        12 * fem), // Padding inside the field
                              ),
                              style: TextStyle(
                                fontFamily: 'Inknut Antiqua',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w400,
                                color: Colors.black, // Text color for the input
                              ),
                            ),
                          ),
                        ),
                      ),
                    )

                    // Positioned(
                    //   // rectangle21g9i (87:35)
                    //   left: 0 * fem,
                    //   top: 2.5 * fem,
                    //   child: Align(
                    //     child: SizedBox(
                    //       width: 337 * fem,
                    //       height: 47 * fem,
                    //       child: Container(
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(20 * fem),
                    //           color: Color(0xffd9d9d9),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    // Positioned(
                    //   // xxxxxxxxxxyec (87:36)
                    //   left: 18.5 * fem,
                    //   top: 0 * fem,
                    //   child: Center(
                    //     child: Align(
                    //       child: SizedBox(
                    //         width: 220 * fem,
                    //         height: 52 * fem,
                    //         child: Text(
                    //           '+91-XXXXXXXXXX',
                    //           textAlign: TextAlign.center,
                    //           style: SafeGoogleFont(
                    //             'Inknut Antiqua',
                    //             fontSize: 20 * ffem,
                    //             fontWeight: FontWeight.w400,
                    //             height: 2.5775 * ffem / fem,
                    //             color: Color(0xffffffff),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 23 * fem,
              top: 636 * fem,
              child: GestureDetector(
                onTap: () {
                  // Navigate to the "login.dart" page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Login()), // Replace 'LoginScreen' with the actual class name
                  );
                },
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Login()), // Replace 'LoginScreen' with the actual class name
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: SizedBox(
                    width: 349 * fem,
                    height: 64 * fem,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffff3737),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Inknut Antiqua',
                            fontSize: 24 * ffem,
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
            ),
          ],
        ),
      ),
    );
  }
}
