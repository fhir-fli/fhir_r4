// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall seriousness of this event for the patient.
class AdverseEventSeriousness extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AdverseEventSeriousness._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [AdverseEventSeriousness] from JSON.
  factory AdverseEventSeriousness.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventSeriousness.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdverseEventSeriousness cannot be constructed from JSON.',
      );
    }
    return AdverseEventSeriousness._(value: value, element: element);
  }

  /// Non_serious
  static final AdverseEventSeriousness Non_serious = AdverseEventSeriousness._(
    value: 'Non-serious',
  );

  /// Serious
  static final AdverseEventSeriousness Serious = AdverseEventSeriousness._(
    value: 'Serious',
  );

  /// SeriousResultsInDeath
  static final AdverseEventSeriousness SeriousResultsInDeath =
      AdverseEventSeriousness._(
    value: 'SeriousResultsInDeath',
  );

  /// SeriousIsLifeThreatening
  static final AdverseEventSeriousness SeriousIsLifeThreatening =
      AdverseEventSeriousness._(
    value: 'SeriousIsLifeThreatening',
  );

  /// SeriousResultsInHospitalization
  static final AdverseEventSeriousness SeriousResultsInHospitalization =
      AdverseEventSeriousness._(
    value: 'SeriousResultsInHospitalization',
  );

  /// SeriousResultsInDisability
  static final AdverseEventSeriousness SeriousResultsInDisability =
      AdverseEventSeriousness._(
    value: 'SeriousResultsInDisability',
  );

  /// SeriousIsBirthDefect
  static final AdverseEventSeriousness SeriousIsBirthDefect =
      AdverseEventSeriousness._(
    value: 'SeriousIsBirthDefect',
  );

  /// SeriousRequiresPreventImpairment
  static final AdverseEventSeriousness SeriousRequiresPreventImpairment =
      AdverseEventSeriousness._(
    value: 'SeriousRequiresPreventImpairment',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventSeriousness elementOnly =
      AdverseEventSeriousness._(value: '');

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

  /// Clones the current instance
  @override
  AdverseEventSeriousness clone() => AdverseEventSeriousness._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AdverseEventSeriousness withElement(Element? newElement) {
    return AdverseEventSeriousness._(value: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  AdverseEventSeriousness copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AdverseEventSeriousness._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
