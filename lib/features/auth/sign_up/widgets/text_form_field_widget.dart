import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_validation.dart';

class PhoneInputField extends StatefulWidget {
  final TextEditingController phoneController;
  const PhoneInputField({Key? key, required this.phoneController}) : super(key: key);

  @override
  _PhoneInputFieldState createState() => _PhoneInputFieldState();
}

class _PhoneInputFieldState extends State<PhoneInputField> {
  String selectedCountryCode = 'SA';

  final List<Map<String, String>> countryCodes = [
    {'code': 'SA', 'flag': 'assets/svgs/countries/sa.svg', 'dialCode': '+966'},
    {'code': 'EG', 'flag': 'assets/svgs/countries/eg.svg', 'dialCode': '+20'},
    {'code': 'AE', 'flag': 'assets/svgs/countries/ae.svg', 'dialCode': '+971'},
    {'code': 'JO', 'flag': 'assets/svgs/countries/jo.svg', 'dialCode': '+962'},
    {'code': 'LB', 'flag': 'assets/svgs/countries/lb.svg', 'dialCode': '+961'},
    {'code': 'QA', 'flag': 'assets/svgs/countries/qa.svg', 'dialCode': '+974'},
    {'code': 'KW', 'flag': 'assets/svgs/countries/kw.svg', 'dialCode': '+965'},
    {'code': 'OM', 'flag': 'assets/svgs/countries/om.svg', 'dialCode': '+968'},
    {'code': 'IQ', 'flag': 'assets/svgs/countries/iq.svg', 'dialCode': '+964'},
    {'code': 'MA', 'flag': 'assets/svgs/countries/ma.svg', 'dialCode': '+212'},
  ];

  @override
  Widget build(BuildContext context) {
    String dialCode = countryCodes.firstWhere((country) => country['code'] == selectedCountryCode)['dialCode']!;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 56,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              color: AppColors.mainColor,
            ),
            child: DropdownButton<String>(
              value: selectedCountryCode,
              onChanged: (String? newValue) {
                setState(() {
                  selectedCountryCode = newValue!;
                });
              },
              items: countryCodes.map<DropdownMenuItem<String>>((country) {
                return DropdownMenuItem<String>(
                  value: country['code'],
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: SvgPicture.asset(country['flag']!, height: 25),
                  ),
                );
              }).toList(),
              underline: const SizedBox(),
            ),
          ),
          Expanded(
            child: TextFormField(
              controller: widget.phoneController,
              textDirection: TextDirection.rtl,
              keyboardType: TextInputType.phone,
              validator: AppValidator.phoneValidate,
              style: const TextStyle(color: AppColors.whiteColor), // Red text color
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                hintText: 'أدخل رقم الهاتف ($dialCode)',
                hintStyle: TextStyle(color: AppColors.whiteColorWithOpacity, fontSize: 16),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.whiteColor), // Red underline when inactive
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.whiteColor, width: 2.0), // Thicker red underline when focused
                ),
              ),
            ),

          ),
        ],
      ),
    );
  }
}
