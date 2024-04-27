// ignore_for_file: annotate_overrides, overridden_fields, avoid_dynamic_calls
// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes

import 'package:collection/collection.dart';
import 'package:ucum/ucum.dart';

import '../../../fhir_r4.dart';

/// This includes all input that should be ignored, this includes pure white
/// space, along with comments, it simply returns whatever has been passed to it
class WhiteSpaceParser extends ValueParser<String> {
  WhiteSpaceParser(super.value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results;

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead.
  @override
  String verbosePrint(int indent) =>
      '${"  " * indent}WhiteSpaceParser: "$value"';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => value;
}

/// Boolean Parser, it returns a FHIR Boolean value
class BooleanParser extends ValueParser<bool> {
  BooleanParser(super.value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      <dynamic>[value];

  @override
  String verbosePrint(int indent) => '${"  " * indent}BooleanParser: "$value"';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '$value';
}

/// This allows the passing of a variable from the environment into the
/// evaluation.
class EnvVariableParser extends ValueParser<String> {
  EnvVariableParser(super.value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final String variableName = value.replaceAll('`', '');

    if (variableName == '%sct') {
      return <dynamic>['http://snomed.info/sct'];
    }

    if (variableName == '%loinc') {
      return <dynamic>['http://loinc.org'];
    }

    if (variableName == '%ucum') {
      return <dynamic>['http://unitsofmeasure.org'];
    }

    if (variableName.startsWith('%vs-')) {
      final String valueSet = variableName.substring(4);
      return <dynamic>['http://hl7.org/fhir/ValueSet/$valueSet'];
    }

    if (variableName.startsWith('%ext-')) {
      final String extension = variableName.substring(5);
      return <dynamic>['http://hl7.org/fhir/StructureDefinition/$extension'];
    }

    final dynamic passedValue = passed[variableName];
    if (passedValue == null) {
      throw FhirPathEvaluationException(
          'Variable $variableName does not exist.',
          variables: passed);
    }

    if (passedValue is! Function) {
      return passedValue is List<dynamic>
          ? passedValue
          : <dynamic>[passedValue];
    } else {
      try {
        final dynamic result = passedValue();

        return result is List<dynamic> ? result : <dynamic>[result];
      } catch (ex) {
        throw FhirPathEvaluationException(
            'Variable $value could not be lazily evaluated.',
            cause: ex);
      }
    }
  }

  @override
  String verbosePrint(int indent) =>
      '${"  " * indent}EnvVariableParser: "$value"';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => value;
}

/// The Quantity type represents quantities with a specified unit, where
/// the value component is defined as a Decimal, and the unit element is
/// represented as a String that is required to be either a valid Unified
/// Code for Units of Measure (UCUM) unit or one of the calendar duration
/// keywords, singular or plural.
class QuantityParser extends ValueParser<ValidatedQuantity> {
  QuantityParser(super.value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      <dynamic>[value];

  @override
  String verbosePrint(int indent) => '${"  " * indent}QuantityParser: "$value"';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '$value';

  bool operator ==(Object other) {
    return other is QuantityParser
        ? value == other.value
        : other is ValidatedQuantity
            ? value == other
            : other is UcumDecimal
                ? value.value == other
                : other is String
                    ? value == ValidatedQuantity.fromString(other)
                    : other is num
                        ? value ==
                            ValidatedQuantity.fromString(other.toString())
                        : false;
  }

  @override
  int get hashCode => value.hashCode;
}

/// The Integer type represents whole numbers in the range -2^31 to 2^31-1 in
/// the FHIRPath spec, although we follow Dart's [int] which is +/- 2^53
class IntegerParser extends ValueParser<int> {
  IntegerParser(super.value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      <dynamic>[value];

  @override
  String toString() {
    return 'Integer: $value';
  }

  @override
  String verbosePrint(int indent) => '${"  " * indent}IntegerParser: "$value"';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '$value';
}

/// The Decimal type represents real values in the range (-10^28+1)/10^8 to
/// (10^28-1)/10^8 with a step size of 10^-8. Again, this is FHIRPath's official
/// definition, we use Dart's [double], which I believe is the same range as
/// [int] but with 15 decimal points. FHIRPath's range is defined based on a
/// survey of decimal-value implementations and is based on the most useful
/// lowest common denominator. Implementations can provide support for larger
/// decimals and higher precision, but must provide at least the range and
/// precision defined here. In addition, implementations should use
/// fixed-precision decimal formats to ensure that decimal values are
/// accurately represented
class DecimalParser extends ValueParser<double> {
  DecimalParser(super.value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      <dynamic>[value];

  @override
  String toString() {
    return 'Decimal: $value';
  }

  @override
  String verbosePrint(int indent) => '${"  " * indent}DecimalParser: "$value"';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '$value';
}

/// Identifiers are used as labels to allow expressions to reference elements
/// such as model types and properties. FHIRPath supports two types of
/// identifiers, simple and delimited.
/// A simple identifier is any alphabetical character or an underscore,
/// followed by any number of alpha-numeric characters or underscores
class IdentifierParser extends ValueParser<String> {
  IdentifierParser(this.identifier, super.value);
  final String identifier;

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final String identifierName = value;

