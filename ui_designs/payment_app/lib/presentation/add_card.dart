import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/presentation/custom_input_formatter.dart';
import 'package:payment_app/presentation/datepicker.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'New card',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                keyboardType: TextInputType.number,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(12),
                  CustomInputFormatter(),
                ],
                decoration: InputDecoration(
                  hintText: 'account no.',
                  fillColor: const Color(0xfff3f3f3),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xfff3f3f3)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xfff3f3f3)),
                  ),
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.credit_card_rounded,
                  ),
                  suffixIcon: SvgPicture.asset(
                    'assets/visa.svg',
                    height: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'user name',
                  fillColor: const Color(0xfff3f3f3),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xfff3f3f3)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xfff3f3f3)),
                  ),
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.person_2,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'cvv',
                        fillColor: const Color(0xfff3f3f3),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Color(0xfff3f3f3)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Color(0xfff3f3f3)),
                        ),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.credit_card,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: TextField(
                      readOnly: true,
                      onTap: CustomDatePicker(context: context).pickDate,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'date',
                        fillColor: const Color(0xfff3f3f3),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Color(0xfff3f3f3)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Color(0xfff3f3f3)),
                        ),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.calendar_today,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                        side: const BorderSide(color: Color(0xffd3d3d3))),
                    elevation: 0,
                    foregroundColor: Colors.grey,
                    backgroundColor: Colors.white),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.search_sharp),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 13),
                      child: Text('Scan Card'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                elevation: 0,
                foregroundColor: Colors.white,
                backgroundColor: Colors.purple),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 13),
                  child: Text('Add Card'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
