// ignore_for_file: library_private_types_in_public_api, prefer_final_fields

import 'package:bmi/components/gender_widget.dart';
import 'package:bmi/components/status_card.dart';
import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _currentSliderValue = 180;
  bool isFemale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        centerTitle: true,
        title: const Text(AppText.appBarText),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  const StatusCard(
                    widget: GenderWidget(
                      icon: Icons.male,
                      text: AppText.male,
                      isFemale: false,
                    ),
                  ),
                  StatusCard(
                    widget: GenderWidget(
                      icon: Icons.female,
                      text: AppText.female,
                      isFemale: !isFemale,
                    ),
                  ),
                ],
              ),
            ),
            StatusCard(
              widget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    AppText.height,
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        '180',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 6),
                        child: Text(
                          AppText.cm,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: AppColors.textColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: _currentSliderValue,
                    max: 300,
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                    activeColor: AppColors.white,
                    thumbColor: AppColors.redColor,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          AppText.weight,
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          '60',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              backgroundColor: AppColors.btnColor,
                              foregroundColor: AppColors.white,
                              onPressed: () {},
                              child: const Icon(
                                Icons.remove,
                                size: 30,
                              ),
                            ),
                            FloatingActionButton(
                              backgroundColor: AppColors.btnColor,
                              foregroundColor: AppColors.white,
                              onPressed: () {},
                              child: const Icon(
                                Icons.add,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  StatusCard(
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          AppText.age,
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          '28',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              backgroundColor: AppColors.btnColor,
                              foregroundColor: AppColors.white,
                              onPressed: () {},
                              child: const Icon(
                                Icons.remove,
                                size: 30,
                              ),
                            ),
                            FloatingActionButton(
                              backgroundColor: AppColors.btnColor,
                              foregroundColor: AppColors.white,
                              onPressed: () {},
                              child: const Icon(
                                Icons.add,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 73,
          color: AppColors.redColor,
          child: const Center(
            child: Text(
              AppText.calculator,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
