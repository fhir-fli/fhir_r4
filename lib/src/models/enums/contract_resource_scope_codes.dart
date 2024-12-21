// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for security category.
class ContractResourceScopeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContractResourceScopeCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ContractResourceScopeCodes] from JSON.
  factory ContractResourceScopeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceScopeCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContractResourceScopeCodes cannot be constructed from JSON.',
      );
    }
    return ContractResourceScopeCodes._(value, element: element);
  }

  /// policy
  static final ContractResourceScopeCodes policy = ContractResourceScopeCodes._(
    'policy',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceScopeCodes elementOnly =
      ContractResourceScopeCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceScopeCodes> values = [
    policy,
  ];

  /// Clones the current instance
  @override
  ContractResourceScopeCodes clone() => ContractResourceScopeCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContractResourceScopeCodes withElement(Element? newElement) {
    return ContractResourceScopeCodes._(
      value,
      element: newElement,
    );
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
  ContractResourceScopeCodes copyWith({
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
    return ContractResourceScopeCodes._(
      newValue ?? value,
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
