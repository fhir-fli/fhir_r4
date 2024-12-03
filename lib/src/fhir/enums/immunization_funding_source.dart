// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the source of the vaccine administered. This value set is provided as a suggestive example.
class ImmunizationFundingSource extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationFundingSource._(super.value, [super.element]);

  /// Factory constructor to create [ImmunizationFundingSource] from JSON.
  factory ImmunizationFundingSource.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationFundingSource.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'ImmunizationFundingSource cannot be constructed from JSON.');
    }
    return ImmunizationFundingSource._(value, element);
  }

  /// private
  static final ImmunizationFundingSource private = ImmunizationFundingSource._(
    'private',
  );

  /// public
  static final ImmunizationFundingSource public = ImmunizationFundingSource._(
    'public',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationFundingSource elementOnly =
      ImmunizationFundingSource._('');

  /// List of all enum-like values
  static final List<ImmunizationFundingSource> values = [
    private,
    public,
  ];

  /// Clones the current instance
  @override
  ImmunizationFundingSource clone() => ImmunizationFundingSource._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ImmunizationFundingSource setElement(
    String name,
    dynamic elementValue,
  ) {
    return ImmunizationFundingSource._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ImmunizationFundingSource withElement(Element? newElement) {
    return ImmunizationFundingSource._(value, newElement);
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
  ImmunizationFundingSource copyWith({
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
    return ImmunizationFundingSource._(
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
