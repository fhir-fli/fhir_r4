// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'package:fhir_node/fhir_node.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// Produces the FHIR-typed values the FHIRPath engine yields as results.
///
/// The engine logic never names concrete FHIR value classes (`FhirBoolean`,
/// `FhirString`, …) directly; every literal/result it constructs goes through
/// this factory. At extraction the interface moves to the model-independent
/// engine package and the implementation to the FHIR binding, keeping the
/// engine free of any dependency on a specific FHIR model.
///
/// Results stay FHIR-typed (the value model is behavior-preserving), so each
/// method returns a concrete FHIR value. [disallowExtensions] mirrors the
/// engine's historical `.noExtensions()` usage: FHIRPath results are System
/// values that disallow extensions, but a handful of call sites constructed
/// bare primitives, and that per-site behavior is preserved exactly.
class FhirValueFactory {
  const FhirValueFactory();

  FhirBase boolean(bool? value, {bool disallowExtensions = true}) {
    final v = FhirBoolean(value);
    return disallowExtensions ? v.noExtensions() : v;
  }

  FhirBase string(String? value, {bool disallowExtensions = true}) {
    final v = FhirString(value);
    return disallowExtensions ? v.noExtensions() : v;
  }

  FhirBase integer(num? value, {bool disallowExtensions = true}) {
    final v = FhirInteger(value);
    return disallowExtensions ? v.noExtensions() : v;
  }

  FhirBase decimal(num? value, {bool disallowExtensions = true}) {
    final v = FhirDecimal(value);
    return disallowExtensions ? v.noExtensions() : v;
  }

  /// Builds a `decimal` from its STRING form, preserving the exact
  /// representation (trailing zeros included) — `FhirDecimal` stores the
  /// string verbatim, mirroring the Java reference's
  /// `new DecimalType(String)`. Used where the engine computes an exact
  /// decimal string (the lowBoundary/highBoundary functions).
  FhirBase decimalFromString(String? value, {bool disallowExtensions = true}) {
    final v = FhirDecimal(value);
    return disallowExtensions ? v.noExtensions() : v;
  }

  FhirBase uri(String? value, {bool disallowExtensions = true}) {
    final v = FhirUri(value);
    return disallowExtensions ? v.noExtensions() : v;
  }

  FhirBase code(String? value, {bool disallowExtensions = true}) {
    final v = FhirCode(value);
    return disallowExtensions ? v.noExtensions() : v;
  }

  FhirBase time(String? value, {bool disallowExtensions = true}) {
    final v = FhirTime(value);
    return disallowExtensions ? v.noExtensions() : v;
  }

  /// Builds a date/dateTime/instant result from a canonical FHIRPath date-time
  /// [value] string, of the concrete FHIR type named by [fhirType]. The engine
  /// computes the value string model-independently (via `SystemDateTime`); this
  /// factory maps it back to the matching FHIR primitive, preserving precision.
  FhirBase dateTimeOfType(
    String fhirType,
    String value, {
    bool disallowExtensions = false,
  }) {
    switch (fhirType) {
      case 'date':
        final v = FhirDate.fromString(value);
        return disallowExtensions ? v.noExtensions() : v;
      case 'instant':
        final v = FhirInstant.fromString(value);
        return disallowExtensions ? v.noExtensions() : v;
      case 'dateTime':
      default:
        final v = FhirDateTime.fromString(value);
        return disallowExtensions ? v.noExtensions() : v;
    }
  }

  /// Parses [value] as a `dateTime`, returning null when it is not a valid
  /// FHIRPath date-time. The result is a System value (no extensions) — the
  /// Java reference constructs every date/time literal and conversion result
  /// with `.noExtensions()` (FHIRPathEngine.processDateConstant), which is
  /// what makes `@2015 is Date` true.
  FhirBase? tryDateTime(String? value) =>
      FhirDateTime.tryParse(value)?.noExtensions();

  /// Parses [value] as a `date`, returning null when invalid. Result is a
  /// System value (no extensions), per the Java reference.
  FhirBase? tryDate(String? value) => FhirDate.tryParse(value)?.noExtensions();

