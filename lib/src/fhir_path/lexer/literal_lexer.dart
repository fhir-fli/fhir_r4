// ignore_for_file: avoid_dynamic_calls, non_constant_identifier_names

import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:petitparser/petitparser.dart';
import 'package:ucum/ucum.dart';

/******************************************************************************
 *  Most of these Lexers specify basic literals as defined in the FHIRPath
 * grammar that can be seen here: http://hl7.org/fhirpath/grammar.html
 * ***************************************************************************/

/// Finds strings 'true' or 'false' (without quotes)
final Parser<BooleanParser> booleanLiteral = (string('true') | string('false'))
    .flatten()
    .map((String value) => BooleanParser(value == 'true'));

/// Allows environmental variables to be passed to FHIRPath
final Parser<EnvVariableParser> envVariableLexer =
    (char('%') & (IDENTIFIER | DELIMITEDIDENTIFIER | DOUBLEQUOTEDIDENTIFIER))
        .flatten()
        .map(EnvVariableParser.new);

// TODO(Dokotela): unitLexer should be optional
/// A Quantity is a number followed by a unit
final Parser<QuantityParser> quantityLiteral =
    (NUMBER.flatten() & (char(' ') & unitLexer)).map((List<dynamic> value) {
  return QuantityParser(
    ValidatedQuantity(
      value: UcumDecimal.fromString(value[0] as String),
      unit: value.length > 1 ? value[1].last as String : null,
    ),
  );
});

/// A unit is a string that is either a valid UCUM unit or a date/time precision
final Parser<String> unitLexer = (pluralDateTimePrecision |
        dateTimePrecision |
        STRING
            .where((StringParser value) {
              return UcumService().validate(value.value) == null;
            })
            .trim()
            .map((StringParser value) => value.value))
    .flatten()
    .map((String value) {
  if (value.startsWith("'")) {
    value = value.substring(1, value.length - 1);
  }
  if (value.endsWith("'")) {
    value = value.substring(0, value.length - 1);
  }
  return value;
});

/// A date/time precision is a string that is one of the following:
final Parser<String> dateTimePrecision = (string('year') |
        string('month') |
        string('week') |
        string('day') |
        string('hour') |
        string('minute') |
        string('second') |
        string('millisecond'))
    .flatten();

/// A plural date/time precision is a string that is one of the following:
final Parser<String> pluralDateTimePrecision = (string('years') |
        string('months') |
        string('weeks') |
        string('days') |
        string('hours') |
        string('minutes') |
        string('seconds') |
        string('milliseconds'))
    .flatten();

/// Follows DateTime format specified in FHIRPath (I have also updated the FHIR)
/// package to follow many of these guidelines
final Parser<DateParser> DATE =
    (char('@') & DATEFORMAT).flatten().map((String value) {
  return DateParser(FhirDate.fromString(value.replaceFirst('@', '')));
});

/// Follows DateTime format specified in FHIRPath (I have also updated the FHIR)
final Parser<DateTimeParser> DATETIME = (char('@') &
        DATEFORMAT &
        char('T') &
        (TIMEFORMAT & TIMEZONEOFFSETFORMAT.optional()).optional())
    .flatten()
    .map((String value) {
  return DateTimeParser(FhirDateTime.fromString(value.replaceFirst('@', '')));
});

/// Follows DateTime format specified in FHIRPath (I have also updated the FHIR)
final Parser<TimeParser> TIME = (char('@') & char('T') & TIMEFORMAT)
    .flatten()
    .map((String value) => TimeParser(FhirTime(value.replaceFirst('@T', ''))));

/// Follows DateTime format specified in FHIRPath (I have also updated the FHIR)
final Parser<String> DATEFORMAT = (pattern('0-9').times(4) &
        (char('-') &
                pattern('0-9').times(2) &
                (char('-') & pattern('0-9').times(2)).optional())
            .optional())
    .flatten();

/// Follows DateTime format specified in FHIRPath (I have also updated the FHIR)
final Parser<String> TIMEFORMAT = (pattern('0-9').times(2) &
        (char(':') &
                pattern('0-9').times(2) &
                (char(':') &
                        pattern('0-9').times(2) &
                        (char('.') & pattern('0-9').plus()).optional())
                    .optional())
            .optional())
    .flatten();

