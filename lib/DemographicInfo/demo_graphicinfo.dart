import 'package:demographic_information/Obstacle%20Details/obstacledetails.dart';
import 'package:demographic_information/SignUp&Login/login.dart';
import 'package:demographic_information/SystemCond&Eye%20exam/systemcond.dart';
import 'package:demographic_information/Vision/Vision_test.dart';
import 'package:flutter/material.dart';
import 'package:demographic_information/Clinical/clinical_spectaleinfo.dart';
// import 'package:demographic_information/Obstacle%20Details/obstacledetails.dart';
// import 'package:demographic_information/SystemCond&Eye%20exam/systemcond.dart';
// import 'package:demographic_information/Vision/Vision_test.dart';

// class DemographicDetails extends StatelessWidget {
//   const DemographicDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, Constraints) {
//       if (Constraints.maxWidth >= 834) {
//         return TabletPage();
//       } else if (Constraints.maxWidth >= 834 && Constraints.maxWidth < 1194) {
//         return TabletPage();
//       } else {
//         return TabletPage();
//       }
//     });
//   }
// }

class TabletPage extends StatefulWidget {
  //  const TabletPage({super.key});
  final Map<String, dynamic> formData;
  const TabletPage({
    Key? key,
    required this.formData,
  }) : super(key: key);

  @override
  State<TabletPage> createState() => _TabletPageState();
}

class _TabletPageState extends State<TabletPage> {
  String selectedOption = '';
  String selectedOption1 = '';
  String selectedOption2 = '';
  String selectedOption3 = '';
  String selectedOption4 = '';
  bool isLoading = false;
  final _formkey = GlobalKey<FormState>();
  late TextEditingController namecontroller = TextEditingController();

