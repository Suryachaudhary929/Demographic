// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:demographic_information/Obstacle%20Details/obstacledetails.dart';
import 'package:demographic_information/SignUp&Login/login.dart';
import 'package:demographic_information/Vision/Vision_test.dart';
import 'package:flutter/material.dart';
import 'package:demographic_information/DemographicInfo/demo_graphicinfo.dart';
import 'package:demographic_information/SystemCond&Eye%20exam/systemcond.dart';

// class Clinical extends StatelessWidget {
//   const Clinical({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, Constraints) {
//       if (Constraints.maxWidth >= 834) {
//         return ClinicalInfo();
//       } else if (Constraints.maxWidth >= 834 && Constraints.maxWidth < 1194) {
//         return ClinicalInfo();
//       } else {
//         return ClinicalInfo();
//       }
//     });
//   }
// }

class ClinicalInfo extends StatefulWidget {
  final Map<String, dynamic> formData;

  const ClinicalInfo({
    Key? key,
    required this.formData,
  }) : super(key: key);
 

  @override
  State<ClinicalInfo> createState() => _ClinicalInfoState();
}

class _ClinicalInfoState extends State<ClinicalInfo> {
  String radioButton = "";
  String radioButton1 = "";
  String radioButton2 = "";
  String radioButton3 = "";
  String radioButton4 = "";
  String radioButton5 = "";
  String radioButton6 = "";
  String radioButton7 = "";
   final _formkey = GlobalKey<FormState>();
  final TextEditingController _reasonController = TextEditingController();
  final TextEditingController _reason1Controller = TextEditingController();
  final TextEditingController _reason2Controller = TextEditingController();
  final TextEditingController _reason3Controller = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _amount1Controller = TextEditingController();
  bool isLoading = false;
   @override
  void initState() {
    super.initState();
    radioButton = widget.formData['radiobutton'] ?? '';
    radioButton1 = widget.formData['radiobutton1'] ?? '';
    radioButton2 = widget.formData['radiobutton2'] ?? '';
    radioButton3 = widget.formData['radiobutton3'] ?? '';
    radioButton4 = widget.formData['radiobutton4'] ?? '';
    radioButton5 = widget.formData['radiobutton5'] ?? '';
    radioButton6 = widget.formData['radiobutton6'] ?? '';
    radioButton7 = widget.formData['radiobutton7'] ?? '';
    _reasonController.text = widget.formData['reason'] ?? '';
    _reason1Controller.text = widget.formData['reason1'] ?? '';
    _reason2Controller.text = widget.formData['reason2'] ?? '';
    _reason3Controller.text = widget.formData['reason3'] ?? '';
    _amountController.text = widget.formData['amount'] ?? '';
    _amount1Controller.text = widget.formData['amount1'] ?? '';
  }
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth: 834,
      ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 239, 239),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          title: Container(
            height: 80,
            width: 834,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0),
                  offset: Offset(0, 1),
                  blurRadius: 4,
                  spreadRadius: 3,
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TabletPage(formData:widget.formData)));
                          },
                          child: Container(
                              // margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 231, 228, 228),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        color: Colors.grey,
                        height: 3,
                        width: 70,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF0E4F94),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.check,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        color: Colors.grey,
                        height: 3,
                        width: 70,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SystemCondandEyeExam(formData: widget.formData,)));
                        },
                        child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 231, 228, 228),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "3",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        color: Colors.grey,
                        height: 3,
                        width: 70,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VisionScreen(formData: widget.formData,)));
                        },
                        child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 231, 228, 228),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "4",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        color: Colors.grey,
                        height: 3,
                        width: 70,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ObstacleDetailsPage(formData: widget.formData,)));
                        },
                        child: Expanded(
                          child: Container(
                              // margin: EdgeInsets.symmetric(horizontal: 20),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 231, 228, 228),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Personal info",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Clinical & Spectale info",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Systm Cond & Eye Exam",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Vision test",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Text(
                          "Obstacle details & payment",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              // bottom: size.height * 0.1,
              top: 15,

              // right: size.height * 0.1
            ),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Container(
                    height: 235,
                    width: 754,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          offset: Offset(0, 1),
                          blurRadius: 4,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'OD',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFDA0000),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 352,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'OS',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFDA0000),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'None',
                              groupValue: radioButton,
                              onChanged: (value) {
                                setState(() {
                                  radioButton = value.toString();
                                });
                              },
                            ),
                            Text(
                              "None",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 300,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'None',
                              groupValue: radioButton1,
                              onChanged: (value) {
                                setState(() {
                                  radioButton1 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "None",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Blurred distance vision',
                              groupValue: radioButton,
                              onChanged: (value) {
                                setState(() {
                                  radioButton = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Blurred distance vision",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 188,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Blurred distance vision',
                              groupValue: radioButton1,
                              onChanged: (value) {
                                setState(() {
                                  radioButton1 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Blurred distance vision",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Blurred near vision',
                              groupValue: radioButton,
                              onChanged: (value) {
                                setState(() {
                                  radioButton = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Blurred near vision",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 216,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Blurred near vision',
                              groupValue: radioButton1,
                              onChanged: (value) {
                                setState(() {
                                  radioButton1 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Blurred near vision",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          verticalDirection: VerticalDirection.up,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: '',
                              groupValue: radioButton,
                              onChanged: (value) {
                                setState(() {
                                  radioButton = value.toString();
                                });
                              },
                            ),
                            Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextFormField(
                                  textCapitalization: TextCapitalization.sentences,
                                controller: _reasonController,
                                cursorColor: Colors.black,
                                cursorHeight: 25,
                                cursorWidth: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 3.8,
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Other Specify',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                ),
                                onChanged: (value) {
                                  // formData.username = value;
                                },
                              ),
                            ),
                            SizedBox(
                              width: 36,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: '',
                              groupValue: radioButton1,
                              onChanged: (value) {
                                setState(() {
                                  radioButton1 = value.toString();
                                });
                              },
                            ),
                            Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextFormField(
                                 textCapitalization: TextCapitalization.sentences,
                                controller: _reason1Controller,
                                cursorColor: Colors.black,
                                cursorHeight: 25,
                                cursorWidth: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 3.8,
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Other Specify',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                ),
                                onChanged: (value) {
                                  // formData.username = value;
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 438,
                    width: 777,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          offset: Offset(0, 1),
                          blurRadius: 4,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: const Row(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Present Glasses',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFDA0000),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Glass types',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFDA0000),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Provider',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFDA0000),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'No',
                              groupValue: radioButton2,
                              onChanged: (value) {
                                setState(() {
                                  radioButton2 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "No",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'S-V Distance',
                              groupValue: radioButton3,
                              onChanged: (value) {
                                setState(() {
                                  radioButton3 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "S-V Distance",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Eye Care Center',
                              groupValue: radioButton4,
                              onChanged: (value) {
                                setState(() {
                                  radioButton4 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Eye Care Center",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Yes',
                              groupValue: radioButton2,
                              onChanged: (value) {
                                setState(() {
                                  radioButton2 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Yes",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 165,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'S-V Near',
                              groupValue: radioButton3,
                              onChanged: (value) {
                                setState(() {
                                  radioButton3 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "S-V Near",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 56,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Local Optical shop',
                              groupValue: radioButton4,
                              onChanged: (value) {
                                setState(() {
                                  radioButton4 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Local Optical shop",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 238),
                          child: Row(
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Bifocals',
                                groupValue: radioButton3,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton3 = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Bifocals",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Eye Camp',
                                groupValue: radioButton4,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton4 = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Eye Camp",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 238),
                          child: Row(
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'PAL',
                                groupValue: radioButton3,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton3 = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "PAL",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 89,
                              ),
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Private eye hospital',
                                groupValue: radioButton4,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton4 = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Private eye hospital",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 400),
                          child: Row(children: [
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Private eye Clinic',
                              groupValue: radioButton4,
                              onChanged: (value) {
                                setState(() {
                                  radioButton4 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Private eye Clinic",
                              style: TextStyle(color: Colors.black),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 400),
                          child: Row(children: [
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Secondary eye Clinic',
                              groupValue: radioButton4,
                              onChanged: (value) {
                                setState(() {
                                  radioButton4 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Secondary eye Clinic",
                              style: TextStyle(color: Colors.black),
                            ),
                          ]),
                        ),
                        Row(
                          verticalDirection: VerticalDirection.up,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Amount Paid',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 277,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Tertiary eye hospital',
                              groupValue: radioButton4,
                              onChanged: (value) {
                                setState(() {
                                  radioButton4 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Tertiary eye hospital",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextFormField(
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return "Amount";
                                    }else{
                                      return null;
                                    }
                                  },
                                  controller: _amountController,
                                  cursorColor: Colors.black,
                                  cursorHeight: 25,
                                  cursorWidth: 2,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 3,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "",
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 238,
                              ),
                              Row(
                                verticalDirection: VerticalDirection.up,
                                children: [
                                  Radio<String>(
                                    activeColor: Colors.blue,
                                    toggleable: true,
                                    value: '',
                                    groupValue: radioButton4,
                                    onChanged: (value) {
                                      setState(() {
                                        radioButton4 = value.toString();
                                      });
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Container(
                                      height: 40,
                                      width: 288,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: TextField(
                                          textCapitalization: TextCapitalization.sentences,
                                        controller: _reason2Controller,
                                        cursorColor: Colors.black,
                                        cursorHeight: 25,
                                        cursorWidth: 2,
                                        keyboardType: TextInputType.text,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 3.8,
                                        ),
                                        decoration: InputDecoration(
                                          hintText: "Other Specify",
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 428,
                    width: 777,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          offset: Offset(0, 1),
                          blurRadius: 4,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: const Row(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Present Glasses',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFDA0000),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 130,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Glass types',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFDA0000),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Reason for discontinuing glasses',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFDA0000),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'No',
                              groupValue: radioButton5,
                              onChanged: (value) {
                                setState(() {
                                  radioButton5 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "No",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 185,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'S-V Distance',
                              groupValue: radioButton6,
                              onChanged: (value) {
                                setState(() {
                                  radioButton6 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "S-V Distance",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'No glasses',
                              groupValue: radioButton7,
                              onChanged: (value) {
                                setState(() {
                                  radioButton7 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "No glasses",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Used glass before',
                              groupValue: radioButton5,
                              onChanged: (value) {
                                setState(() {
                                  radioButton5 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Used glass before",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 87,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'S-V Near',
                              groupValue: radioButton6,
                              onChanged: (value) {
                                setState(() {
                                  radioButton6 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "S-V Near",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'They are uncomfortable',
                              groupValue: radioButton7,
                              onChanged: (value) {
                                setState(() {
                                  radioButton7 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "They are uncomfortable",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: Row(
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Bifocals',
                                groupValue: radioButton6,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton6 = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Bifocals",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 64,
                              ),
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'They are scratched,broken',
                                groupValue: radioButton7,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton7 = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "They are scratched,broken",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: Row(
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'PAL',
                                groupValue: radioButton6,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton6 = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "PAL",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 91,
                              ),
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'I lost them & have no money to buy',
                                groupValue: radioButton7,
                                onChanged: (value) {
                                  setState(() {
                                    radioButton7 = value.toString();
                                  });
                                },
                              ),
                              Expanded(
                                child: Text(
                                  "I lost them & have no money to buy",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 416),
                          child: Row(children: [
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Can see clearly without even glasses',
                              groupValue: radioButton7,
                              onChanged: (value) {
                                setState(() {
                                  radioButton7 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Can see clearly without even glasses",
                              style: TextStyle(color: Colors.black),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 416),
                          child: Row(children: [
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Used for headache only',
                              groupValue: radioButton7,
                              onChanged: (value) {
                                setState(() {
                                  radioButton7 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Used for headache only",
                              style: TextStyle(color: Colors.black),
                            ),
                          ]),
                        ),
                        Row(
                          verticalDirection: VerticalDirection.up,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Amount Paid',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 290,
                            ),
                            Radio<String>(
                              activeColor: Colors.blue,
                              toggleable: true,
                              value: 'Tertiary eye hospital',
                              groupValue: radioButton7,
                              onChanged: (value) {
                                setState(() {
                                  radioButton7 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Tertiary eye hospital",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextFormField(
                                   validator: (value) {
                                                if (value!.isEmpty) {
                                                  return "Amount";
                                                } else {
                                                  return null;
                                                }
                                              },
                                  controller: _amount1Controller,
                                  cursorColor: Colors.black,
                                  cursorHeight: 25,
                                  cursorWidth: 2,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 3,
                                  ),
                                  keyboardType:TextInputType.numberWithOptions(),
                                  autofocus: true,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    hintText: '',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    // formData.username = value;
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 250,
                              ),
                              Row(
                                verticalDirection: VerticalDirection.up,
                                children: [
                                  Radio<String>(
                                    activeColor: Colors.blue,
                                    toggleable: true,
                                    value: '',
                                    groupValue: radioButton7,
                                    onChanged: (value) {
                                      setState(() {
                                        radioButton7 = value.toString();
                                      });
                                    },
                                  ),
                                  Container(
                                    height: 40,
                                    width: 290,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextFormField(
                                        textCapitalization: TextCapitalization.sentences,
                                      controller: _reason3Controller,
                                      cursorColor: Colors.black,
                                      cursorHeight: 25,
                                      cursorWidth: 2,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 3.8,
                                      ),
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: 'Other',
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5),
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5),
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                      onChanged: (value) {
                                        // formData.username = value;
                                      },
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 425),
                              child: Container(
                                height: 40,
                                width: 100,
                                child: MaterialButton(
                                  elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                color:  Color(0xFF0E4F94),
                                                          onPressed: (){
                                                            Navigator.pop(context);
                                                          },
                                                        child: Text("Previous", style:
                                            TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w400),),
                                                        ),
                              ),
                            ),
                        SizedBox(width: 15,),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
                            child: MaterialButton(
                              elevation: 5,
                              child: isLoading
                                  ? Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CircularProgressIndicator(
                                          color: Colors.white,
                                           strokeWidth: 2.0,
                                    valueColor : AlwaysStoppedAnimation(Colors.white),
                                         strokeCap: StrokeCap.butt,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                       
                                      ],
                                    )
                                  : Text(
                                      'Next',
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w400),
                                    ),
                              onPressed: () {
                                  if (_formkey.currentState!.validate()) {
                                      if (radioButton.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor:
                                            Colors.redAccent.shade700,
                                        content:
                                            Text("No option selected!")),
                                  );
                                  return;
                                }
                                  if (radioButton1.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor:
                                            Colors.redAccent.shade700,
                                        content:
                                            Text("No option selected!")),
                                  );
                                  return;
                                }
                                  if (radioButton2.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor:
                                            Colors.redAccent.shade700,
                                        content:
                                            Text("No option selected!")),
                                  );
                                  return;
                                }
                                  if (radioButton3.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor:
                                            Colors.redAccent.shade700,
                                        content:
                                            Text("No option selected!")),
                                  );
                                  return;
                                }
                                  if (radioButton4.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor:
                                            Colors.redAccent.shade700,
                                        content:
                                            Text("No option selected!")),
                                  );
                                  return;
                                }
                                  if (radioButton5.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor:
                                            Colors.redAccent.shade700,
                                        content:
                                            Text("No option selected!")),
                                  );
                                  return;
                                }
                                  if (radioButton6.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor:
                                            Colors.redAccent.shade700,
                                        content:
                                            Text("No option selected!")),
                                  );
                                  return;
                                }
                                  if (radioButton7.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor:
                                            Colors.redAccent.shade700,
                                        content:
                                            Text("No option selected!")),
                                  );
                                  return;
                                }
                                setState(() {
                                  isLoading = true;
                                });
                                Future.delayed(Duration(seconds:1), () {
                                  setState(() {
                                    isLoading = false;
                                    widget.formData['radiobutton'] = radioButton;
                                    widget.formData['radiobutton1'] = radioButton1;
                                    widget.formData['radiobutton2'] = radioButton2;
                                    widget.formData['radiobutton3'] = radioButton3;
                                    widget.formData['radiobutton4'] = radioButton4;
                                    widget.formData['radiobutton5'] = radioButton5;
                                    widget.formData['radiobutton6'] = radioButton6;
                                    widget.formData['radiobutton7'] = radioButton7;
                                    widget.formData['reason'] = _reasonController.text;
                                    widget.formData['reason1'] = _reason1Controller.text;
                                    widget.formData['reason2'] = _reason2Controller.text;
                                    widget.formData['reason3'] = _reason3Controller.text;
                                    widget.formData['amount'] = _amountController.text;
                                    widget.formData['amount1'] = _amount1Controller.text;
                                          Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => SystemCondandEyeExam(formData: widget.formData,)));
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                        backgroundColor: Color(0xFF0E4F94),
                                        content: Text(
                                          "Data Saved Successfully",
                                          style: TextStyle(color: Colors.white),
                                        )));
                                  
                                  });
                                });
                                        
                               
                                
                                        
                                 }else{
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    elevation: 5,
                                    backgroundColor: Colors.red.shade700,
                                    shape: RoundedRectangleBorder(),
                                    content: Text("Opps! fill all empty fields",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white))));
                                 }
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              color:  Color(0xFF0E4F94),
                            ),
                                        
                            width:100,
                                        
                            height: 40,
                          ),
                        ),
                    
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
         floatingActionButton: FloatingActionButton(
        elevation: 5,
        backgroundColor: Color(0xFF0E4F94),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LoginPage()));
        },
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            Icons.logout,
            color: Color(0xFF0E4F94),
          ),
        ),
      ),
      ),
    );
  }
}