/// Follows DateTime format specified in FHIRPath (I have also updated the FHIR)
final Parser<String> TIMEZONEOFFSETFORMAT = (char('Z') |
        (pattern('+-') &
            pattern('0-9').times(2) &
            char(':') &
            pattern('0-9').times(2)))
    .flatten();

/// An Identifier has no quotes
final Parser<IdentifierParser> IDENTIFIER = ((pattern('A-Za-z') | char('_')) &
        (pattern('A-Za-z0-9') | char('_')).star())
    .flatten()
    .map((String value) => IdentifierParser('', value));

/// DELIMITEDIDENTIFIER is signified by a backquote (`) on either end
final Parser<IdentifierParser> DELIMITEDIDENTIFIER =
    (char('`') & (ESC | char('`').neg()).star() & char('`'))
        .map((List<dynamic> value) {
  final middleValue = value[1]
      .map(
        (dynamic e) => e is Token
            ? e.value.contains('u') as bool
                ? utf8.decode(<int>[
                    int.parse(e.value.split('u').last as String, radix: 16),
                  ])
                : e.value.replaceAll(r'\\', r'\')
            : e == r'\'
                ? ''
                : e,
      )
      .join('') as String;
  return IdentifierParser('`', middleValue);
});

/// DOUBLEQUOTEDIDENTIFIER is signified by double quotes (") on either end
final Parser<IdentifierParser> DOUBLEQUOTEDIDENTIFIER =
    (char('"') & (ESC | char('"').neg()).star() & char('"'))
        .map((List<dynamic> value) {
  final middleValue = value[1]
      .map(
        (dynamic e) => e is Token
            ? e.value.contains('u') as bool
                ? utf8.decode(<int>[
                    int.parse(e.value.split('u').last as String, radix: 16),
                  ])
                : e.value.replaceAll(r'\\', r'\')
            : e == r'\'
                ? ''
                : e,
      )
      .join('') as String;
  return IdentifierParser('"', middleValue);
});

/// A String is signified by single quotes (') on either end
final Parser<StringParser> STRING =
    (char("'") & (ESC | char("'").neg()).star() & char("'"))
        .map((List<dynamic> value) {
  return StringParser(value[1].join('') as String);
});

/// Also allows leading zeroes now (just like CQL and XSD)
final Parser NUMBER = DECIMAL.or(INTEGER);

/// A Decimal is a number with a decimal point
final Parser<DecimalParser> DECIMAL =
    (pattern('0-9').plus() & char('.') & pattern('0-9').plus())
        .flatten()
        .map((String value) => DecimalParser(double.parse(value)));

/// An Integer is a number without a decimal point
final Parser<IntegerParser> INTEGER = pattern('0-9')
    .plus()
    .flatten()
    .map((String value) => IntegerParser(int.parse(value)));

/// No equivalent for piping whitespace to the HIDDEN channel in Dart
final Parser<WhiteSpaceParser> WS =
    pattern(' \r\n\t').plus().flatten().map(WhiteSpaceParser.new);

/// No equivalent for piping whitespace to the HIDDEN channel in Dart
final Parser<WhiteSpaceParser> COMMENT = string('/*')
    .seq(pattern(r'^\*'))
    .star()
    .seq(string('*/'))
    .flatten()
    .map(WhiteSpaceParser.new);

/// No equivalent for piping whitespace to the HIDDEN channel in Dart
final Parser<WhiteSpaceParser> LINE_COMMENT =
    (string('//') & (string('\r') | string('\n')).neg().star())
        .flatten()
        .map(WhiteSpaceParser.new);

/// No equivalent for piping whitespace to the HIDDEN channel in Dart
final Parser<String> ESC = ((char(r'\') & pattern(r"`'\/fnrt")).flatten() |
        (char(r'\') & UNICODE).map((List<dynamic> value) {
          return String.fromCharCodes(<int>[
            int.parse(value[1].replaceAll('u', '') as String, radix: 16),
          ]);
        }))
    .map((dynamic value) {
  return (value == r"\'"
      ? "'"
      : value == r'\`'
          ? '`'
          : jsonDecode('"$value"')) as String;
});

/// No equivalent for piping whitespace to the HIDDEN channel in Dart
final Parser<String> UNICODE = string('u')
    .seq(HEX)
    .seq(HEX)
    .seq(HEX)
    .seq(HEX)
    .flatten()
    .map((String value) {
  return value;
});

/// No equivalent for piping whitespace to the HIDDEN channel in Dart
final Parser<String> HEX = pattern('0-9a-fA-F').flatten();
