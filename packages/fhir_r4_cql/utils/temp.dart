import 'dart:io';

Future<void> main() async {
  const intervalX = 'IntervalX';
  final firstList = [];
  for (final startsEndsOccurs in ['', 'starts', 'ends', 'occurs']) {
    firstList
        .add('$intervalX${startsEndsOccurs == "" ? "" : " $startsEndsOccurs"}');
  }
  final secondList = [];
  for (final quantity in [
    '',
    '3 days or more',
    '3 days or less',
    'less than 3 days',
    'more than 3 days',
  ]) {
    for (final entry in firstList) {
      secondList.add('$entry${quantity == "" ? "" : " $quantity"}');
    }
  }
  final thirdList = [];
  for (final quantity in [
    'before',
    'after',
    'on or before',
    'on or after',
    'before or on',
    'after or on',
  ]) {
    for (final entry in secondList) {
      thirdList.add('$entry $quantity');
    }
  }
  final fourthList = [];
  for (final quantity in [
    '',
    'start',
    'end',
  ]) {
    for (final entry in thirdList) {
      fourthList.add('$entry${quantity == "" ? "" : " $quantity"} IntervalY');
    }
  }
  var fileString = '';
  for (var i = 0; i < fourthList.length; i++) {
    fileString += 'define "annoyingTest$i":\n  ${fourthList[i]}\n\n';
  }
  await File('temp.cql').writeAsString(fileString);
}
