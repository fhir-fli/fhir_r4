// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How an entity was used in an activity.
class ProvenanceEntityRole extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProvenanceEntityRole._(super.value, [super.element]);

  /// Factory constructor to create [ProvenanceEntityRole] from JSON.
  factory ProvenanceEntityRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceEntityRole.elementOnly.withElement(element);
    }
    return ProvenanceEntityRole._(value, element);
  }

  /// derivation
  static final ProvenanceEntityRole derivation = ProvenanceEntityRole._(
    'derivation',
  );

  /// revision
  static final ProvenanceEntityRole revision = ProvenanceEntityRole._(
    'revision',
  );

  /// quotation
  static final ProvenanceEntityRole quotation = ProvenanceEntityRole._(
    'quotation',
  );

  /// source
  static final ProvenanceEntityRole source = ProvenanceEntityRole._(
    'source',
  );

  /// removal
  static final ProvenanceEntityRole removal = ProvenanceEntityRole._(
    'removal',
  );

  /// For instances where an Element is present but not value

  static final ProvenanceEntityRole elementOnly = ProvenanceEntityRole._('');

  /// List of all enum-like values
  static final List<ProvenanceEntityRole> values = [
    derivation,
    revision,
    quotation,
    source,
    removal,
  ];

  /// Clones the current instance
  @override
  ProvenanceEntityRole clone() =>
      ProvenanceEntityRole._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ProvenanceEntityRole setElement(String name, dynamic elementValue) {
    return ProvenanceEntityRole._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ProvenanceEntityRole withElement(Element? newElement) {
    return ProvenanceEntityRole._(value, newElement);
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
  ProvenanceEntityRole copyWith({
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
    return ProvenanceEntityRole._(
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
