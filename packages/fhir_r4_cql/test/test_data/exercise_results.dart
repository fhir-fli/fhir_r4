import 'exercises_01.dart';
import 'exercises_02.dart';
import 'exercises_03.dart';
import 'exercises_04.dart';
import 'exercises_05.dart';
import 'exercises_06.dart';
import 'exercises_07.dart';
import 'exercises_08.dart';
import 'exercises_09.dart';
import 'exercises_10.dart';
import 'exercises_11.dart';
import 'simple.dart';

final results = <String, dynamic>{
  'Simple.cql': simple,
  'Exercises01.cql': exercises01,
  'Exercises02.cql': exercises02,
  'Exercises03.cql': exercises03,
  'Exercises04.cql': exercises04,
  'Exercises05.cql': exercises05,
  'Exercises06.cql': exercises06,
  'Exercises07.cql': exercises07,
  'Exercises08.cql': exercises08,
  'Exercises09.cql': exercises09,
  'Exercises10.cql': exercises10,
  'Exercises11.cql': exercises11,
};

final contexts = <String, dynamic>{
  'Simple.cql': {},
  'Exercises01.cql': {},
  'Exercises02.cql': {},
  'Exercises03.cql': {},
  'Exercises04.cql': {},
  'Exercises05.cql': context05,
  'Exercises06.cql': context06,
  'Exercises07.cql': context07,
  'Exercises08.cql': context08,
  'Exercises09.cql': context09,
  'Exercises10.cql': context10,
  'Exercises11.cql': context11,
};
