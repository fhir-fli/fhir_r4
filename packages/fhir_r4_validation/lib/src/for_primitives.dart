import 'package:fhir_r4/fhir_r4.dart';

/// The R4B rules for a primitive value: each value is handed to the
/// model's primitive constructor, which rejects what it cannot hold.
///

/// Assesses if a value is a valid Primitive of the type specificed
bool isValueAValidPrimitive(String primitiveClass, dynamic value) {
  try {
    switch (primitiveClass.toLowerCase()) {
      case 'base64binary':
        if (value is! String) {
          return false;
        } else {
          FhirBase64Binary(value);
        }
      case 'boolean':
        if (value is! bool) {
          return false;
        } else {
          FhirBoolean(value);
        }
      case 'canonical':
        if (value is! String) {
          return false;
        } else {
          FhirCanonical(value);
        }
      case 'code':
        if (value is! String) {
          return false;
        } else {
          FhirCode(value);
        }
      case 'date':
        if (value is String) {
          FhirDate.fromString(value);
        } else {
          return false;
        }
      case 'decimal':
        if (value is! num) {
          return false;
        } else {
          FhirDecimal(value);
        }
      case 'datetime':
        if (value is String) {
          FhirDateTime.fromString(value);
        } else {
          return false;
        }
      case 'uri':
        if (value is! String) {
          return false;
        } else {
          FhirUri(value);
        }
      case 'url':
        if (value is! String) {
          return false;
        } else {
          FhirUrl(value);
        }
      case 'id':
        if (value is! String) {
          return false;
        } else {
          FhirId(value);
        }
      case 'instant':
        if (value is String) {
          FhirInstant.fromString(value);
        } else {
          return false;
        }
      case 'integer':
        if (value is! int) {
          return false;
        } else {
          FhirInteger(value);
        }
      case 'integer64':
        if (value is! String && value is! BigInt) {
          return false;
        } else if (value is BigInt) {
          FhirInteger64(value);
        } else {
          final bigInt = BigInt.tryParse(value as String);
          if (bigInt == null) {
            return false;
          } else {
            FhirInteger64(bigInt);
          }
        }
      case 'markdown':
        if (value is! String) {
          return false;
        } else {
          FhirMarkdown(value);
        }
      case 'xhtml':
        if (value is! String) {
          return false;
        } else {
          FhirMarkdown(value);
        }
      case 'oid':
        if (value is! String) {
          return false;
        } else {
          FhirOid(value);
        }
      case 'positiveint':
        if (value is! int) {
          return false;
        } else {
          FhirPositiveInt(value);
        }
      case 'time':
        if (value is! String) {
          return false;
        } else {
          FhirTime(value);
        }
      case 'unsignedint':
        if (value is! int) {
          return false;
        } else {
          FhirUnsignedInt(value);
        }
      case 'uuid':
        if (value is! String) {
          return false;
        } else {
          FhirUuid(value);
        }
      case 'http://hl7.org/fhirpath/system.string':
      case 'string':
        return value is String;
    }
    return true;
    // The primitive constructors signal an invalid value with ArgumentError
    // (FhirPositiveInt(0), FhirDate('not a date')); a FormatException would
    // be Dart's convention, but that is the model's API across three
    // versions.
    // ignore: avoid_catching_errors
  } on ArgumentError catch (_) {
    return false;
  } on FormatException catch (_) {
    // FhirUuid signals an invalid value with FormatException.
    return false;
  }
}
