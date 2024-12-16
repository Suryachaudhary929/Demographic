// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:demographic_information/Clinical/clinical_spectaleinfo.dart';
import 'package:demographic_information/SignUp&Login/login.dart';
import 'package:flutter/material.dart';
import 'package:demographic_information/DemographicInfo/demo_graphicinfo.dart';
import 'package:demographic_information/Obstacle%20Details/obstacledetails.dart';
import 'package:demographic_information/Vision/Vision_test.dart';

class SystemCondandEyeExam extends StatefulWidget {
  final Map<String, dynamic> formData;
  const SystemCondandEyeExam({
    Key? key,
    required this.formData,
  }) : super(key: key);

  @override
  State<SystemCondandEyeExam> createState() => _SystemCondandEyeExamState();
}

class _SystemCondandEyeExamState extends State<SystemCondandEyeExam> {
    @override
  void initState() {
    super.initState();
    _radiobox = widget.formData['radiobox'] ?? '';
    _none1Controller.text = widget.formData['none1'] ?? '';
    _none2Controller.text = widget.formData['none2'] ?? '';
    _hyper1Controller.text = widget.formData['hyper1'] ?? '';
    _hyper2Controller.text = widget.formData['hyper2'] ?? '';
    _diabetes1Controller.text = widget.formData['diabetes1'] ?? '';
    _diabetes2Controller.text = widget.formData['diabetes2'] ?? '';
    _covid1Controller.text = widget.formData['covid1'] ?? '';
    _covid2Controller.text = widget.formData['covid2'] ?? '';
    _fall1Controller.text = widget.formData['fall1'] ?? '';
    _fall2Controller.text = widget.formData['fall2'] ?? '';
    _other1Controller.text = widget.formData['other1'] ?? '';
    _other2Controller.text = widget.formData['other2'] ?? '';
    _lids1Controller.text = widget.formData['lids1'] ?? '';
    _lids2Controller.text = widget.formData['lids2'] ?? '';
    _conjunctiva1Controller.text = widget.formData['conjunctiva1'] ?? '';
    _conjunctiva2Controller.text = widget.formData['conjunctiva2'] ?? '';
    _cornea1Controller.text = widget.formData['cornea1'] ?? '';
    _cornea2Controller.text = widget.formData['cornea2'] ?? '';
    _ac1Controller.text = widget.formData['ac1'] ?? '';
    _ac2Controller.text = widget.formData['ac2'] ?? '';
    _iris1Controller.text = widget.formData['iris1'] ?? '';
    _iris2Controller.text = widget.formData['iris2'] ?? '';
  }
  String _radiobox = '';

