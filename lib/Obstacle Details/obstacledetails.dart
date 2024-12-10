// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:demographic_information/Clinical/clinical_spectaleinfo.dart';
import 'package:demographic_information/DemographicInfo/final_page.dart';
import 'package:demographic_information/SignUp&Login/login.dart';
import 'package:flutter/material.dart';
import 'package:demographic_information/DemographicInfo/demo_graphicinfo.dart';
import 'package:demographic_information/SystemCond&Eye%20exam/systemcond.dart';
import 'package:demographic_information/Vision/Vision_test.dart';

class ObstacleDetailsPage extends StatefulWidget {
  final Map<String, dynamic> formData;

  const ObstacleDetailsPage({
    Key? key,
    required this.formData,
  }) : super(key: key);

  @override
  State<ObstacleDetailsPage> createState() => _ObstacleDetailsPageState();
}

class _ObstacleDetailsPageState extends State<ObstacleDetailsPage> {
  @override
  void initState() {
    super.initState();
    payController.text = widget.formData['pay'] ?? '';
    pay1Controller.text = widget.formData['pay1'] ?? '';
    specifyController.text = widget.formData['specify'] ?? '';
    specify1Controller.text = widget.formData['specify1'] ?? '';
    specify2Controller.text = widget.formData['specify2'] ?? '';
    radiovalue = widget.formData['radiovalue'] ?? '';
    radiovalue1 = widget.formData['radiovalue1'] ?? '';
    radiovalue2 = widget.formData['radiovalue2'] ?? '';
  }

