// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
class ContractResourceExpirationTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContractResourceExpirationTypeCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ContractResourceExpirationTypeCodes] from JSON.
  factory ContractResourceExpirationTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceExpirationTypeCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContractResourceExpirationTypeCodes cannot be constructed from JSON.',
      );
    }
    return ContractResourceExpirationTypeCodes._(
        value: value, element: element);
  }

  /// breach
  static final ContractResourceExpirationTypeCodes breach =
      ContractResourceExpirationTypeCodes._(
    value: 'breach',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceExpirationTypeCodes elementOnly =
      ContractResourceExpirationTypeCodes._(value: '');

  /// List of all enum-like values
  static final List<ContractResourceExpirationTypeCodes> values = [
    breach,
  ];

  /// Clones the current instance
  @override
  ContractResourceExpirationTypeCodes clone() =>
      ContractResourceExpirationTypeCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContractResourceExpirationTypeCodes withElement(Element? newElement) {
    return ContractResourceExpirationTypeCodes._(
        value: value, element: newElement);
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
  ContractResourceExpirationTypeCodes copyWith({
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
    return ContractResourceExpirationTypeCodes._(
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
