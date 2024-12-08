// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the purpose for which you would contact a contact party.
class ContactEntityType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContactEntityType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ContactEntityType] from JSON.
  factory ContactEntityType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactEntityType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContactEntityType cannot be constructed from JSON.',
      );
    }
    return ContactEntityType._(value, element: element);
  }

  /// BILL
  static final ContactEntityType BILL = ContactEntityType._(
    'BILL',
  );

  /// ADMIN
  static final ContactEntityType ADMIN = ContactEntityType._(
    'ADMIN',
  );

  /// HR
  static final ContactEntityType HR = ContactEntityType._(
    'HR',
  );

  /// PAYOR
  static final ContactEntityType PAYOR = ContactEntityType._(
    'PAYOR',
  );

  /// PATINF
  static final ContactEntityType PATINF = ContactEntityType._(
    'PATINF',
  );

  /// PRESS
  static final ContactEntityType PRESS = ContactEntityType._(
    'PRESS',
  );

  /// For instances where an Element is present but not value

  static final ContactEntityType elementOnly = ContactEntityType._('');

  /// List of all enum-like values
  static final List<ContactEntityType> values = [
    BILL,
    ADMIN,
    HR,
    PAYOR,
    PATINF,
    PRESS,
  ];

  /// Clones the current instance
  @override
  ContactEntityType clone() => ContactEntityType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContactEntityType withElement(Element? newElement) {
    return ContactEntityType._(value, element: newElement);
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
  ContactEntityType copyWith({
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
    return ContactEntityType._(
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
