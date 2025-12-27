// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:ucum/ucum.dart';

/// Internal utilities class for FHIRPath engine.
///
/// This class contains helper methods used by operations, functions, and
/// execution. It is not part of the public API - users should use
/// [FHIRPathEngine] instead.
class FhirPathUtilities {
  FhirPathUtilities(this.fpContext);

  final FhirPathContext fpContext;

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

    throw fpContext.makeException(
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
      throw fpContext.makeException(
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

  bool? doEquals(FhirBase left, FhirBase right) {
    if (left is Quantity && right is Quantity) {
      return qtyEqual(left, right);
    } else if (left is Quantity &&
        right is FhirNumber &&
        right.valueNum != null) {
      return qtyEqual(
        left,
        Quantity(
          value: FhirDecimal(right.valueNum),
          system: 'http://unitsofmeasure.org'.toFhirUri,
          code: '1'.toFhirCode,
        ),
      );
    } else if (left is FhirDateTimeBase && right is FhirDateTimeBase) {
      return datesEqual(left, right);
    } else if (left is FhirDecimal || right is FhirDecimal) {
      return decEqual(left.toString(), right.toString());
    } else if (left.isPrimitive && right.isPrimitive) {
      return left.primitiveValue == right.primitiveValue;
    } else {
      return left.compareDeep(left, right);
    }
  }

  bool decEqual(String left, String right) {
    return removeTrailingZeros(left) == removeTrailingZeros(right);
  }

  bool? datesEqual(FhirDateTimeBase left, FhirDateTimeBase right) {
    return left.isEqual(right);
  }

  String removeTrailingZeros(String s) {
    if (s.noString()) {
      return '';
    }

    var i = s.length - 1;
    var done = false;
    var dot = false;

    // Traverse the string from the end
    while (i > 0 && !done) {
      if (s[i] == '.') {
        dot = true;
        i--;
        done = true; // Stop if a dot is encountered
      } else if (!dot && s[i] == '0') {
        i--;
      } else {
        done = true;
      }
    }

    // If no dot is encountered, return the original string
    if (!dot) {
      return s;
    }

    // Otherwise, return the processed substring
    return s.substring(0, i + 1);
  }

  bool? qtyEqual(Quantity left, Quantity right) {
    if (left.value == null && right.value == null) {
      return true;
    }
    if (left.value == null || right.value == null) {
      return null;
    }
    final dl = qtyToCanonicalPair(left);
    final dr = qtyToCanonicalPair(right);

    if (dl != null && dr != null) {
      if (dl.unit == dr.unit) {
        return doEquals(
          FhirDecimal(dl.value.asDouble),
          FhirDecimal(dr.value.asDouble),
        );
      } else {
        return false;
      }
    }
    if (left.code != null || right.code != null) {
      if (!(left.code != null && right.code != null) ||
          left.code != right.code) {
        return null;
      }
    } else if (left.unit == null || right.unit == null) {
      if (!(left.unit != null && right.unit != null) ||
          left.unit != right.unit) {
        return null;
      }
    }
    return doEquals(left, right);
  }

  Pair? qtyToCanonicalPair(Quantity q) {
    String? ucum;
    switch (q.unit?.valueString) {
      case 'year':
      case 'years':
        ucum = 'a';
      case 'month':
      case 'months':
        ucum = 'mo';
      case 'week':
      case 'weeks':
        ucum = 'wk';
      case 'day':
      case 'days':
        ucum = 'd';
      case 'hour':
      case 'hours':
        ucum = 'h';
      case 'minute':
      case 'minutes':
        ucum = 'min';
      case 'second':
      case 'seconds':
        ucum = 's';
      case 'millisecond':
      case 'milliseconds':
        ucum = 'ms';
    }

    if (q.system?.toString() != 'http://unitsofmeasure.org' && ucum == null) {
      return null;
    }
    try {
      final p = Pair(
        value: UcumDecimal.fromNum(q.value!.valueDouble!),
        unit: q.code?.toString() ?? ucum ?? '1',
      );
      return fpContext.worker.ucumService.getCanonicalForm(p);
    } catch (e) {
      return null;
    }
  }

  Future<bool> isKnownType(String? tn) async {
    if (tn == null) {
      return false;
    } else if (!tn.contains('.')) {
      if ([
            'SimpleTypeInfo',
            'ClassInfo',
          ].contains(tn) ||
          tn.isFhirPrimitive ||
          tn.isBackboneElement ||
          tn.isFhirBackboneType ||
          tn.isFhirDataType ||
          tn.isFhirQuantity ||
          tn.isFhirResourceType) {
        return true;
      }
      try {
        return ((await fpContext.fetchTypeDefinition(tn)) != null);
      } catch (e) {
        return false;
      }
    }
    final t = tn.split('.');
    if (t.length != 2) {
      return false;
    }
    if ('System' == t[0]) {
      return [
        'String',
        'Boolean',
        'Integer',
        'Decimal',
        'Quantity',
        'DateTime',
        'Time',
        'SimpleTypeInfo',
        'ClassInfo',
      ].contains(t[1]);
    } else if ('FHIR' == t[0]) {
      if (tn.startsWith('FHIR.')) {
        final newTn = tn.substring(5);
        if ([
              'SimpleTypeInfo',
              'ClassInfo',
            ].contains(newTn) ||
            newTn.isFhirPrimitive ||
            newTn.isBackboneElement ||
            newTn.isFhirBackboneType ||
            newTn.isFhirDataType ||
            newTn.isFhirQuantity ||
            newTn.isFhirResourceType) {
          return true;
        }
      }

      try {
        return ((await fpContext.fetchTypeDefinition(t[1])) != null);
      } catch (e) {
        return false;
      }
    } else {
      return false;
    }
  }

  bool compareTypeNames(String left, String right) {
    if (fpContext.doNotEnforceAsCaseSensitive) {
      return left.equalsIgnoreCase(right);
    } else {
      return left == right;
    }
  }

  bool? doEquivalent(FhirBase left, FhirBase right) {
    if (left is Quantity && right is Quantity) {
      return qtyEquivalent(left, right);
    }
    if (left is Quantity && right is FhirNumber) {
      return qtyEquivalent(
        left,
        Quantity(
          value: FhirDecimal(right.valueNum),
          system: 'http://unitsofmeasure.org'.toFhirUri,
          code: '1'.toFhirCode,
        ),
      );
    }
    if (left is FhirBoolean && right is FhirBoolean) {
      return doEquals(left, right);
    }
    if (left is FhirNumber && right is FhirNumber) {
      return equivalentNumber(left.valueNum, right.valueNum);
    }
    if (left is FhirDateTimeBase && right is FhirDateTimeBase) {
      return left.isEquivalent(right);
    }
    if (fpContext.FHIR_TYPES_STRING.contains(left.fhirType) &&
        fpContext.FHIR_TYPES_STRING.contains(right.fhirType)) {
      return equivalentString(
        convertToString(left),
        convertToString(right),
      );
    }
    if (left is PrimitiveType && right is PrimitiveType) {
      return equivalentString(
        left.toString(),
        right.toString(),
      );
    }
    if (!left.isPrimitive && !right.isPrimitive) {
      return left.equalsDeepWithNull(left, right);
    } else {
      return false;
    }
  }

  bool equivalentString(String l, String r) {
    if (Utilities.noString(l) && Utilities.noString(r)) return true;
    if (Utilities.noString(l) || Utilities.noString(r)) return false;
    return l.toLowerCase() == r.toLowerCase();
  }

  bool equivalentNumber(num? lhsNum, num? rhsNum) {
    if (lhsNum == null && rhsNum == null) {
      return true;
    } else if (lhsNum == null || rhsNum == null) {
      return false;
    }
    final sigDigsLhs = lhsNum
        .toStringAsExponential()
        .split('e')
        .first
        .replaceAll('.', '')
        .length;
    final sigDigsRhs = rhsNum
        .toStringAsExponential()
        .split('e')
        .first
        .replaceAll('.', '')
        .length;
    if (sigDigsLhs < sigDigsRhs) {
      return lhsNum.toStringAsPrecision(sigDigsLhs) ==
          rhsNum.toStringAsPrecision(sigDigsLhs);
    } else {
      return lhsNum.toStringAsPrecision(sigDigsRhs) ==
          rhsNum.toStringAsPrecision(sigDigsRhs);
    }
  }

  bool? qtyEquivalent(Quantity left, Quantity right) {
    if (left.value == null && right.value == null) {
      return true;
    }
    if (left.value == null || right.value == null) {
      return null;
    }
    final dl = qtyToCanonicalPair(left);
    final dr = qtyToCanonicalPair(right);

    if (dl != null && dr != null) {
      if (dl.unit == dr.unit) {
        return doEquivalent(
          FhirDecimal(dl.value.asDouble),
          FhirDecimal(dr.value.asDouble),
        );
      } else {
        return false;
      }
    }
    if (left.code != null || right.code != null) {
      if (!(left.code != null && right.code != null) ||
          left.code != right.code) {
        return null;
      }
    } else if (left.unit == null || right.unit == null) {
      if (!(left.unit != null && right.unit != null) ||
          left.unit != right.unit) {
        return null;
      }
    }
    return doEquivalent(left.value!, right.value!);
  }

  bool doContains(List<FhirBase> list, FhirBase item) {
    for (final test in list) {
      final eq = doEquals(test, item);
      if (eq != null && eq) {
        return true;
      }
    }
    return false;
  }

  FhirDecimal? qtyToCanonicalDecimal(Quantity q) {
    if (q.system?.toString() != 'http://unitsofmeasure.org') {
      return null;
    }
    try {
      final pair = Pair(
        value: UcumDecimal.fromNum(q.value!.valueDouble!),
        unit: q.code?.toString() ?? '1',
      );
      final canonicalPair = fpContext.worker.ucumService.getCanonicalForm(pair);
      return FhirDecimal(canonicalPair.value.asDouble);
    } catch (e) {
      return null;
    }
  }

  List<FhirBase> makeNull() => <FhirBase>[];

  FhirDateTimeBase dateAdd(
    FhirDateTimeBase d,
    Quantity q,
    bool negate,
    ExpressionNode holder,
  ) {
    var result = d.copyWith() as FhirDateTimeBase;

    final value =
        negate ? -q.value!.valueNum!.toInt() : q.value!.valueNum!.toInt();
    final unit = q.code?.valueString ?? q.unit?.valueString;

    switch (unit) {
      case 'years':
      case 'year':
        result = (result + ExtendedDuration(years: value))!;
      case 'a':
        throw PathEngineException(
          'Error in date arithmetic: attempt to add a definite quantity '
          'duration time unit $unit',
        );
      case 'months':
      case 'month':
        result = (result + ExtendedDuration(months: value))!;
      case 'mo':
        throw PathEngineException(
          'Error in date arithmetic: attempt to add a definite quantity '
          'duration time unit $unit',
          location: holder.opStart,
          expression: holder.toString(),
        );
      case 'weeks':
      case 'week':
      case 'wk':
        result = (result + ExtendedDuration(weeks: value))!;
      case 'days':
      case 'day':
      case 'd':
        result = (result + ExtendedDuration(days: value))!;
      case 'hours':
      case 'hour':
      case 'h':
        result = (result + ExtendedDuration(hours: value))!;
      case 'minutes':
      case 'minute':
      case 'min':
        result = (result + ExtendedDuration(minutes: value))!;
      case 'seconds':
      case 'second':
      case 's':
        result = (result + ExtendedDuration(seconds: value))!;
      case 'milliseconds':
      case 'millisecond':
      case 'ms':
        result = (result + ExtendedDuration(milliseconds: value))!;
      default:
        throw PathEngineException(
          'Error in date arithmetic: unrecognized time unit $unit',
        );
    }

    return result;
  }

  Pair? qtyToPair(Quantity q) {
    if (q.system?.toString() != 'http://unitsofmeasure.org') {
      return null;
    }
    try {
      return Pair(
        value: UcumDecimal.fromNum(q.value!.valueDouble!),
        unit: q.code?.toString() ?? '1',
      );
    } catch (e) {
      return null;
    }
  }

  Quantity pairToQty(Pair pair) {
    return Quantity(
      value: FhirDecimal(pair.value.asDouble),
      system: FhirUri('http://unitsofmeasure.org'),
      code: pair.unit.isEmpty ? null : pair.unit.toFhirCode,
      disallowExtensions: true,
    );
  }
}
