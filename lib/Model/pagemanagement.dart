import 'package:flutter/material.dart';

class FormDataProvider with ChangeNotifier {
   int? id;
  String? radiovalue;
  String? radiovalue1;
  String? radiovalue2;
  String? radiovalue3;
  String? radiovalue4;
  String? radiovalue5;
  String? radiovalue6;
  String? radiovalue7;
  String? radiovalue8;
  String? radiovalue9;
  String? radiovalue10;
  String? radiovalue11;
  String? radiovalue12;
  String? radiovalue13;
  String? radiovalue14;
  String? radiovalue15;
  String? radiovalue16;
  String? radiovalue17;
  String? name;
  String? phone;
  String? idnumber;
  String? income;
  String? address;
  String? landmark;
  String? amount;
  String? amount1;
  String? none1;
  String? none2;
  String? hyper1;
  String? hyper2;
  String? diabetes1;
  String? diabetes2;
  String? covid1;
  String? covid2;
  String? fall1;
  String? fall2;
  String? other1;
  String? other2;
  String? lids1;
  String? lids2;
  String? conjunctiva1;
  String? conjunctiva2;
  String? cornea1;
  String? cornea2;
  String? ac1;
  String? ac2;
  String? iris1;
  String? iris2;
  String? aided1;
  String? aided2;
  String? aided3;
  String? pinhole1;
  String? pinhole2;
  String? pinhole3;
  String? unaided1;
  String? unaided2;
  String? unaided3;
  String? unaidednear;
  String? aidednear;
  String? addpower;
  String? nearvision;
  String? fp1;
  String? fp2;
  String? fp3;
  String? sub1;
  String? sub2;
  String? sub3;
  String? bcva1;
  String? bcva2;
  String? bcva3;
  String? other;
  String? pay;
  String? pay1;
  String? dateandtime;


  void updateRadio(String value) {
    radiovalue = value;
    notifyListeners();
  }
  void updateRadio1(String value) {
    radiovalue1 = value;
    notifyListeners();
  }
  void updateRadio2(String value) {
    radiovalue2 = value;
    notifyListeners();
  }
  void updateRadio3(String value) {
    radiovalue3 = value;
    notifyListeners();
  }
  void  updateRadio4(String value) {
    radiovalue4 = value;
    notifyListeners();
  }
  void  updateRadio5(String value) {
    radiovalue5 = value;
    notifyListeners();
  }
  void  updateRadio6(String value) {
    radiovalue6 = value;
    notifyListeners();
  }
  void  updateRadio7(String value) {
    radiovalue7 = value;
    notifyListeners();
  }
  void  updateRadio8(String value) {
    radiovalue8 = value;
    notifyListeners();
  }
  void  updateRadio9(String value) {
    radiovalue9 = value;
    notifyListeners();
  }
  void  updateRadio10(String value) {
    radiovalue10 = value;
    notifyListeners();
  }
  void  updateRadio11(String value) {
    radiovalue11 = value;
    notifyListeners();
  }
  void  updateRadio12(String value) {
    radiovalue12 = value;
    notifyListeners();
  }
  void  updateRadio13(String value) {
    radiovalue13 = value;
    notifyListeners();
  }
  void  updateRadio14(String value) {
    radiovalue14 = value;
    notifyListeners();
  }
  void  updateRadio15(String value) {
    radiovalue15 = value;
    notifyListeners();
  }
   void  updateRadio16(String value) {
    radiovalue16 = value;
    notifyListeners();
  }
   void  updateRadio17(String value) {
    radiovalue17 = value;
    notifyListeners();
  }
  
 void updateName(String value) {
    name = value;
    notifyListeners();
  }

  void updatePhoneNumber(String value) {
    phone = value;
    notifyListeners();
  }

