// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall seriousness of this event for the patient.
class AdverseEventSeriousness extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AdverseEventSeriousness._(super.value, [super.element]);

  /// Factory constructor to create [AdverseEventSeriousness] from JSON.
  factory AdverseEventSeriousness.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventSeriousness.elementOnly.withElement(element);
    }
    return AdverseEventSeriousness._(value, element);
  }

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

  /// Clones the current instance
  @override
  AdverseEventSeriousness clone() =>
      AdverseEventSeriousness._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  AdverseEventSeriousness setElement(String name, dynamic elementValue) {
    return AdverseEventSeriousness._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  AdverseEventSeriousness withElement(Element? newElement) {
    return AdverseEventSeriousness._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AdverseEventSeriousness._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
