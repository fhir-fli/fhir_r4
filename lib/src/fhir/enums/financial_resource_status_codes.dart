// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes Status codes.
class FinancialResourceStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FinancialResourceStatusCodes._(super.value, [super.element]);

  /// Factory constructor to create [FinancialResourceStatusCodes] from JSON.
  factory FinancialResourceStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FinancialResourceStatusCodes.elementOnly.withElement(element);
    }
    return FinancialResourceStatusCodes._(value, element);
  }

  /// active
  static final FinancialResourceStatusCodes active =
      FinancialResourceStatusCodes._(
    'active',
  );

  /// cancelled
  static final FinancialResourceStatusCodes cancelled =
      FinancialResourceStatusCodes._(
    'cancelled',
  );

  /// draft
  static final FinancialResourceStatusCodes draft =
      FinancialResourceStatusCodes._(
    'draft',
  );

  /// entered_in_error
  static final FinancialResourceStatusCodes entered_in_error =
      FinancialResourceStatusCodes._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final FinancialResourceStatusCodes elementOnly =
      FinancialResourceStatusCodes._('');

  /// List of all enum-like values
  static final List<FinancialResourceStatusCodes> values = [
    active,
    cancelled,
    draft,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  FinancialResourceStatusCodes clone() => FinancialResourceStatusCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  FinancialResourceStatusCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return FinancialResourceStatusCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  FinancialResourceStatusCodes withElement(Element? newElement) {
    return FinancialResourceStatusCodes._(value, newElement);
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
  FinancialResourceStatusCodes copyWith({
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
    return FinancialResourceStatusCodes._(
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
