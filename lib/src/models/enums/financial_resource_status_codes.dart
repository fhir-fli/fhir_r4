// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes Status codes.
class FinancialResourceStatusCodes extends FhirCode {
  // Private constructor for internal use (like enum)
  FinancialResourceStatusCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [FinancialResourceStatusCodes] from JSON.
  factory FinancialResourceStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FinancialResourceStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FinancialResourceStatusCodes cannot be constructed from JSON.',
      );
    }
    return FinancialResourceStatusCodes._(
      value,
      element: element,
    );
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
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FinancialResourceStatusCodes withElement(Element? newElement) {
    return FinancialResourceStatusCodes._(
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
  FinancialResourceStatusCodes copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return FinancialResourceStatusCodes._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
