// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes Claim Type codes.
class ClaimTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ClaimTypeCodes._(super.value, [super.element]);

  /// Factory constructor to create [ClaimTypeCodes] from JSON.
  factory ClaimTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimTypeCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClaimTypeCodes cannot be constructed from JSON.',
      );
    }
    return ClaimTypeCodes._(value, element);
  }

  /// institutional
  static final ClaimTypeCodes institutional = ClaimTypeCodes._(
    'institutional',
  );

  /// oral
  static final ClaimTypeCodes oral = ClaimTypeCodes._(
    'oral',
  );

  /// pharmacy
  static final ClaimTypeCodes pharmacy = ClaimTypeCodes._(
    'pharmacy',
  );

  /// professional
  static final ClaimTypeCodes professional = ClaimTypeCodes._(
    'professional',
  );

  /// vision
  static final ClaimTypeCodes vision = ClaimTypeCodes._(
    'vision',
  );

  /// For instances where an Element is present but not value

  static final ClaimTypeCodes elementOnly = ClaimTypeCodes._('');

  /// List of all enum-like values
  static final List<ClaimTypeCodes> values = [
    institutional,
    oral,
    pharmacy,
    professional,
    vision,
  ];

  /// Clones the current instance
  @override
  ClaimTypeCodes clone() => ClaimTypeCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ClaimTypeCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ClaimTypeCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ClaimTypeCodes withElement(Element? newElement) {
    return ClaimTypeCodes._(value, newElement);
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
  ClaimTypeCodes copyWith({
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
    return ClaimTypeCodes._(
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
