import 'package:flutter/material.dart';
import 'package:flutterr/widgets/custom_dropdown_button.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          color: Color.fromARGB(255, 14, 14, 14),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pagetitle(),
                  // _destinationDropDown(),
                  // _travellerinformation(),
                  _bookaride(),
                ],
              ),
              //alignment:Alignment.centerRight();
              Align(
                  alignment: Alignment.centerRight, child: _astroimagewidget())
            ],
          ),
        ),
      ),
    );
  }

  Widget _pagetitle() {
    return Container(
      // ignore: prefer_const_constructors
      child: Text(
        "****GO MOON***",
        style: TextStyle(
            color: Color.fromARGB(255, 53, 53, 203),
            fontFamily: AutofillHints.addressCity,
            fontSize: 90,
            fontWeight: FontWeight.w900),
      ),
    );
  }

  Widget _astroimagewidget() {
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.60,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/asaa.jpeg"),
        ),
      ),
    );
  }

  Widget _destinationDropDown() {
    return CustomDropDownButtonClass(values: [
      'james web station',
      'preneure web station',
    ], width: _deviceWidth);
  }

  Widget _bookaride() {
    return Container(
      height: _deviceHeight * 0.26,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDown(),
          _travellerinformation(),
          _bbb(),
        ],
      ),
    );
  }

  Widget _travellerinformation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButtonClass(values: const [
          '1',
          '2',
          '3',
          '4',
        ], width: _deviceWidth * 0.45),
        CustomDropDownButtonClass(values: const [
          'Economy',
          'Business',
          'Firstclass',
          'premium economy',
        ], width: _deviceWidth * 0.40),
      ],
    );
  }

  Widget _bbb() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.002),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book a Ride!",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
