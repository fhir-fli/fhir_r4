// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Overall seriousness of this event for the patient.
@collection
class AdverseEventSeriousness {
  /// Constructor for internal use (like enum)
  AdverseEventSeriousness({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AdverseEventSeriousness values
  /// Non_serious
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventSeriousness Non_serious = AdverseEventSeriousness(
    fhirCode: 'Non-serious',
  );

  /// Serious
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventSeriousness Serious = AdverseEventSeriousness(
    fhirCode: 'Serious',
  );

  /// SeriousResultsInDeath
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventSeriousness SeriousResultsInDeath =
      AdverseEventSeriousness(
    fhirCode: 'SeriousResultsInDeath',
  );

  /// SeriousIsLifeThreatening
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventSeriousness SeriousIsLifeThreatening =
      AdverseEventSeriousness(
    fhirCode: 'SeriousIsLifeThreatening',
  );

  /// SeriousResultsInHospitalization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventSeriousness SeriousResultsInHospitalization =
      AdverseEventSeriousness(
    fhirCode: 'SeriousResultsInHospitalization',
  );

  /// SeriousResultsInDisability
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventSeriousness SeriousResultsInDisability =
      AdverseEventSeriousness(
    fhirCode: 'SeriousResultsInDisability',
  );

  /// SeriousIsBirthDefect
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventSeriousness SeriousIsBirthDefect =
      AdverseEventSeriousness(
    fhirCode: 'SeriousIsBirthDefect',
  );

  /// SeriousRequiresPreventImpairment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdverseEventSeriousness SeriousRequiresPreventImpairment =
      AdverseEventSeriousness(
    fhirCode: 'SeriousRequiresPreventImpairment',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventSeriousness elementOnly = AdverseEventSeriousness();

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
    return AdverseEventSeriousness(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AdverseEventSeriousness] from JSON.
  static AdverseEventSeriousness fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventSeriousness.elementOnly.withElement(element);
    }
    return AdverseEventSeriousness.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdverseEventSeriousness.$fhirCode';
}
