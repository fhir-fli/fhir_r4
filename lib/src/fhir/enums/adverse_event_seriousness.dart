// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall seriousness of this event for the patient.
class AdverseEventSeriousness {
  // Private constructor for internal use (like enum)
  AdverseEventSeriousness._(this.fhirCode, {this.element});

  /// Factory constructor to create [AdverseEventSeriousness] from JSON.
  factory AdverseEventSeriousness.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventSeriousness.elementOnly.withElement(element);
    }
    return AdverseEventSeriousness._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AdverseEventSeriousness values
  /// Non_serious
  static final AdverseEventSeriousness Non_serious = AdverseEventSeriousness._(
    'Non-serious',
  );

  /// Serious
  static final AdverseEventSeriousness Serious = AdverseEventSeriousness._(
    'Serious',
  );

  /// SeriousResultsInDeath
  static final AdverseEventSeriousness SeriousResultsInDeath =
      AdverseEventSeriousness._(
    'SeriousResultsInDeath',
  );

  /// SeriousIsLifeThreatening
  static final AdverseEventSeriousness SeriousIsLifeThreatening =
      AdverseEventSeriousness._(
    'SeriousIsLifeThreatening',
  );

  /// SeriousResultsInHospitalization
  static final AdverseEventSeriousness SeriousResultsInHospitalization =
      AdverseEventSeriousness._(
    'SeriousResultsInHospitalization',
  );

  /// SeriousResultsInDisability
  static final AdverseEventSeriousness SeriousResultsInDisability =
      AdverseEventSeriousness._(
    'SeriousResultsInDisability',
  );

  /// SeriousIsBirthDefect
  static final AdverseEventSeriousness SeriousIsBirthDefect =
      AdverseEventSeriousness._(
    'SeriousIsBirthDefect',
  );

  /// SeriousRequiresPreventImpairment
  static final AdverseEventSeriousness SeriousRequiresPreventImpairment =
      AdverseEventSeriousness._(
    'SeriousRequiresPreventImpairment',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventSeriousness elementOnly =
      AdverseEventSeriousness._('');

  /// List of all enum-like values
  static final List<AdverseEventSeriousness> values = [
    Non_serious,
    Serious,
    SeriousResultsInDeath,
    SeriousIsLifeThreatening,
    SeriousResultsInHospitalization,
    SeriousResultsInDisability,
    SeriousIsBirthDefect,
    SeriousRequiresPreventImpairment,
  ];

  /// Returns the enum value with an element attached
  AdverseEventSeriousness withElement(Element? newElement) {
    return AdverseEventSeriousness._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