    final List<dynamic> finalResults = <dynamic>[];
    final List<dynamic> finalPrimitiveExtensions =
        List<dynamic>.filled(results.length, null);

    final dynamic passedExtensions = passed[ExtensionParser.extensionKey];
    passed[ExtensionParser.extensionKey] = null;

    if (R4ResourceType.typesAsStrings.contains(identifierName)) {
      if (!passed.hasNoContext &&
          passed.context?['resourceType'] == identifierName) {
        finalResults.add(passed.context);
      }
    } else {
      results.forEachIndexed((int i, dynamic r) {
        if (r is Map) {
          String jsonIdentifierName = identifierName;
          dynamic rValue = r[identifierName];
          if (rValue == null) {
            // Support for polymorphism:
            // If the key cannot be found in the r-map, then find
            // a key that starts with the same word, e.g. 'value' identifier will
            // match 'valueDateTime' key.
            r.forEach((dynamic k, dynamic v) {
              if (k.toString().startsWith(identifierName) &&
                  polymorphicPrefixes.contains(identifierName) &&
                  startsWithAPolymorphicPrefix(k.toString())) {
                rValue = v;
                jsonIdentifierName = k.toString();
              }
            });
          }

          final Map<String, dynamic>? jsonPrimitiveExtension =
              r['_$jsonIdentifierName'] as Map<String, dynamic>?;
          if (jsonPrimitiveExtension != null) {
            finalPrimitiveExtensions[i] = jsonPrimitiveExtension['extension'];
          }

          if (rValue is List) {
            finalResults.addAll(rValue as Iterable<dynamic>);
          } else if (rValue != null) {
            finalResults.add(rValue);
          } else if (r['resourceType'] == identifierName) {
            finalResults.add(r);
          }
        } else {
          if (identifierName == 'extension') {
            // Special processing for extensions on primitives
            if (passedExtensions != null) {
              final dynamic extensionOnPrimitive = passedExtensions[i];
              if (extensionOnPrimitive != null) {
                finalResults.addAll(extensionOnPrimitive as Iterable<dynamic>);
              }
            } else {
              // This primitive does not have an extension
              // Do nothing.
            }
          }
        }
      });
    }

    passed[ExtensionParser.extensionKey] = finalPrimitiveExtensions;

    return finalResults;
  }

