// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
class ContractResourceDefinitionTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContractResourceDefinitionTypeCodes._(super.value, [super.element]);

  /// Factory constructor to create [ContractResourceDefinitionTypeCodes] from JSON.
  factory ContractResourceDefinitionTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceDefinitionTypeCodes.elementOnly
          .withElement(element);
    }
    return ContractResourceDefinitionTypeCodes._(value, element);
  }

  /// temp
  static final ContractResourceDefinitionTypeCodes temp =
      ContractResourceDefinitionTypeCodes._(
    'temp',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceDefinitionTypeCodes elementOnly =
      ContractResourceDefinitionTypeCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceDefinitionTypeCodes> values = [
    temp,
  ];

  /// Clones the current instance
  @override
  ContractResourceDefinitionTypeCodes clone() =>
      ContractResourceDefinitionTypeCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ContractResourceDefinitionTypeCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ContractResourceDefinitionTypeCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ContractResourceDefinitionTypeCodes withElement(Element? newElement) {
    return ContractResourceDefinitionTypeCodes._(value, newElement);
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
  ContractResourceDefinitionTypeCodes copyWith({
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
    return ContractResourceDefinitionTypeCodes._(
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
