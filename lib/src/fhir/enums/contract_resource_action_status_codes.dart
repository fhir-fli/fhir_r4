// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for action status.
class ContractResourceActionStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContractResourceActionStatusCodes._(super.value, [super.element]);

  /// Factory constructor to create [ContractResourceActionStatusCodes] from JSON.
  factory ContractResourceActionStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceActionStatusCodes.elementOnly.withElement(element);
    }
    return ContractResourceActionStatusCodes._(value, element);
  }

  /// complete
  static final ContractResourceActionStatusCodes complete =
      ContractResourceActionStatusCodes._(
    'complete',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceActionStatusCodes elementOnly =
      ContractResourceActionStatusCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceActionStatusCodes> values = [
    complete,
  ];

  /// Clones the current instance
  @override
  ContractResourceActionStatusCodes clone() =>
      ContractResourceActionStatusCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ContractResourceActionStatusCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ContractResourceActionStatusCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ContractResourceActionStatusCodes withElement(Element? newElement) {
    return ContractResourceActionStatusCodes._(value, newElement);
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
  ContractResourceActionStatusCodes copyWith({
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
    return ContractResourceActionStatusCodes._(
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
