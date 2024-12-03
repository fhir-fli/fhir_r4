// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Payee Type codes.
class ClaimPayeeTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ClaimPayeeTypeCodes._(super.value, [super.element]);

  /// Factory constructor to create [ClaimPayeeTypeCodes] from JSON.
  factory ClaimPayeeTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimPayeeTypeCodes.elementOnly.withElement(element);
    }
    return ClaimPayeeTypeCodes._(value, element);
  }

  /// subscriber
  static final ClaimPayeeTypeCodes subscriber = ClaimPayeeTypeCodes._(
    'subscriber',
  );

  /// provider
  static final ClaimPayeeTypeCodes provider = ClaimPayeeTypeCodes._(
    'provider',
  );

  /// other
  static final ClaimPayeeTypeCodes other = ClaimPayeeTypeCodes._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final ClaimPayeeTypeCodes elementOnly = ClaimPayeeTypeCodes._('');

  /// List of all enum-like values
  static final List<ClaimPayeeTypeCodes> values = [
    subscriber,
    provider,
    other,
  ];

  /// Clones the current instance
  @override
  ClaimPayeeTypeCodes clone() => ClaimPayeeTypeCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ClaimPayeeTypeCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ClaimPayeeTypeCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ClaimPayeeTypeCodes withElement(Element? newElement) {
    return ClaimPayeeTypeCodes._(value, newElement);
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
  ClaimPayeeTypeCodes copyWith({
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
    return ClaimPayeeTypeCodes._(
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