  @override
  String verbosePrint(int indent) =>
      '${"  " * indent}IdentifierParser: "$value"';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => value;
}

/// Identifiers are used as labels to allow expressions to reference elements
/// such as model types and properties. FHIRPath supports two types of
/// identifiers, simple and delimited.
/// A delimited identifier is any sequence of characters enclosed in
/// backticks ( ` ):
/// The use of backticks allows identifiers to contains spaces, commas, and
/// other characters that would not be allowed within simple identifiers. This
/// allows identifiers to be more descriptive, and also enables expressions to
/// reference models that have property or type names that are not valid
/// simple identifiers.
class DelimitedIdentifierParser extends ValueParser<String> {
  DelimitedIdentifierParser(super.value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final String identifierName = value;

    final List<dynamic> finalResults = <dynamic>[];
    final List<dynamic> finalPrimitiveExtensions =
        List<dynamic>.filled(results.length, null);

    final dynamic passedExtensions = passed[ExtensionParser.extensionKey];
    passed[ExtensionParser.extensionKey] = null;

    if (R4ResourceType.typesAsStrings.contains(identifierName) &&
        (passed.hasNoContext
            ? false
            : passed.context?['resourceType'] == identifierName)) {
      finalResults.add(passed.context);
    } else {
      results.forEachIndexed((int i, dynamic r) {
        if (r is Map) {
          String jsonIdentifierName = identifierName;
          dynamic rValue = r[identifierName];
          if (rValue == null) {
            // Support for polymorphism:
            // If the key cannot be found in the r-map, then find
            // a key that starts with the same word, e.g. 'value' identifier will
            // match 'valueDateTime' key.
            r.forEach((dynamic k, dynamic v) {
              if (k.toString().startsWith(identifierName) &&
                  polymorphicPrefixes.contains(identifierName) &&
                  startsWithAPolymorphicPrefix(k.toString())) {
                rValue = v;
                jsonIdentifierName = k.toString();
              }
            });
          }

          final Map<String, dynamic>? jsonPrimitiveExtension =
              r['_$jsonIdentifierName'] as Map<String, dynamic>?;
          if (jsonPrimitiveExtension != null) {
            finalPrimitiveExtensions[i] = jsonPrimitiveExtension['extension'];
          }

          if (rValue is List) {
            finalResults.addAll(rValue as Iterable<dynamic>);
          } else if (rValue != null) {
            finalResults.add(rValue);
          } else if (r['resourceType'] == identifierName) {
            finalResults.add(r);
          }
        } else {
          if (identifierName == 'extension') {
            // Special processing for extensions on primitives
            if (passedExtensions != null) {
              final dynamic extensionOnPrimitive = passedExtensions[i];
              if (extensionOnPrimitive != null) {
                finalResults.addAll(extensionOnPrimitive as Iterable<dynamic>);
              }
            } else {
              // This primitive does not have an extension
              // Do nothing.
            }
          }
        }
      });
    }

    passed[ExtensionParser.extensionKey] = finalPrimitiveExtensions;

    return finalResults;
  }

  @override
  String verbosePrint(int indent) =>
      '${"  " * indent}DelimitedIdentifierParser: "$value"';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '`$value`';
}

/// The String type represents string values up to 2^31-1 characters in length.
/// String literals are surrounded by single-quotes and may use \-escapes to
/// escape quotes and represent Unicode characters.
class StringParser extends ValueParser<String> {
  StringParser(super.value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    return <dynamic>[value];
  }

  @override
  String verbosePrint(int indent) => "${'  ' * indent}StringParser: '$value'";

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => "'$value'";
}

/// The DateTime type represents date/time and partial date/time values in the
/// range @0001-01-01T00:00:00.000 to @9999-12-31T23:59:59.999 with a 1
/// millisecond step size. This range is defined based on a survey of datetime
/// implementations and is based on the most useful lowest common denominator.
/// Implementations can provide support for larger ranges and higher precision,
/// but must provide at least the range and precision defined here.
class DateTimeParser extends BaseDateTimeParser<FhirDateTime> {
  DateTimeParser(super.value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      <dynamic>[value];

  @override
  String toString() => '$runtimeType: $value';

  @override
  String verbosePrint(int indent) => '${"  " * indent}DateTimeParser: "$value"';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '@${toString()}';
}

/// The Date type represents date and partial date values in the range
/// @0001-01-01 to @9999-12-31 with a 1 day step size.
class DateParser extends BaseDateTimeParser<FhirDate> {
  DateParser(super.value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      <dynamic>[value];

  @override
  String toString() => value.toString();

  @override
  String verbosePrint(int indent) => '${"  " * indent}DateParser: "$value"';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '@$value';
}

/// The Time type represents time-of-day and partial time-of-day values in the
/// range @T00:00:00.000 to @T23:59:59.999 with a step size of 1 millisecond.
/// This range is defined based on a survey of time implementations and is
/// based on the most useful lowest common denominator. Implementations can
/// provide support for higher precision, but must provide at least the range
/// and precision defined here. Time values in FHIRPath do not have a timezone
/// or timezone offset.
class TimeParser extends BaseDateTimeParser<FhirTime> {
  TimeParser(super.value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      <dynamic>[value];

  @override
  String toString() => value.toString();

  @override
  String verbosePrint(int indent) => '${"  " * indent}TimeParser: "$value"';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '@T$value';
}