  void updateIDNumber(String value) {
    idnumber = value;
    notifyListeners();
  }
  void updateIncome(String value) {
    income = value;
    notifyListeners();
  }
  void updateAddress(String value) {
    address = value;
    notifyListeners();
  }
  void updateLandmark(String value) {
    landmark = value;
    notifyListeners();
  }
  void updateAmount(String value) {
    amount = value;
    notifyListeners();
  }
   void updateAmount1(String value) {
    amount1 = value;
    notifyListeners();
  }
   void updateNone(String value) {
    none1 = value;
    notifyListeners();
  }
  void updateNone1(String value) {
    none2 = value;
    notifyListeners();
  }
  void updateHyper(String value) {
    hyper1 = value;
    notifyListeners();
  }
  void updateHyper1(String value) {
    hyper2 = value;
    notifyListeners();
  }
  void updateDia(String value) {
    diabetes1 = value;
    notifyListeners();
  }
  void updateDia1(String value) {
    diabetes2 = value;
    notifyListeners();
  }
  void updateCovid(String value) {
    covid1 = value;
    notifyListeners();
  }
  void updateCovid1(String value) {
    covid2 = value;
    notifyListeners();
  }
  void updateFall(String value) {
    fall1 = value;
    notifyListeners();
  }
  void updateFall1(String value) {
    fall2 = value;
    notifyListeners();
  }
  void updateOther(String value) {
    other = value;
    notifyListeners();
  }
  void updateOther1(String value) {
    other1 = value;
    notifyListeners();
  }
  void updateOther2(String value) {
    other2 = value;
    notifyListeners();
  }
  void updateLid(String value) {
    lids1 = value;
    notifyListeners();
  }
   void updateLid1(String value) {
    lids2 = value;
    notifyListeners();
  }
   void updateConjunctiva(String value) {
    conjunctiva1 = value;
    notifyListeners();
  }
   void updateConjunctiva1(String value) {
    conjunctiva2 = value;
    notifyListeners();
  }
   void updateCornea(String value) {
    cornea1 = value;
    notifyListeners();
  }
   void updateCornea1(String value) {
    cornea2 = value;
    notifyListeners();
  }
   void updateAc(String value) {
    ac1 = value;
    notifyListeners();
  }
   void updateAc1(String value) {
    ac2 = value;
    notifyListeners();
  }
   void updateIris(String value) {
    iris1 = value;
    notifyListeners();
  }
   void updateIris1(String value) {
    iris2 = value;
    notifyListeners();
  }
   void updateAidedD(String value) {
    aided1 = value;
    notifyListeners();
  }
   void updateAidedD1(String value) {
    aided2 = value;
    notifyListeners();
  }
   void updateAidedD2(String value) {
    aided3 = value;
    notifyListeners();
  }
   void updatePinhole(String value) {
    pinhole1 = value;
    notifyListeners();
  }
   void updatePinhole1(String value) {
    pinhole2 = value;
    notifyListeners();
  }
   void updatePinhole2(String value) {
    pinhole3 = value;
    notifyListeners();
  }
   void updateUnaidedD(String value) {
    unaided1 = value;
    notifyListeners();
  }
   void updateUnaidedD1(String value) {
    unaided2 = value;
    notifyListeners();
  }
   void updateUnaidedD2(String value) {
    unaided3 = value;
    notifyListeners();
  }
   void updateUnaidedN(String value) {
    unaidednear = value;
    notifyListeners();
  }
   void updateAidedN(String value) {
    aidednear = value;
    notifyListeners();
  }
   void updateAddP(String value) {
    addpower = value;
    notifyListeners();
  }
   void updateNearV(String value) {
    nearvision = value;
    notifyListeners();
  }
   void updateFP(String value) {
    fp1 = value;
    notifyListeners();
  }
  void updateFP1(String value) {
    fp2 = value;
    notifyListeners();
  }
  void updateFP2(String value) {
    fp3 = value;
    notifyListeners();
  }
  void updateSub(String value) {
    sub1 = value;
    notifyListeners();
  }
   void updateSub1(String value) {
    sub2 = value;
    notifyListeners();
  }
   void updateSub2(String value) {
    sub3 = value;
    notifyListeners();
  }
   void updateBCVA(String value) {
    bcva1 = value;
    notifyListeners();
  }
  void updateBCVA1(String value) {
    bcva2 = value;
    notifyListeners();
  }
  void updateBCVA2(String value) {
    bcva3 = value;
    notifyListeners();
  }
  void updatePay(String value) {
    pay = value;
    notifyListeners();
  }
  void updatePay1(String value) {
    pay1 = value;
    notifyListeners();
  }
   void updateDateTime(String value) {
    dateandtime = value;
    notifyListeners();
  }
  

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'radiovalue': radiovalue,
      'radiovalue1': radiovalue1,
      'radiovalue2': radiovalue2,
      'radiovalue3': radiovalue3,
      'radiovalue4': radiovalue4,
      'radiovalue5': radiovalue5,
      'radiovalue6': radiovalue6,
      'radiovalue7': radiovalue7,
      'radiovalue8': radiovalue8,
      'radiovalue9': radiovalue9,
      'radiovalue10': radiovalue10,
      'radiovalue11': radiovalue11,
      'radiovalue12': radiovalue12,
      'radiovalue13': radiovalue13,
      'radiovalue14': radiovalue14,
      'radiovalue15': radiovalue15,
      'radiovalue16': radiovalue16,
      'radiovalue17': radiovalue17,
      'name': name,
      'phone': phone,
      'idnumber': idnumber,
      'income': income,
      'address': address,
      'landmark': landmark,
      'amount': amount,
      'amount1': amount1,
      'none1': none1,
      'none2': none2,
      'hyper1': hyper1,
      'hyper2': hyper2,
      'diabetes1': diabetes1,
      'diabetes2': diabetes2,
      'covid1': covid1,
      'covid2': covid2,
      'fall1': fall1,
      'fall2': fall2,
      'other1': other1,
      'other2': other2,
      'lids1': lids1,
      'lids2': lids2,
      'conjunctiva1': conjunctiva1,
      'conjunctiva2': conjunctiva2,
      'cornea1': cornea1,
      'cornea2': cornea2,
      'ac1': ac1,
      'ac2': ac2,
      'iris1': iris1,
      'iris2': iris2,
      'aided1': aided1,
      'aided2': aided2,
      'aided3': aided3,
      'pinhole1': pinhole1,
      'pinhole2': pinhole2,
      'pinhole3': pinhole3,
      'unaided1': unaided1,
      'unaided2': unaided2,
      'unaided3': unaided3,
      'unaidednear': unaidednear,
      'aidednear': aidednear,
      'addpower': addpower,
      'nearvision': nearvision,
      'fp1': fp1,
      'fp2': fp2,
      'fp3': fp3,
      'sub1': sub1,
      'sub2': sub2,
      'sub3': sub3,
      'bcva1': bcva1,
      'bcva2': bcva2,
      'bcva3': bcva3,
      'other': other,
      'pay': pay,
      'pay1': pay1,
      'dateandtime': DateTime.now().toString(),
    };
  }
}
