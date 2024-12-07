// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
class ContractResourceStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContractResourceStatusCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ContractResourceStatusCodes] from JSON.
  factory ContractResourceStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContractResourceStatusCodes cannot be constructed from JSON.',
      );
    }
    return ContractResourceStatusCodes._(value: value, element: element);
  }

  /// amended
  static final ContractResourceStatusCodes amended =
      ContractResourceStatusCodes._(
    value: 'amended',
  );

  /// appended
  static final ContractResourceStatusCodes appended =
      ContractResourceStatusCodes._(
    value: 'appended',
  );

  /// cancelled
  static final ContractResourceStatusCodes cancelled =
      ContractResourceStatusCodes._(
    value: 'cancelled',
  );

  /// disputed
  static final ContractResourceStatusCodes disputed =
      ContractResourceStatusCodes._(
    value: 'disputed',
  );

  /// entered_in_error
  static final ContractResourceStatusCodes entered_in_error =
      ContractResourceStatusCodes._(
    value: 'entered-in-error',
  );

  /// executable
  static final ContractResourceStatusCodes executable =
      ContractResourceStatusCodes._(
    value: 'executable',
  );

  /// executed
  static final ContractResourceStatusCodes executed =
      ContractResourceStatusCodes._(
    value: 'executed',
  );

  /// negotiable
  static final ContractResourceStatusCodes negotiable =
      ContractResourceStatusCodes._(
    value: 'negotiable',
  );

  /// offered
  static final ContractResourceStatusCodes offered =
      ContractResourceStatusCodes._(
    value: 'offered',
  );

  /// policy
  static final ContractResourceStatusCodes policy =
      ContractResourceStatusCodes._(
    value: 'policy',
  );

  /// rejected
  static final ContractResourceStatusCodes rejected =
      ContractResourceStatusCodes._(
    value: 'rejected',
  );

  /// renewed
  static final ContractResourceStatusCodes renewed =
      ContractResourceStatusCodes._(
    value: 'renewed',
  );

  /// revoked
  static final ContractResourceStatusCodes revoked =
      ContractResourceStatusCodes._(
    value: 'revoked',
  );

  /// resolved
  static final ContractResourceStatusCodes resolved =
      ContractResourceStatusCodes._(
    value: 'resolved',
  );

  /// terminated
  static final ContractResourceStatusCodes terminated =
      ContractResourceStatusCodes._(
    value: 'terminated',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceStatusCodes elementOnly =
      ContractResourceStatusCodes._(value: '');

  /// List of all enum-like values
  static final List<ContractResourceStatusCodes> values = [
    amended,
    appended,
    cancelled,
    disputed,
    entered_in_error,
    executable,
    executed,
    negotiable,
    offered,
    policy,
    rejected,
    renewed,
    revoked,
    resolved,
    terminated,
  ];

  /// Clones the current instance
  @override
  ContractResourceStatusCodes clone() => ContractResourceStatusCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContractResourceStatusCodes withElement(Element? newElement) {
    return ContractResourceStatusCodes._(value: value, element: newElement);
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
  ContractResourceStatusCodes copyWith({
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
    return ContractResourceStatusCodes._(
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
