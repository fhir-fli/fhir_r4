// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters
// ignore_for_file: avoid_print

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// Internal utilities class for FHIRPath engine.
///
/// This class contains helper methods used by operations, functions, and execution.
/// It is not part of the public API - users should use [FHIRPathEngine] instead.
class FhirPathUtilities {
  final FhirPathContext context;

  FhirPathUtilities(this.context);

  // String conversion helpers
  String convertToString(FhirBase item) {
    if (item is PrimitiveType) {
      return item.valueString ?? '';
    } else if (item is Quantity) {
      final q = item.copyWith();
      if (q.unit != null &&
          [
            'year',
            'years',
            'month',
            'months',
            'week',
            'weeks',
            'day',
            'days',
            'hour',
            'hours',
            'minute',
            'minutes',
            'second',
            'seconds',
            'millisecond',
            'milliseconds',
          ].contains(q.unit?.valueString) &&
          (q.system == null ||
              q.system.toString() == 'http://unitsofmeasure.org')) {
        return '${q.value} ${q.unit}';
      }
      if (q.system.toString() == 'http://unitsofmeasure.org') {
        final u = "'${q.code}'";
        return '${q.value} $u';
      } else {
        return item.toString();
      }
    } else {
      return item.toString();
    }
  }

  String convertListToString(List<FhirBase> items) {
    final b = StringBuffer();
    var first = true;
    for (final item in items) {
      if (first) {
        first = false;
      } else {
        b.write(',');
      }

      b.write(convertToString(item));
    }
    return b.toString();
  }

  List<FhirBase> makeBoolean(bool value) {
    return <FhirBase>[FhirBoolean(value).noExtensions()];
  }

  bool isBoolean(List<FhirBase> list, bool value) {
    return list.length == 1 &&
        list.first is FhirBoolean &&
        (list.first as FhirBoolean).valueBoolean == value;
  }

  FpEquality asBool(FhirBase item, [bool narrow = false]) {
    if (item is FhirBoolean && item.valueBoolean != null) {
      return item.valueBoolean! ? FpEquality.true_ : FpEquality.false_;
    }

    if (!narrow) {
      if ((item is FhirInteger ||
              item is FhirPositiveInt ||
              item is FhirUnsignedInt) &&
          (item as FhirNumber).valueString != null) {
        return asBoolFromInt(item.valueString!);
      } else if (item is FhirDecimal && item.valueString != null) {
        return asBoolFromDec(item.valueString!);
      } else if (item is FhirString) {
        final lowerValue = (item.valueString ?? '').toLowerCase();
        if (['true', 't', 'yes', 'y', '1', '1.0'].contains(lowerValue)) {
          return FpEquality.true_;
        } else if (['false', 'f', 'no', 'n', '0', '0.0'].contains(lowerValue)) {
          return FpEquality.false_;
        }
      }
    }
    return FpEquality.null_;
  }

  FpEquality asBoolFromList(List<FhirBase> items, ExpressionNode expr) {
    if (items.isEmpty) return FpEquality.null_;

    if (items.length == 1) {
      if (items.first is FhirBoolean) {
        return asBool(items.first, true);
      }
      return FpEquality.true_;
    }

    throw this.context.makeException(
          expr,
          'FHIRPATH_UNABLE_BOOLEAN',
          items.map((e) => e.toString()).toList(),
        );
  }

  FpEquality asBoolFromInt(String value) {
    final parsedValue = int.tryParse(value);

    if (parsedValue == null) return FpEquality.null_;
    if (parsedValue == 0) return FpEquality.false_;
    if (parsedValue == 1) return FpEquality.true_;
    return FpEquality.null_;
  }

  FpEquality asBoolFromDec(String value) {
    try {
      final parsedValue = BigInt.parse(value);
      if (parsedValue == BigInt.zero) return FpEquality.false_;
      if (parsedValue == BigInt.one) return FpEquality.true_;
      return FpEquality.null_;
    } catch (e) {
      return FpEquality.null_;
    }
  }

  bool canConvertToBoolean(FhirBase item) {
    if (item is FhirBoolean) return true;

    if (item is PrimitiveType) {
      final value = item.toString().toLowerCase();
      return [
        'true',
        't',
        'yes',
        'y',
        '1',
        '1.0',
        'false',
        'f',
        'no',
        'n',
        '0',
        '0.0',
      ].contains(value);
    }

    return false;
  }

  bool convertToBoolean(List<FhirBase>? items) {
    if (items == null || items.isEmpty) return false;

    if (items.length == 1) {
      final first = items.first;
      if (first is FhirBoolean) {
        return first.valueBoolean ?? false;
      }

      final lowerValue = first.toString().toLowerCase();
      if (['true', 't', 'yes', 'y', '1', '1.0'].contains(lowerValue)) {
        return true;
      } else if (['false', 'f', 'no', 'n', '0', '0.0'].contains(lowerValue)) {
        return false;
      }
    }

    return items.isNotEmpty;
  }

  FpEquality asBoolList(List<FhirBase> items, ExpressionNode expr) {
    if (items.isEmpty) {
      return FpEquality.null_;
    } else if (items.length == 1) {
      final eqBool = asBool(items.first);
      return eqBool == FpEquality.null_ ? FpEquality.true_ : eqBool;
    } else {
      throw this.context.makeException(
        expr,
        'FHIRPATH_UNABLE_BOOLEAN',
        [convertListToString(items)],
      );
    }
  }

  FpEquality boolToTriState(bool b) {
    return b ? FpEquality.true_ : FpEquality.false_;
  }

  void addTypeAndDescendents(
    List<StructureDefinition> sdl,
    StructureDefinition dt,
    List<StructureDefinition> types,
  ) {
    sdl.add(dt);
    for (final sd in types) {
      if (sd.baseDefinition != null &&
          sd.baseDefinition.toString() == dt.url.toString() &&
          sd.derivation == TypeDerivationRule.specialization) {
        addTypeAndDescendents(sdl, sd, types);
      }
    }
  }
}
