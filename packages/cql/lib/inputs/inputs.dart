import 'package:cql/inputs/Exercises04.dart';

import 'Exercises01.dart';
import 'Exercises02.dart';
import 'Exercises03.dart';
import 'Exercises05.dart';
import 'Simple.dart';

final results = <String, dynamic>{
  'Simple.cql': simple,
  'Exercises01.cql': exercises01,
  'Exercises02.cql': exercises02,
  'Exercises03.cql': exercises03,
  'Exercises04.cql': exercises04,
  'Exercises05.cql': exercises05,
};

final contexts = <String, dynamic>{
  'Simple.cql': {},
  'Exercises01.cql': {},
  'Exercises02.cql': {},
  'Exercises03.cql': {},
  'Exercises04.cql': {},
  'Exercises05.cql': context05,
};