  final TextEditingController _none1Controller = TextEditingController();
  final TextEditingController _none2Controller = TextEditingController();
  final TextEditingController _hyper1Controller = TextEditingController();
  final TextEditingController _hyper2Controller = TextEditingController();
  final TextEditingController _diabetes1Controller = TextEditingController();
  final TextEditingController _diabetes2Controller = TextEditingController();
  final TextEditingController _covid1Controller = TextEditingController();
  final TextEditingController _covid2Controller = TextEditingController();
  final TextEditingController _fall1Controller = TextEditingController();
  final TextEditingController _fall2Controller = TextEditingController();
  final TextEditingController _other1Controller = TextEditingController();
  final TextEditingController _other2Controller = TextEditingController();
  final TextEditingController _lids1Controller = TextEditingController();
  final TextEditingController _lids2Controller = TextEditingController();
  final TextEditingController _conjunctiva1Controller = TextEditingController();
  final TextEditingController _conjunctiva2Controller = TextEditingController();
  final TextEditingController _cornea1Controller = TextEditingController();
  final TextEditingController _cornea2Controller = TextEditingController();
  final TextEditingController _ac1Controller = TextEditingController();
  final TextEditingController _ac2Controller = TextEditingController();
  final TextEditingController _iris1Controller = TextEditingController();
  final TextEditingController _iris2Controller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool isLoading = false;
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
                            child: Center(
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
                      InkWell(
                        onTap: () {},
                        child: Container(
                          color: Colors.grey,
                          height: 3,
                          width: 70,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ObstacleDetailsPage(
                                        formData: widget.formData,
                                      )));
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
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            // bottom: 10,
            top: 15,
            // left: 10,
            // right: 10
          ),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Container(
                  height: 375,
                  width: 776.78,
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
                        padding:
                            const EdgeInsets.only(top: 5, left: 20, right: 20),
                        child: Divider(
                          color: Colors.black,
                          thickness: 1.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "CODE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            Text(
                              "CONDITION",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            Text(
                              "DURATION-YEARS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            Text(
                              "MEDICATION",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40, left: 15),
                        child: Row(
                          children: [
                            Table(
                                defaultColumnWidth: FixedColumnWidth(185),
                                border: TableBorder.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                ),
                                children: [
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Radio<String>(
                                              activeColor: Colors.blue,
                                              toggleable: true,
                                              value: '1 None',
                                              groupValue: _radiobox,
                                              onChanged: (value) {
                                                setState(() {
                                                  _radiobox =
                                                      value.toString();
                                                });
                                              },
                                            ),
                                            Text(
                                              "1",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 15),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('None',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ))
                                          ]),
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 48.0,
                                            width: 190,
                                            decoration: BoxDecoration(),
                                            child: TextField(
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              controller: _none1Controller,
                                              cursorColor: Colors.black,
                                              cursorHeight: 25,
                                              cursorWidth: 2,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 3.3,
                                              ),
                                              autofocus: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: '',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                              ),
                                              onChanged: (value) {
                                                // formData.username = value;
                                              },
                                            ),
                                          ),
                                        ]),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 48.0,
                                            width: 190,
                                            decoration: BoxDecoration(),
                                            child: TextField(
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              controller: _none2Controller,
                                              cursorColor: Colors.black,
                                              cursorHeight: 25,
                                              cursorWidth: 2,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 3.3,
                                              ),
                                              autofocus: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: '',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                              ),
                                              onChanged: (value) {
                                                // formData.username = value;
                                              },
                                            ),
                                          ),
                                        ]),
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Radio<String>(
                                              activeColor: Colors.blue,
                                              toggleable: true,
                                              value: '2 Hypertension',
                                              groupValue:  _radiobox,
                                              onChanged: (value) {
                                                setState(() {
                                                   _radiobox =
                                                      value.toString();
                                                });
                                              },
                                            ),
                                            Text(
                                              "2",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 15),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Hypertension',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black))
                                          ]),
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 48.0,
                                            width: 190,
                                            decoration: BoxDecoration(),
                                            child: TextField(
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              controller: _hyper1Controller,
                                              cursorColor: Colors.black,
                                              cursorHeight: 25,
                                              cursorWidth: 2,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 3.3,
                                              ),
                                              autofocus: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: '',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                              ),
                                              onChanged: (value) {
                                                // formData.username = value;
                                              },
                                            ),
                                          ),
                                        ]),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 48.0,
                                            width: 190,
                                            decoration: BoxDecoration(),
                                            child: TextField(
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              controller: _hyper2Controller,
                                              cursorColor: Colors.black,
                                              cursorHeight: 25,
                                              cursorWidth: 2,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 3.3,
                                              ),
                                              autofocus: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: '',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                              ),
                                              onChanged: (value) {
                                                // formData.username = value;
                                              },
                                            ),
                                          ),
                                        ]),
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Radio<String>(
                                              activeColor: Colors.blue,
                                              toggleable: true,
                                              value: '3 Diabetes',
                                              groupValue:  _radiobox,
                                              onChanged: (value) {
                                                setState(() {
                                                   _radiobox =
                                                      value.toString();
                                                });
                                              },
                                            ),
                                            Text(
                                              "3",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ]),
                                    ),
                                    const Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 15),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Diabetes',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black))
                                          ]),
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 48.0,
                                            width: 190,
                                            decoration: BoxDecoration(),
                                            child: TextField(
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              controller: _diabetes1Controller,
                                              cursorColor: Colors.black,
                                              cursorHeight: 25,
                                              cursorWidth: 2,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 3.3,
                                              ),
                                              autofocus: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: '',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                              ),
                                              onChanged: (value) {
                                                // formData.username = value;
                                              },
                                            ),
                                          ),
                                        ]),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 48.0,
                                            width: 190,
                                            decoration: BoxDecoration(),
                                            child: TextField(
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              controller: _diabetes2Controller,
                                              cursorColor: Colors.black,
                                              cursorHeight: 25,
                                              cursorWidth: 2,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 3.3,
                                              ),
                                              autofocus: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: '',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                              ),
                                              onChanged: (value) {
                                                // formData.username = value;
                                              },
                                            ),
                                          ),
                                        ]),
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Radio<String>(
                                              activeColor: Colors.blue,
                                              toggleable: true,
                                              value: '4 Covid 19 infection',
                                              groupValue: _radiobox,
                                              onChanged: (value) {
                                                setState(() {
                                                   _radiobox =
                                                      value.toString();
                                                });
                                              },
                                            ),
                                            Text(
                                              "4",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 15),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Covid 19 infection',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black))
                                          ]),
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 48.0,
                                            width: 190,
                                            decoration: BoxDecoration(),
                                            child: TextField(
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              controller: _covid1Controller,
                                              cursorColor: Colors.black,
                                              cursorHeight: 25,
                                              cursorWidth: 2,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 3.3,
                                              ),
                                              autofocus: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: '',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                              ),
                                              onChanged: (value) {
                                                // formData.username = value;
                                              },
                                            ),
                                          ),
                                        ]),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 48.0,
                                            width: 190,
                                            decoration: BoxDecoration(),
                                            child: TextField(
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              controller: _covid2Controller,
                                              cursorColor: Colors.black,
                                              cursorHeight: 25,
                                              cursorWidth: 2,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 3.3,
                                              ),
                                              autofocus: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: '',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                              ),
                                              onChanged: (value) {
                                                // formData.username = value;
                                              },
                                            ),
                                          ),
                                        ]),
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Radio<String>(
                                              activeColor: Colors.blue,
                                              toggleable: true,
                                              value: '5 Fall in one year',
                                              groupValue:  _radiobox,
                                              onChanged: (value) {
                                                setState(() {
                                                   _radiobox =
                                                      value.toString();
                                                });
                                              },
                                            ),
                                            Text(
                                              "5",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 15),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Fall in one year',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black))
                                          ]),
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 48.0,
                                            width: 190,
                                            decoration: BoxDecoration(),
                                            child: TextField(
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              controller: _fall1Controller,
                                              cursorColor: Colors.black,
                                              cursorHeight: 25,
                                              cursorWidth: 2,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 3.3,
                                              ),
                                              autofocus: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: '',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                              ),
                                              onChanged: (value) {
                                                // formData.username = value;
                                              },
                                            ),
                                          ),
                                        ]),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 48.0,
                                            width: 190,
                                            decoration: BoxDecoration(),
                                            child: TextField(
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              controller: _fall2Controller,
                                              cursorColor: Colors.black,
                                              cursorHeight: 25,
                                              cursorWidth: 2,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 3.3,
                                              ),
                                              autofocus: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: '',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                              ),
                                              onChanged: (value) {
                                                // formData.username = value;
                                              },
                                            ),
                                          ),
                                        ]),
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Radio<String>(
                                              activeColor: Colors.blue,
                                              toggleable: true,
                                              value: '6 Other',
                                              groupValue:  _radiobox,
                                              onChanged: (value) {
                                                setState(() {
                                                   _radiobox =
                                                      value.toString();
                                                });
                                              },
                                            ),
                                            Text(
                                              "6",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ]),
                                    ),
                                    const Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 15),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Other',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black,
                                                ))
                                          ]),
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 48.0,
                                            width: 190,
                                            decoration: BoxDecoration(),
                                            child: TextField(
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              controller: _other1Controller,
                                              cursorColor: Colors.black,
                                              cursorHeight: 25,
                                              cursorWidth: 2,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 3.3,
                                              ),
                                              autofocus: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: '',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                              ),
                                              onChanged: (value) {
                                                // formData.username = value;
                                              },
                                            ),
                                          ),
                                        ]),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 48.0,
                                            width: 190,
                                            decoration: BoxDecoration(),
                                            child: TextField(
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              controller: _other2Controller,
                                              cursorColor: Colors.black,
                                              cursorHeight: 25,
                                              cursorWidth: 2,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 3.3,
                                              ),
                                              autofocus: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: '',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black12),
                                                ),
                                              ),
                                              onChanged: (value) {
                                                // formData.username = value;
                                              },
                                            ),
                                          ),
                                        ]),
                                  ]),
                                ])
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 410,
                  width: 777,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        offset: const Offset(0, 1),
                        blurRadius: 4,
                        spreadRadius: 3,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35, top: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'RE',
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
                              width: 350,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'LE',
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
                      SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Lids',
                                    style: TextStyle(
                                      color: Colors.black,
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
                              width: 348,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Lids',
                                    style: TextStyle(
                                      color: Colors.black,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 33, top: 1),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 340,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter RE lids";
                                  } else {
                                    return null;
                                  }
                                },
                                textCapitalization:
                                    TextCapitalization.sentences,
                                controller: _lids1Controller,
                                cursorColor: Colors.black,
                                // cursorHeight: 20,
                                cursorWidth: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Lids',
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
                              width: 33,
                            ),
                            Container(
                              height: 40,
                              width: 345,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter LE lids";
                                  } else {
                                    return null;
                                  }
                                },
                                textCapitalization:
                                    TextCapitalization.sentences,
                                controller: _lids2Controller,
                                cursorColor: Colors.black,
                                // cursorHeight: 20,
                                cursorWidth: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Lids',
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Conjunctiva',
                                    style: TextStyle(
                                      color: Colors.black,
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
                              width: 297,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Conjunctiva',
                                    style: TextStyle(
                                      color: Colors.black,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 33, top: 1),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 340,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter RE Conjunctiva";
                                  } else {
                                    return null;
                                  }
                                },
                                textCapitalization:
                                    TextCapitalization.sentences,
                                controller: _conjunctiva1Controller,
                                cursorColor: Colors.black,
                                // cursorHeight: 20,
                                cursorWidth: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Conjunctiva',
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
                              width: 33,
                            ),
                            Container(
                              height: 40,
                              width: 345,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter LE Conjunctiva";
                                  } else {
                                    return null;
                                  }
                                },
                                textCapitalization:
                                    TextCapitalization.sentences,
                                controller: _conjunctiva2Controller,
                                cursorColor: Colors.black,
                                // cursorHeight: 20,
                                cursorWidth: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Conjunctiva',
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Cornea',
                                    style: TextStyle(
                                      color: Colors.black,
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
                              width: 325,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Cornea',
                                    style: TextStyle(
                                      color: Colors.black,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 33, top: 1),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 340,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter RE Cornea";
                                  } else {
                                    return null;
                                  }
                                },
                                textCapitalization:
                                    TextCapitalization.sentences,
                                controller: _cornea1Controller,
                                cursorColor: Colors.black,
                                // cursorHeight: 20,
                                cursorWidth: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Cornea',
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
                              width: 33,
                            ),
                            Container(
                              height: 40,
                              width: 345,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter LE Cornea";
                                  } else {
                                    return null;
                                  }
                                },
                                textCapitalization:
                                    TextCapitalization.sentences,
                                controller: _cornea2Controller,
                                cursorColor: Colors.black,
                                // cursorHeight: 20,
                                cursorWidth: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Cornea',
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Ac',
                                    style: TextStyle(
                                      color: Colors.black,
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
                              width: 355,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Ac',
                                    style: TextStyle(
                                      color: Colors.black,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 33, top: 1),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 340,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter RE Ac";
                                  } else {
                                    return null;
                                  }
                                },
                                textCapitalization:
                                    TextCapitalization.sentences,
                                controller: _ac1Controller,
                                cursorColor: Colors.black,
                                // cursorHeight: 20,
                                cursorWidth: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Ac',
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
                              width: 33,
                            ),
                            Container(
                              height: 40,
                              width: 345,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter LE Ac";
                                  } else {
                                    return null;
                                  }
                                },
                                textCapitalization:
                                    TextCapitalization.sentences,
                                controller: _ac2Controller,
                                cursorColor: Colors.black,
                                // cursorHeight: 20,
                                cursorWidth: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Ac',
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Iris/Pupil',
                                    style: TextStyle(
                                      color: Colors.black,
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
                              width: 315,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Iris/Pupil',
                                    style: TextStyle(
                                      color: Colors.black,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 33, top: 1),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 340,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter RE iris/pupil";
                                  } else {
                                    return null;
                                  }
                                },
                                textCapitalization:
                                    TextCapitalization.sentences,
                                controller: _iris1Controller,
                                cursorColor: Colors.black,
                                // cursorHeight: 20,
                                cursorWidth: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Iris',
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
                              width: 33,
                            ),
                            Container(
                              height: 40,
                              width: 345,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter LE iris/pupil";
                                  } else {
                                    return null;
                                  }
                                },
                                textCapitalization:
                                    TextCapitalization.sentences,
                                controller: _iris2Controller,
                                cursorColor: Colors.black,
                                // cursorHeight: 20,
                                cursorWidth: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Iris',
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
                      ),
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
                            color:Color(0xFF0E4F94),
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
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 2,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ],
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
                                 if (_radiobox.isEmpty) {
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
                                Future.delayed(Duration(seconds: 1), () {
                                  setState(() {
                                    isLoading = false;
                                    widget.formData['radiobox'] =  _radiobox;
                                    widget.formData['none1'] =
                                        _none1Controller.text;
                                    widget.formData['none2'] =
                                        _none2Controller.text;
                                    widget.formData['hyper1'] =
                                        _hyper1Controller.text;
                                    widget.formData['hyper2'] =
                                        _hyper2Controller.text;
                                    widget.formData['diabetes1'] =
                                        _diabetes1Controller.text;
                                    widget.formData['diabetes2'] =
                                        _diabetes2Controller.text;
                                    widget.formData['covid1'] =
                                        _covid1Controller.text;
                                    widget.formData['covid2'] =
                                        _covid2Controller.text;
                                    widget.formData['fall1'] =
                                        _fall1Controller.text;
                                    widget.formData['fall2'] =
                                        _fall2Controller.text;
                                    widget.formData['other1'] =
                                        _other1Controller.text;
                                    widget.formData['other2'] =
                                        _other2Controller.text;
                                    widget.formData['lids1'] =
                                        _lids1Controller.text;
                                    widget.formData['lids2'] =
                                        _lids2Controller.text;
                                    widget.formData['conjunctiva1'] =
                                        _conjunctiva1Controller.text;
                                    widget.formData['conjunctiva2'] =
                                        _conjunctiva2Controller.text;
                                    widget.formData['cornea1'] =
                                        _cornea1Controller.text;
                                    widget.formData['cornea2'] =
                                        _cornea2Controller.text;
                                    widget.formData['ac1'] =
                                        _ac1Controller.text;
                                    widget.formData['ac2'] =
                                        _ac2Controller.text;
                                    widget.formData['iris1'] =
                                        _iris1Controller.text;
                                    widget.formData['iris2'] =
                                        _iris1Controller.text;
                                   
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => VisionScreen(
                                                formData: widget.formData)));
                                                 ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                            backgroundColor:Color(0xFF0E4F94),
                                            content: Text(
                                              "Data Saved Successfully",
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
                                                    fontWeight: FontWeight.w300,
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
