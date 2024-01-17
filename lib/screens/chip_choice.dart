import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:vegetables/data/vegetable_filters.dart';
import 'package:vegetables/main.dart';

class ChipsChoiceScreen extends StatefulWidget {
  const ChipsChoiceScreen({super.key});

  @override
  State<ChipsChoiceScreen> createState() {
    return _CustomChipsChoiceScreen();
  }
}

class _CustomChipsChoiceScreen extends State<ChipsChoiceScreen> {
  List<String> selectedFilter = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ChipsChoice<String>.multiple(
        value: selectedFilter,
        wrapped: true,
        onChanged: (filter) {
          setState(() {
            selectedFilter = filter;
          });
        },
        choiceItems: C2Choice.listFrom<String, String>(
          source: filters,
          value: (idx, filter) {
            return filter;
          },
          label: (idx, filter) => filter,
        ),
        choiceCheckmark: true,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        choiceStyle: C2ChipStyle.filled(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
          borderRadius: const BorderRadius.all(Radius.circular(17)),
          color: Colors.white,
          height: 34,
          checkmarkColor: colorScheme.primary,
          foregroundColor: colorScheme.primary,
          elevation: 0,
          selectedStyle: C2ChipStyle(
            clipBehavior: Clip.antiAlias,
            foregroundStyle: const TextStyle(
              color: Color(0xFF6C0EE4),
              fontWeight: FontWeight.w500,
              letterSpacing: -0.41,
            ),
            backgroundColor: colorScheme.secondaryContainer,
          ),
          foregroundStyle: const TextStyle(
            color: Color(0xFF9586A8),
            letterSpacing: -0.41,
          ),
        ),
      ),
    );
  }
}
