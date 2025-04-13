// ignore_for_file: file_names

import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

final exercises02 = {
  'Boolean True': FhirBoolean(true),
  'Boolean False': FhirBoolean(false),
  'Boolean Not': FhirBoolean(true),
  'Boolean And': FhirBoolean(true),
  'Boolean Xor': FhirBoolean(true),
  'Boolean Implies': FhirBoolean(true),
  'Simple String': 'John Doe',
  'String Escapes': "John O'Mally",
  'String Equality': FhirBoolean(true),
  'String Comparisons': FhirBoolean(true),
  'Integer': FhirInteger(5),
  'Decimal': FhirDecimal(5.0),
  'Implicit Decimal Conversion': FhirDecimal(10.0),
  'Decimal Comparison Ignores Precision': FhirBoolean(true),
  'Standard Arithmetic Precedence': FhirInteger(52),
  'Use Parentheses to Force Precedence': FhirInteger(70),
  'Division Returns Decimal': FhirDecimal(5),
  'Use Truncated Divide (div) for Integer Division': FhirInteger(5),
  'Mod returns remainder': FhirInteger(0),
  'Mass Quantity': ValidatedQuantity.fromString("25 'mg'"),
  'Length Quantity': ValidatedQuantity.fromString("100 'cm2'"),
  'Respect the Units': FhirBoolean(true),
  'Calculate the Units': ValidatedQuantity.fromString("100 'cm2'"),
  'Date Value': FhirDate.fromString('2021-03-01'),
  'DateTime Value': FhirDateTime.fromString('2021-03-01T14:30:14.5'),
  'Time Value (at midnight)': FhirTime('12:00:00.000'),
  'Time Value': FhirTime('14:30:14.5'),
  'Partial Date (Year)': FhirDate.fromString('2014'),
  'Partial Date (Year-Month)': FhirDate.fromString('2014-01'),
  'Partial Time (Hour)': FhirTime('14'),
  'Partial Time (Hour Minute)': FhirTime('14:30'),
  'DateTime Function': FhirDate.fromString('2014-07-05'),
  'Time Function': FhirTime('14:30'),
  'Date From': FhirDate.fromString('2014-01-25'),
  'Time From': FhirTime('14:30:14'),
  'Component From (Year)': FhirInteger(2014),
  'Now Function': FhirDateTime.fromDateTime(DateTime.now()),
  'Today Function':
      FhirDate.fromString(DateTime.now().toIso8601String().substring(0, 10)),
  'TimeOfDay Function':
      FhirTime(DateTime.now().toIso8601String().substring(11)),
  'Simple Info': <String, dynamic>{
    "name": 'Patrick',
    "dob": FhirDate.fromString('2014-01-01')
  },
  'Nested Info': <String, dynamic>{
    "name": 'Patrick',
    "dob": FhirDate.fromString('2014-01-01'),
    "address": {
      "line1": '41 Spinning Ave',
      "city": 'Dayton',
      "state": 'OH',
    },
    "phones": [
      {
        "number": '202-413-1234',
        "use": 'home',
      }
    ]
  },
  'Null Comparison': null,
  'Null Arithmetic': null,
  'Null Predicate': FhirBoolean(false),
  'Not Null Predicate': FhirBoolean(true),
  '3-Valued Logic And': FhirBoolean(false),
  '3-Valued Logic Or': FhirBoolean(true),
  'Coalesce Expression': FhirInteger(1),
};
