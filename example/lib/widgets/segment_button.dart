import 'package:flutter/material.dart';
import 'package:styled/styled.dart';

enum Calendar { day, week, month, year }

class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});

  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  Calendar calendarView = Calendar.day;

  @override
  Widget build(BuildContext context) {
    return SegmentedButtond(
      ButtonSegmentd(value: Calendar.day, Textd('Day'), const Icon(Icons.calendar_view_day)),
      ButtonSegmentd(value: Calendar.week, Textd('Week'), const Icon(Icons.calendar_view_week)),
      ButtonSegmentd(value: Calendar.month, Textd('Month'), const Icon(Icons.calendar_view_month)),
      ButtonSegmentd(value: Calendar.year, Textd('Year'), const Icon(Icons.calendar_today)),
      {calendarView},
      (Set newSelection) {
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          calendarView = newSelection.first;
        });
      },
    );
  }
}

enum Sizes { extraSmall, small, medium, large, extraLarge }

class MultipleChoice extends StatefulWidget {
  const MultipleChoice({super.key});

  @override
  State<MultipleChoice> createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  Set selection = {Sizes.large, Sizes.extraLarge};

  @override
  Widget build(BuildContext context) {
    return SegmentedButtond(
      ButtonSegmentd(value: Sizes.extraSmall, Textd('XS')),
      ButtonSegmentd(value: Sizes.small, Textd('S')),
      ButtonSegmentd(value: Sizes.medium, Textd('M')),
      ButtonSegmentd(value: Sizes.large, Textd('L')),
      ButtonSegmentd(value: Sizes.extraLarge, Textd('XL')),
      selection,
      (Set newSelection) {
        setState(() {
          selection = newSelection;
        });
      },
      multiSelectionEnabled: true, // bool:0 also is `multiSelectionEnabled`
    );
  }
}
