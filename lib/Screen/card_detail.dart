import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_05/main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/calender.dart';

class CreditCardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text
        .replaceAll(RegExp(r'\D'), ''); // Remove non-digit characters
    final formattedText = _formatCreditCardNumber(newText);

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }

  String _formatCreditCardNumber(String text) {
    final formatted = <String>[];
    for (int i = 0; i < 16; i += 4) {
      final end = i + 4;
      if (end <= 16) {
        formatted.add(text.substring(i, end));
      } else {
        formatted.add(text.substring(i));
      }
    }
    return formatted.join(' ');
  }
}

class CardDetail extends StatefulWidget {
  static const routeName = "/card_detail";
  const CardDetail({super.key});

  @override
  State<CardDetail> createState() => _CardDetailState();
}

class _CardDetailState extends State<CardDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
          backgroundColor: Colors.white10,
          elevation: 0,
          title: const Text(
            "Card Details",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
                    child: Text(
                      "Card No",
                      style: TextStyle(
                        color: Color(0xFF616E7C),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(1, 1),
                            color: Colors.grey.shade200,
                            spreadRadius: 2,
                          )
                        ]),
                    child: TextField(
                      inputFormatters: [CreditCardNumberFormatter()],
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        color: Color(0xFFAAAAAA),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: SvgPicture.asset("assets/images/mc.svg"),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 20.0, top: 20, bottom: 10),
                        child: Text(
                          "Expire Date",
                          style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, top: 20, bottom: 10, right: 150),
                      child: Text(
                        "CVV",
                        style: TextStyle(
                          color: Color(0xFF616E7C),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 60,
                          width: 168,
                          child: Calender(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 33.0),
                      child: Container(
                        height: 60,
                        width: 168,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(1, 1),
                              color: Colors.grey.shade200,
                              spreadRadius: 1,
                              blurRadius: 30,
                            )
                          ],
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Color(0xFFAAAAAA)),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d{0,3}$')),
                          ],
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(20),
                            prefixIcon: Icon(
                              Icons.lock_outline_rounded,
                              color: Color(0xFFAAAAAA),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(flex: 1,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xFF6C8FF8)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
                  minimumSize: const MaterialStatePropertyAll(Size(366, 60)),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(MyApp.routeName);
                },
                child: const Text(
                  "Add Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
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
