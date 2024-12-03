// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example value set for investigation type.
class InvestigationType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  InvestigationType._(super.value, [super.element]);

  /// Factory constructor to create [InvestigationType] from JSON.
  factory InvestigationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvestigationType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('InvestigationType cannot be constructed from JSON.');
    }
    return InvestigationType._(value, element);
  }

  /// value271336007
  static final InvestigationType value271336007 = InvestigationType._(
    '271336007',
  );

  /// value160237006
  static final InvestigationType value160237006 = InvestigationType._(
    '160237006',
  );

  /// For instances where an Element is present but not value

  static final InvestigationType elementOnly = InvestigationType._('');

  /// List of all enum-like values
  static final List<InvestigationType> values = [
    value271336007,
    value160237006,
  ];

  /// Clones the current instance
  @override
  InvestigationType clone() => InvestigationType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  InvestigationType setElement(
    String name,
    dynamic elementValue,
  ) {
    return InvestigationType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  InvestigationType withElement(Element? newElement) {
    return InvestigationType._(value, newElement);
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
  InvestigationType copyWith({
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
    return InvestigationType._(
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
