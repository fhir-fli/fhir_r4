// ignore_for_file: avoid_positional_boolean_parameters

import 'package:fhir_node/fhir_node.dart';

/// The engine's contract for constructing the FHIR-typed values it yields
/// as evaluation results. The engine logic never names concrete FHIR value
/// classes (`FhirBoolean`, `FhirString`, …); every literal/result it
/// constructs goes through this factory, whose implementation lives in the
/// FHIR binding (reached via `IWorkerContext.valueFactory`).
///
/// Results stay FHIR-typed (the value model is behavior-preserving).
/// `disallowExtensions` mirrors the engine's historical `.noExtensions()`
/// usage: FHIRPath results are System values that disallow extensions, but
/// a handful of call sites constructed bare primitives, and that per-site
/// behavior is preserved exactly.
abstract class IFhirValueFactory {
  FhirNode boolean(bool? value, {bool disallowExtensions = true});

  FhirNode string(String? value, {bool disallowExtensions = true});

  FhirNode integer(num? value, {bool disallowExtensions = true});

  FhirNode decimal(num? value, {bool disallowExtensions = true});

  /// Builds a `decimal` from its STRING form, preserving the exact
  /// representation (trailing zeros included).
  FhirNode decimalFromString(String? value, {bool disallowExtensions = true});

  FhirNode time(String? value, {bool disallowExtensions = true});

  /// Builds a date/dateTime/instant result from a canonical FHIRPath
  /// date-time [value] string, of the concrete FHIR type named by
  /// [fhirType].
  FhirNode dateTimeOfType(
    String fhirType,
    String value, {
    bool disallowExtensions = false,
  });

  /// Parses [value] as a `dateTime` System value, or null when invalid.
  FhirNode? tryDateTime(String? value);

  /// Parses [value] as a `date` System value, or null when invalid.
  FhirNode? tryDate(String? value);

  /// Parses [value] as a `time` System value, or null when invalid.
  FhirNode? tryTime(String? value);

  /// The `today()` value — a `date` for the calendar day of [instant].
  FhirNode todayFrom(DateTime instant);

  /// The `now()` value — a `dateTime` for [instant].
  FhirNode nowFrom(DateTime instant);

  /// The `timeOfDay()` value — a `time` for the time-of-day of [instant].
  FhirNode timeOfDayFrom(DateTime instant);

  /// Builds a `Quantity` result from model-independent scalar parts.
  FhirNode quantity({
    num? value,
    String? unit,
    String? system,
    String? code,
    bool disallowExtensions = false,
  });

  /// Builds the `Quantity` for a parsed quantity LITERAL (`5 'mg'`,
  /// `4 days`), value string preserved exactly.
  FhirNode quantityLiteral({
    String? value,
    String? unit,
    String? ucumCode,
  });

  /// Returns `abs(number)` preserving the FHIR numeric subtype exactly.
  FhirNode numericAbs(FhirNode number);

  /// Returns a copy of the `Quantity` node [quantity] with its `value`
  /// replaced by [value], preserving every other field.
  FhirNode quantityWithValue(FhirNode quantity, num? value);

  /// [quantityWithValue], but from the value's exact STRING form.
  FhirNode quantityWithValueString(FhirNode quantity, String? value);

  /// Builds the `type()` reflection value for [instance] (the
  /// System-vs-FHIR namespace decision needs the binding's System-value
  /// marker).
  FhirNode classTypeInfo(FhirNode instance);
}