  late TextEditingController landmarkcontroller = TextEditingController();
  late TextEditingController phonenumbercontroller = TextEditingController();
  late TextEditingController idnumbercontroller = TextEditingController();
  late TextEditingController monthlyincomecontroller = TextEditingController();
  late TextEditingController addresscontroller = TextEditingController();
  @override
  void initState() {
    super.initState();
    namecontroller.text = widget.formData['name'] ?? '';
    landmarkcontroller.text = widget.formData['landmark'] ?? '';
    phonenumbercontroller.text = widget.formData['phone'] ?? '';
    idnumbercontroller.text = widget.formData['idnumber'] ?? '';
    monthlyincomecontroller.text = widget.formData['income'] ?? '';
    addresscontroller.text = widget.formData['address'] ?? '';
    selectedOption = widget.formData['selectedoption'] ?? '';
    selectedOption1 = widget.formData['selectedoption1'] ?? '';
    selectedOption2 = widget.formData['selectedoption2'] ?? '';
    selectedOption3 = widget.formData['selectedoption3'] ?? '';
    selectedOption4 = widget.formData['selectedoption4'] ?? '';
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      curve: Curves.easeInOutCubicEmphasized,
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
                        child: Container(
                          // margin: EdgeInsets.symmetric(horizontal: 40),
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
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
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
          scrollbarOrientation: ScrollbarOrientation.right,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              // bottom: size.height * 0.1,
              top: 15,

              left: 35,
              // right: 15,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: 265,
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
                        child: Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20, top: 20),
                                child: Row(
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Name',
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
                                      width: 325,
                                    ),
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Phone Number',
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
                              SizedBox(
                                height: 2,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 17),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 350,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Enter your name";
                                          } else {
                                            return null;
                                          }
                                        },
                                        textCapitalization:
                                            TextCapitalization.sentences,
                                        controller: namecontroller,
                                        cursorColor: Colors.black,
                                        cursorHeight: 25,
                                        cursorWidth: 2,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                        autofocus: true,
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                          hintText: 'Enter Your Name',
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
                                          // errorText: errorTextval.isEmpty? null:errorTextval
                                        ),
                                        //   onChanged: (value) {
                                        // setState(() {

                                        // });
                                        //   },
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 50,
                                      width: 335,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Enter your phonenumber";
                                          } else {
                                            return null;
                                          }
                                        },
                                        textCapitalization:
                                            TextCapitalization.sentences,
                                        controller: phonenumbercontroller,
                                        cursorColor: Colors.black,
                                        cursorHeight: 25,
                                        cursorWidth: 2,
                                        keyboardType: TextInputType.number,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                        decoration: InputDecoration(
                                          hintText: "Enter your phone number",
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
                                        //   onChanged: (value){
                                        //       setState(() {

                                        // });
                                        //   },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 15),
                                    child: Row(
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'ID Number',
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
                                          width: 295,
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Monthly Income',
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
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 17),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: TextFormField(
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "Enter your ID";
                                              } else {
                                                return null;
                                              }
                                            },
                                            textCapitalization:
                                                TextCapitalization.sentences,
                                            keyboardType: TextInputType
                                                .numberWithOptions(),
                                            controller: idnumbercontroller,
                                            cursorColor: Colors.black,
                                            cursorHeight: 25,
                                            cursorWidth: 2,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                            autofocus: true,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                              hintText: 'Enter Your ID',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                    color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                    color: Colors.black),
                                              ),
                                            ),
                                            //       onChanged: (value) {
                                            //           setState(() {

                                            // });
                                            //       },
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: 50,
                                          width: 335,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: TextFormField(
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "Enter your income";
                                              } else {
                                                return null;
                                              }
                                            },
                                            controller: monthlyincomecontroller,
                                            cursorColor: Colors.black,
                                            cursorHeight: 25,
                                            cursorWidth: 2,
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                            decoration: InputDecoration(
                                              hintText:
                                                  "Enter your monthly income",
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                    color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                    color: Colors.black),
                                              ),
                                            ),
                                            //       onChanged: (value){
                                            //           setState(() {

                                            // });
                                            //       },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 15),
                                        child: Row(
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Address',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '*',
                                                    style: TextStyle(
                                                      color: Color(0xFFDA0000),
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 310,
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Landmark',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '*',
                                                    style: TextStyle(
                                                      color: Color(0xFFDA0000),
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                        height: 2,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 17),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 350,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: TextFormField(
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return "Enter your address";
                                                  } else {
                                                    return null;
                                                  }
                                                },
                                                textCapitalization:
                                                    TextCapitalization
                                                        .sentences,
                                                controller: addresscontroller,
                                                cursorColor: Colors.black,
                                                cursorHeight: 25,
                                                cursorWidth: 2,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                                autofocus: true,
                                                textInputAction:
                                                    TextInputAction.next,
                                                decoration: InputDecoration(
                                                  hintText:
                                                      'Enter Your Address',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                //           onChanged: (value) {
                                                //              setState(() {

                                                // });
                                                //           },
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 335,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: TextFormField(
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return "Enter your landmark";
                                                  } else {
                                                    return null;
                                                  }
                                                },
                                                textCapitalization:
                                                    TextCapitalization
                                                        .sentences,
                                                controller: landmarkcontroller,
                                                cursorColor: Colors.black,
                                                cursorHeight: 25,
                                                cursorWidth: 2,
                                                keyboardType:
                                                    TextInputType.text,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                                decoration: InputDecoration(
                                                  hintText:
                                                      "Enter your landmark",
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                //             onChanged: (value) {
                                                //              setState(() {

                                                // });
                                                //           },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: AnimatedContainer(
                        duration: Duration(seconds: 5),
                        curve: Curves.bounceIn,
                        height: 187,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Location',
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
                                  width: 150,
                                ),
                                const Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Status',
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
                                  width: 155,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Gender',
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
                                Row(
                                  children: [
                                    Radio<String>(
                                      activeColor: Colors.blue,
                                      toggleable: true,
                                      value: 'Plains',
                                      groupValue: selectedOption,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value.toString();
                                        });
                                      },
                                    ),
                                    Text(
                                      "Plains",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 140,
                                    ),
                                    Radio<String>(
                                      activeColor: Colors.blue,
                                      toggleable: true,
                                      value: 'Examined',
                                      groupValue: selectedOption1,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption1 = value.toString();
                                        });
                                      },
                                    ),
                                    Text(
                                      "Examined",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Radio<String>(
                                      activeColor: Colors.blue,
                                      toggleable: true,
                                      value: 'Male',
                                      groupValue: selectedOption2,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption2 = value.toString();
                                        });
                                      },
                                    ),
                                    Text(
                                      "Male",
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio<String>(
                                      activeColor: Colors.blue,
                                      toggleable: true,
                                      value: 'Hilly Region',
                                      groupValue: selectedOption,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value.toString();
                                        });
                                      },
                                    ),
                                    Text(
                                      "Hilly Region",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 104,
                                    ),
                                    Radio<String>(
                                      activeColor: Colors.blue,
                                      toggleable: true,
                                      value: 'Not Available After 2 Hrs',
                                      groupValue: selectedOption1,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption1 = value.toString();
                                        });
                                      },
                                    ),
                                    Text(
                                      "Not Available After 2 Hrs",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Radio<String>(
                                      activeColor: Colors.blue,
                                      toggleable: true,
                                      value: 'Female',
                                      groupValue: selectedOption2,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption2 = value.toString();
                                        });
                                      },
                                    ),
                                    Text(
                                      "Female",
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio<String>(
                                      activeColor: Colors.blue,
                                      toggleable: true,
                                      value: 'Mountains',
                                      groupValue: selectedOption,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value.toString();
                                        });
                                      },
                                    ),
                                    Text(
                                      "Mountains",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 112,
                                    ),
                                    Radio<String>(
                                      activeColor: Colors.blue,
                                      toggleable: true,
                                      value: 'Refused',
                                      groupValue: selectedOption1,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption1 = value.toString();
                                        });
                                      },
                                    ),
                                    Text(
                                      "Refused",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 111,
                                    ),
                                    Radio<String>(
                                      activeColor: Colors.blue,
                                      toggleable: true,
                                      value: 'Prefered Not To Say',
                                      groupValue: selectedOption2,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption2 = value.toString();
                                        });
                                      },
                                    ),
                                    Text(
                                      "Prefered Not To Say",
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: AnimatedContainer(
                        duration: Duration(seconds: 2),
                        curve: Curves.easeIn,
                        height: 508,
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
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Occupation',
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
                                    width: 320,
                                  ),
                                  const Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Education',
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Unemployed',
                                  groupValue: selectedOption3,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption3 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Unemployed",
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(
                                  width: 275,
                                ),
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'No Education',
                                  groupValue: selectedOption4,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption4 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "No Education",
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
                                  value: 'Teacher/Clerical job/professional',
                                  groupValue: selectedOption3,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption3 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Teacher/Clerical job/professional",
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(
                                  width: 139,
                                ),
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Primary School(Class 1-5)',
                                  groupValue: selectedOption4,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption4 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Primary School(Class 1-5)",
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
                                  value: 'Driver',
                                  groupValue: selectedOption3,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption3 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Driver",
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(
                                  width: 317.5,
                                ),
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'High School',
                                  groupValue: selectedOption4,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption4 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "High School",
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
                                  value: 'Shopkeeper/Vendor/Bussiness',
                                  groupValue: selectedOption3,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption3 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Shopkeeper/Vendor/Bussiness",
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(
                                  width: 155,
                                ),
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Intermediate Class',
                                  groupValue: selectedOption4,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption4 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Intermediate Class",
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
                                  value: 'aboure/Agriculture',
                                  groupValue: selectedOption3,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption3 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Laboure/Agriculture",
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(
                                  width: 226,
                                ),
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'College (undergraduate)',
                                  groupValue: selectedOption4,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption4 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "College (undergraduate)",
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
                                  value: 'Laboure/Other',
                                  groupValue: selectedOption3,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption3 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Laboure/Other",
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(
                                  width: 261.5,
                                ),
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Advance Studies(PG etc)',
                                  groupValue: selectedOption4,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption4 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Advance Studies(PG etc)",
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
                                  value:
                                      'Skilled worker(ex Goldsmith,Carpnter)',
                                  groupValue: selectedOption3,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption3 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Skilled worker(ex Goldsmith,Carpnter)",
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(
                                  width: 111,
                                ),
                                Radio<String>(
                                  activeColor: Colors.blue,
                                  toggleable: true,
                                  value: 'Other (Specify)',
                                  groupValue: selectedOption4,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption4 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Other (Specify)",
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
                                  value: 'Home Duties Only',
                                  groupValue: selectedOption3,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption3 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Home Duties Only",
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
                                  value: 'Student',
                                  groupValue: selectedOption3,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption3 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Student",
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
                                  value: 'Other Specify',
                                  groupValue: selectedOption3,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption3 = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  "Other (Specify)",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 465),
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
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                        onPressed: () async {
                          if (_formkey.currentState!.validate()) {
                            setState(() {
                              isLoading = true;
                            });
                            await Future.delayed(Duration(seconds: 1), () {
                              setState(() {
                                isLoading = false;

                                widget.formData['name'] = namecontroller.text;
                                widget.formData['phone'] =
                                    phonenumbercontroller.text;
                                widget.formData['idnumber'] =
                                    idnumbercontroller.text;
                                widget.formData['income'] =
                                    monthlyincomecontroller.text;
                                widget.formData['address'] =
                                    addresscontroller.text;
                                widget.formData['landmark'] =
                                    landmarkcontroller.text;
                                widget.formData['selectedoption'] =
                                    selectedOption;
                                widget.formData['selectedoption1'] =
                                    selectedOption1;
                                widget.formData['selectedoption2'] =
                                    selectedOption2;
                                widget.formData['selectedoption3'] =
                                    selectedOption3;
                                widget.formData['selectedoption4'] =
                                    selectedOption4;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ClinicalInfo(
                                      formData: widget.formData,
                                    ),
                                  ),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        elevation: 5,
                                        backgroundColor: Colors.green,
                                        shape: RoundedRectangleBorder(),
                                        content: Text(
                                            "Data Saved",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall!
                                                .copyWith(
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.white))));
                              });
                            });
                          } else {
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

                      width: 120,

                      height: 40,
                    ),
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
