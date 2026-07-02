// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'package:fhir_r4/fhir_r4.dart';

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
}
