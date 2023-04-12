import 'package:flutter/material.dart';
import 'package:tugas_pbm_pertemuan_6/page/register_page.dart';

TextEditingController controller1 = TextEditingController();
TextEditingController controller2 = TextEditingController();

class HomePage extends StatefulWidget {
  // const HomePage({super.key, required this.dataInputan});
  const HomePage({super.key});

  // final List<String?> dataInputan;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _bmi = 0;
  int bb = 0;
  int tb = 0;

  void _bmiCalculate() {
    setState(
      () {
        // rumus bmi
        // kg/m^2
        _bmi = bb / ((tb / 100) * (tb / 100));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // final dataInputan = widget.dataInputan;
    // String? uname;
    // if (dataInputan.isNotEmpty) {
    //   uname = dataInputan[0];
    // }

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 160,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 253, 196, 115),
                  Color.fromARGB(255, 255, 109, 190)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: Column(
                      children: [
                        Text(
                          // "Welcome, $uname :)",
                          "Welcome, ${dataInputan[0]} :)",
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 55, 55, 55),
                            fontStyle: FontStyle.normal,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const Text(
                          'BMI calculator',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 55, 55, 55),
                            fontStyle: FontStyle.normal,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 40, top: 40),
                    child: Column(
                      children: [
                        const Text(
                          'Your BMI Score',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 55, 55, 55),
                            fontStyle: FontStyle.normal,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '$_bmi',
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 55, 55, 55),
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    child: TextFormField(
                      controller: controller1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Tinggi Bandan* (cm)',
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 253, 196, 115),
                              width: 2),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 109, 190),
                              width: 1),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 109, 190),
                              width: 2),
                        ),
                      ),
                      style: const TextStyle(fontSize: 16),
                      onChanged: (value) {
                        tb = int.tryParse(value) ?? 0;
                      },
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'Fill out this!';
                      //   } else {
                      //     return null;
                      //   }
                      // },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: controller2,
                      decoration: InputDecoration(
                        hintText: 'Berat Badan* (kg)',
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 253, 196, 115),
                              width: 2),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 109, 190),
                              width: 1),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 109, 190),
                              width: 2),
                        ),
                      ),
                      style: const TextStyle(fontSize: 16),
                      onChanged: (value) {
                        bb = int.tryParse(value) ?? 0;
                      },
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'Fill out this!';
                      //   } else {
                      //     return null;
                      //   }
                      // },
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 253, 196, 115),
                          Color.fromARGB(255, 255, 109, 190)
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    margin: const EdgeInsets.only(top: 50, bottom: 50),
                    child: ElevatedButton(
                      onPressed: _bmiCalculate,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        textStyle: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        backgroundColor: const Color.fromARGB(0, 255, 109, 190),
                      ),
                      child: const Text('Calculate BMI'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
