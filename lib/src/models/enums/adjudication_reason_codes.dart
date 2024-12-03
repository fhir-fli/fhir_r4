// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes smattering of Adjudication Reason codes.
class AdjudicationReasonCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AdjudicationReasonCodes._(super.value, [super.element]);

  /// Factory constructor to create [AdjudicationReasonCodes] from JSON.
  factory AdjudicationReasonCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdjudicationReasonCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdjudicationReasonCodes cannot be constructed from JSON.',
      );
    }
    return AdjudicationReasonCodes._(value, element);
  }

  /// ar001
  static final AdjudicationReasonCodes ar001 = AdjudicationReasonCodes._(
    'ar001',
  );

  /// ar002
  static final AdjudicationReasonCodes ar002 = AdjudicationReasonCodes._(
    'ar002',
  );

  /// For instances where an Element is present but not value

  static final AdjudicationReasonCodes elementOnly =
      AdjudicationReasonCodes._('');

  /// List of all enum-like values
  static final List<AdjudicationReasonCodes> values = [
    ar001,
    ar002,
  ];

  /// Clones the current instance
  @override
  AdjudicationReasonCodes clone() => AdjudicationReasonCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  AdjudicationReasonCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return AdjudicationReasonCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  AdjudicationReasonCodes withElement(Element? newElement) {
    return AdjudicationReasonCodes._(value, newElement);
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
  AdjudicationReasonCodes copyWith({
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
    return AdjudicationReasonCodes._(
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