  /// Parses [value] as a `time`, returning null when invalid. Result is a
  /// System value (no extensions), per the Java reference.
  FhirBase? tryTime(String? value) => FhirTime.tryParse(value)?.noExtensions();

  /// The `today()` value — a `date` for the calendar day of [instant]. The
  /// engine supplies the instant (`DateTime.now()`); construction is here.
  FhirBase todayFrom(DateTime instant) => FhirDate.fromUnits(
        year: instant.year,
        month: instant.month,
        day: instant.day,
      );

  /// The `now()` value — a `dateTime` for [instant].
  FhirBase nowFrom(DateTime instant) => FhirDateTime.fromDateTime(instant);

  /// The `timeOfDay()` value — a `time` for the time-of-day of [instant].
  FhirBase timeOfDayFrom(DateTime instant) =>
      FhirTime.tryParse(instant.toIso8601String().split('T').last)!;

  /// Builds a `Quantity` result from model-independent scalar parts. The engine
  /// reads quantities via the node contract and produces them here, never
  /// naming `Quantity`/`FhirDecimal`/… directly.
  FhirBase quantity({
    num? value,
    String? unit,
    String? system,
    String? code,
    bool disallowExtensions = false,
  }) {
    return Quantity(
      value: value == null ? null : FhirDecimal(value),
      unit: unit == null ? null : FhirString(unit),
      system: system == null ? null : FhirUri(system),
      code: code == null ? null : FhirCode(code),
      disallowExtensions: disallowExtensions,
    );
  }

  /// Builds the `Quantity` for a parsed quantity LITERAL (`5 'mg'`,
  /// `4 days`): the value keeps its exact source string (Java reference:
  /// `new BigDecimal(primitiveValue())`), calendar words carry only a unit,
  /// and a UCUM code brings the UCUM system.
  FhirBase quantityLiteral({
    String? value,
    String? unit,
    String? ucumCode,
  }) {
    return Quantity(
      value: value == null ? null : FhirDecimal(value),
      unit: unit == null ? null : FhirString(unit),
      system:
          ucumCode == null ? null : FhirUri('http://unitsofmeasure.org'),
      code: ucumCode == null ? null : FhirCode(ucumCode),
    );
  }

  /// Returns `abs(number)` preserving the FHIR numeric subtype exactly
  /// (`decimal`→decimal, `integer`→integer; the already-non-negative
  /// `unsignedInt`/`positiveInt` are returned unchanged). The per-subtype
  /// construction is FHIR-model knowledge, so it lives at the binding seam.
  FhirBase numericAbs(FhirNode number) {
    if (number is FhirDecimal) {
      return FhirDecimal(number.abs()).noExtensions();
    } else if (number is FhirInteger) {
      return FhirInteger(number.abs()).noExtensions();
    } else if (number is FhirUnsignedInt) {
      return number.noExtensions();
    } else {
      return (number as FhirPositiveInt).noExtensions();
    }
  }

  /// Returns a copy of the `Quantity` node [quantity] with its `value` replaced
  /// by [value] (passing null leaves `copyWith`'s value argument null, matching
  /// the engine's historical call), preserving every other field — unit,
  /// system, code, comparator, extensions, id. A model-independent caller can't
  /// rebuild a Quantity without dropping those, so the copy is done here at the
  /// binding seam.
  FhirBase quantityWithValue(FhirNode quantity, num? value) {
    return (quantity as Quantity).copyWith(
      value: value == null ? null : FhirDecimal(value),
    );
  }

  /// [quantityWithValue], but from the value's exact STRING form (trailing
  /// zeros preserved) — used by the boundary functions.
  FhirBase quantityWithValueString(FhirNode quantity, String? value) {
    return (quantity as Quantity).copyWith(
      value: value == null ? null : FhirDecimal(value),
    );
  }

  /// Builds the `type()` reflection value for [instance]. The
  /// System-vs-FHIR namespace decision reads the binding's System-value
  /// marker (`disallowExtensions`), which is deliberately not on the
  /// [FhirNode] contract, so the whole construction lives at the binding
  /// seam.
  FhirBase classTypeInfo(FhirNode instance) {
    return ClassTypeInfo(instance as FhirBase);
  }
}
