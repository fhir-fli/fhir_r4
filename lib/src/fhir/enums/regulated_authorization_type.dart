// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall type of this authorization.
class RegulatedAuthorizationType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  RegulatedAuthorizationType._(super.value, [super.element]);

  /// Factory constructor to create [RegulatedAuthorizationType] from JSON.
  factory RegulatedAuthorizationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'RegulatedAuthorizationType cannot be constructed from JSON.');
    }
    return RegulatedAuthorizationType._(value, element);
  }

  /// MarketingAuth
  static final RegulatedAuthorizationType MarketingAuth =
      RegulatedAuthorizationType._(
    'MarketingAuth',
  );

  /// Orphan
  static final RegulatedAuthorizationType Orphan = RegulatedAuthorizationType._(
    'Orphan',
  );

  /// Pediatric
  static final RegulatedAuthorizationType Pediatric =
      RegulatedAuthorizationType._(
    'Pediatric',
  );

  /// For instances where an Element is present but not value

  static final RegulatedAuthorizationType elementOnly =
      RegulatedAuthorizationType._('');

  /// List of all enum-like values
  static final List<RegulatedAuthorizationType> values = [
    MarketingAuth,
    Orphan,
    Pediatric,
  ];

  /// Clones the current instance
  @override
  RegulatedAuthorizationType clone() => RegulatedAuthorizationType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  RegulatedAuthorizationType setElement(
    String name,
    dynamic elementValue,
  ) {
    return RegulatedAuthorizationType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  RegulatedAuthorizationType withElement(Element? newElement) {
    return RegulatedAuthorizationType._(value, newElement);
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
  RegulatedAuthorizationType copyWith({
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
    return RegulatedAuthorizationType._(
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