  final TextEditingController payController = TextEditingController();
  final TextEditingController pay1Controller = TextEditingController();
  final TextEditingController specifyController = TextEditingController();
  final TextEditingController specify1Controller = TextEditingController();
  final TextEditingController specify2Controller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  String radiovalue = '';
  String radiovalue1 = '';
  String radiovalue2 = '';
  String dateandtime = DateTime.now().toString();

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1400,
      ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 242, 241, 241),
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
                  offset: const Offset(0, 1),
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
                                    builder: (context) => TabletPage(
                                          formData: widget.formData,
                                        )));
                          },
                          child: Container(
                              // margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 231, 228, 228),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Center(
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ClinicalInfo(
                                        formData: widget.formData,
                                      )));
                        },
                        child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 231, 228, 228),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
                              child: Text(
                                "2",
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
                                  builder: (context) => SystemCondandEyeExam(
                                        formData: widget.formData,
                                      )));
                        },
                        child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 231, 228, 228),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
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
                                  builder: (context) => VisionScreen(
                                        formData: widget.formData,
                                      )));
                        },
                        child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 231, 228, 228),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
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
                      Container(
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
          scrollbarOrientation: ScrollbarOrientation.left,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              // bottom: size.height * 0.1,
              top: 15,
              left: 30,
              // right: size.height * 0.1
            ),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 570,
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
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Lens Status',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFDA0000),
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 300,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Actions',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFDA0000),
                                        fontSize: 15,
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
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value:
                                      'Not applicable,vision is normal in both eyes',
                                  groupValue: radiovalue,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Not applicable,vision is normal in both eyes",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 65,
                                ),
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'No action required',
                                  groupValue: radiovalue1,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue1 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "No action required",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Unaware of the problem',
                                  groupValue: radiovalue,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Unaware of the problem",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 191,
                                ),
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Refer to clinic',
                                  groupValue: radiovalue1,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue1 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Refer to clinic",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Aware of the problem,but can manage',
                                  groupValue: radiovalue,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Aware of the problem,but can manage",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 102,
                                ),
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Near vision glasses',
                                  groupValue: radiovalue1,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue1 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Near vision glasses",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'One eye adequate vision',
                                  groupValue: radiovalue,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "One eye adequate vision",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 192,
                                ),
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Continue same glasses',
                                  groupValue: radiovalue1,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue1 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Continue same glasses",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Cannot afford consolation fees',
                                  groupValue: radiovalue,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Cannot afford consolation fees",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: '',
                                  groupValue: radiovalue1,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue1 = value.toString();
                                    });
                                  },
                                ),
                                Container(
                                  color: Colors.white,
                                  height: 40,
                                  width: 290,
                                  child: TextFormField(
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    controller: specifyController,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                    cursorColor: Colors.black,
                                    cursorWidth: 2,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      // isCollapsed: true,

                                      hintText: 'Other specify',
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value:
                                      'Cannot afford cost of spectacle/surgery',
                                  groupValue: radiovalue,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue = value.toString();
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Text(
                                    "Cannot afford cost of spectacle/surgery",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Service not available or very far',
                                  groupValue: radiovalue,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue = value.toString();
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Text(
                                    "Service not available or very far",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'No one to accompany',
                                  groupValue: radiovalue,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "No one to accompany",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value:
                                      'No time availability/other priorities',
                                  groupValue: radiovalue,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue = value.toString();
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Text(
                                    "No time availability/other priorities",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Other health reason',
                                  groupValue: radiovalue,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Other health reason",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: '',
                                  groupValue: radiovalue,
                                  onChanged: (value) {
                                    setState(() {
                                      radiovalue = value.toString();
                                    });
                                  },
                                ),
                                //    Text(
                                //   "Other Specify",
                                //   style: TextStyle(
                                //     color: Colors.black,
                                //   ),
                                // ),

                                Container(
                                  color: Colors.white,
                                  height: 40,
                                  width: 300,
                                  child: TextFormField(
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    controller: specify1Controller,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                    cursorColor: Colors.black,
                                    cursorWidth: 2,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      // isCollapsed: true,

                                      hintText: 'Other Specify',
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
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 552,
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 20),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Lens Status',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                          color: Color(0xFFDA0000),
                                          fontSize: 15,
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
                                width: 300,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Willingness to play',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFDA0000),
                                        fontSize: 15,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'No Visual impairment',
                                groupValue: radiovalue2,
                                onChanged: (value) {
                                  setState(() {
                                    radiovalue2 = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "No Visual impairment",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 225,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '"Price for distance glasses?"',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Refractive error',
                                groupValue: radiovalue2,
                                onChanged: (value) {
                                  setState(() {
                                    radiovalue2 = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Refractive error",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 265,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Container(
                                  color: Colors.white,
                                  height: 40,
                                  width: 318,
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Amount";
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType:
                                        TextInputType.numberWithOptions(),
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    controller: payController,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                    cursorColor: Colors.black,
                                    cursorWidth: 2,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      // isCollapsed: true,

                                      hintText: 'Amount',
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
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Uncorrected aphakia',
                                groupValue: radiovalue2,
                                onChanged: (value) {
                                  setState(() {
                                    radiovalue2 = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Uncorrected aphakia",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 225,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Price for near vision glasses?",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Cataract',
                                groupValue: radiovalue2,
                                onChanged: (value) {
                                  setState(() {
                                    radiovalue2 = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Cataract",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 305,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Container(
                                  color: Colors.white,
                                  height: 40,
                                  width: 320,
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Amount";
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType:
                                        TextInputType.numberWithOptions(),
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    controller: pay1Controller,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                    cursorColor: Colors.black,
                                    cursorWidth: 2,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      // isCollapsed: true,

                                      hintText: 'Amount',
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
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Surgery related complications',
                                groupValue: radiovalue2,
                                onChanged: (value) {
                                  setState(() {
                                    radiovalue2 = value.toString();
                                  });
                                },
                              ),
                              Expanded(
                                child: Text(
                                  "Surgery related complications",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Corneal opacity/scar',
                                groupValue: radiovalue2,
                                onChanged: (value) {
                                  setState(() {
                                    radiovalue2 = value.toString();
                                  });
                                },
                              ),
                              Expanded(
                                child: Text(
                                  "Corneal opacity/scar",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Phthisis or absent globe',
                                groupValue: radiovalue2,
                                onChanged: (value) {
                                  setState(() {
                                    radiovalue2 = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Phthisis or absent globe",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Glaucoma',
                                groupValue: radiovalue2,
                                onChanged: (value) {
                                  setState(() {
                                    radiovalue2 = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Glaucoma",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: 'Posterior segment disorders',
                                groupValue: radiovalue2,
                                onChanged: (value) {
                                  setState(() {
                                    radiovalue2 = value.toString();
                                  });
                                },
                              ),
                              Expanded(
                                child: Text(
                                  "Posterior segment disorders",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue,
                                toggleable: true,
                                value: '',
                                groupValue: radiovalue2,
                                onChanged: (value) {
                                  setState(() {
                                    radiovalue2 = value.toString();
                                  });
                                },
                              ),
                              Container(
                                color: Colors.white,
                                height: 40,
                                width: 300,
                                child: TextField(
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  controller: specify2Controller,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                  cursorWidth: 2,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    // isCollapsed: true,

                                    hintText: 'Other specify',
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
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 395),
                          child: Container(
                            height: 40,
                            width: 100,
                            child: MaterialButton(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              color: Color(0xFF0E4F94),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Previous",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
                            child: MaterialButton(
                              elevation: 5,
                              child: isLoading
                                  ? CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    )
                                  : Text(
                                      'Next',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  Future.delayed(Duration(seconds: 1), () {
                                    setState(() {
                                      isLoading = false;
                                      widget.formData['radiovalue'] =
                                          radiovalue;
                                      widget.formData['radiovalue1'] =
                                          radiovalue1;
                                      widget.formData['radiovalue2'] =
                                          radiovalue2;
                                      widget.formData['specify'] =
                                          specifyController.text;
                                      widget.formData['specify1'] =
                                          specify1Controller.text;
                                      widget.formData['specify2'] =
                                          specify2Controller.text;
                                      widget.formData['pay'] =
                                          payController.text;
                                      widget.formData['pay1'] =
                                          pay1Controller.text;
                                      widget.formData['dateandtime'] =
                                          DateTime.now().toString();
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => FinalPage(
                                                  formData: widget.formData)));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              backgroundColor: Colors.green,
                                              content: Text(
                                                "please check your data!",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )));
                                    });
                                  });
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          elevation: 5,
                                          backgroundColor: Colors.red.shade700,
                                          shape: RoundedRectangleBorder(),
                                          content: Text(
                                              "Opps! fill all empty fields",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.white))));
                                }
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              color: Color(0xFF0E4F94),
                            ),

                            width: 100,

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
                context, MaterialPageRoute(builder: (context) => LoginPage()));
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
