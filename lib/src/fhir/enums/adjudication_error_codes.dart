// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of adjudication codes.
class AdjudicationErrorCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AdjudicationErrorCodes._(super.value, [super.element]);

  /// Factory constructor to create [AdjudicationErrorCodes] from JSON.
  factory AdjudicationErrorCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdjudicationErrorCodes.elementOnly.withElement(element);
    }
    return AdjudicationErrorCodes._(value, element);
  }

  /// a001
  static final AdjudicationErrorCodes a001 = AdjudicationErrorCodes._(
    'a001',
  );

  /// a002
  static final AdjudicationErrorCodes a002 = AdjudicationErrorCodes._(
    'a002',
  );

  /// For instances where an Element is present but not value

  static final AdjudicationErrorCodes elementOnly =
      AdjudicationErrorCodes._('');

  /// List of all enum-like values
  static final List<AdjudicationErrorCodes> values = [
    a001,
    a002,
  ];

  /// Clones the current instance
  @override
  AdjudicationErrorCodes clone() =>
      AdjudicationErrorCodes._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  AdjudicationErrorCodes setElement(String name, dynamic elementValue) {
    return AdjudicationErrorCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  AdjudicationErrorCodes withElement(Element? newElement) {
    return AdjudicationErrorCodes._(value, newElement);
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
  AdjudicationErrorCodes copyWith({
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
    return AdjudicationErrorCodes._(
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
