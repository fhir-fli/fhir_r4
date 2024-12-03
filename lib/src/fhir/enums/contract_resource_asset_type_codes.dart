// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for asset type.
class ContractResourceAssetTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContractResourceAssetTypeCodes._(super.value, [super.element]);

  /// Factory constructor to create [ContractResourceAssetTypeCodes] from JSON.
  factory ContractResourceAssetTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceAssetTypeCodes.elementOnly.withElement(element);
    }
    return ContractResourceAssetTypeCodes._(value, element);
  }

  /// participation
  static final ContractResourceAssetTypeCodes participation =
      ContractResourceAssetTypeCodes._(
    'participation',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceAssetTypeCodes elementOnly =
      ContractResourceAssetTypeCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceAssetTypeCodes> values = [
    participation,
  ];

  /// Clones the current instance
  @override
  ContractResourceAssetTypeCodes clone() =>
      ContractResourceAssetTypeCodes._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ContractResourceAssetTypeCodes setElement(String name, dynamic elementValue) {
    return ContractResourceAssetTypeCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ContractResourceAssetTypeCodes withElement(Element? newElement) {
    return ContractResourceAssetTypeCodes._(value, newElement);
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
  ContractResourceAssetTypeCodes copyWith({
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
    return ContractResourceAssetTypeCodes._(
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
