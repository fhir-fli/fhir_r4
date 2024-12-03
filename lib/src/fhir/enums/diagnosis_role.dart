// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to express the role of a diagnosis on the Encounter or EpisodeOfCare record.
class DiagnosisRole extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DiagnosisRole._(super.value, [super.element]);

  /// Factory constructor to create [DiagnosisRole] from JSON.
  factory DiagnosisRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiagnosisRole.elementOnly.withElement(element);
    }
    return DiagnosisRole._(value, element);
  }

  /// AD
  static final DiagnosisRole AD = DiagnosisRole._(
    'AD',
  );

  /// DD
  static final DiagnosisRole DD = DiagnosisRole._(
    'DD',
  );

  /// CC
  static final DiagnosisRole CC = DiagnosisRole._(
    'CC',
  );

  /// CM
  static final DiagnosisRole CM = DiagnosisRole._(
    'CM',
  );

  /// pre_op
  static final DiagnosisRole pre_op = DiagnosisRole._(
    'pre-op',
  );

  /// post_op
  static final DiagnosisRole post_op = DiagnosisRole._(
    'post-op',
  );

  /// billing
  static final DiagnosisRole billing = DiagnosisRole._(
    'billing',
  );

  /// For instances where an Element is present but not value

  static final DiagnosisRole elementOnly = DiagnosisRole._('');

  /// List of all enum-like values
  static final List<DiagnosisRole> values = [
    AD,
    DD,
    CC,
    CM,
    pre_op,
    post_op,
    billing,
  ];

  /// Clones the current instance
  @override
  DiagnosisRole clone() => DiagnosisRole._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  DiagnosisRole setElement(String name, dynamic elementValue) {
    return DiagnosisRole._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  DiagnosisRole withElement(Element? newElement) {
    return DiagnosisRole._(value, newElement);
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
  DiagnosisRole copyWith({
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
    return DiagnosisRole._(
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
