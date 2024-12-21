// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for asset scope.
class ContractResourceAssetScopeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContractResourceAssetScopeCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ContractResourceAssetScopeCodes] from JSON.
  factory ContractResourceAssetScopeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceAssetScopeCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContractResourceAssetScopeCodes cannot be constructed from JSON.',
      );
    }
    return ContractResourceAssetScopeCodes._(value, element: element);
  }

  /// thing
  static final ContractResourceAssetScopeCodes thing =
      ContractResourceAssetScopeCodes._(
    'thing',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceAssetScopeCodes elementOnly =
      ContractResourceAssetScopeCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceAssetScopeCodes> values = [
    thing,
  ];

  /// Clones the current instance
  @override
  ContractResourceAssetScopeCodes clone() => ContractResourceAssetScopeCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContractResourceAssetScopeCodes withElement(Element? newElement) {
    return ContractResourceAssetScopeCodes._(
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
  ContractResourceAssetScopeCodes copyWith({
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
    return ContractResourceAssetScopeCodes._(
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
