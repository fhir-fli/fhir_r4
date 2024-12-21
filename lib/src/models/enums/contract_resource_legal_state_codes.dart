// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
class ContractResourceLegalStateCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContractResourceLegalStateCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ContractResourceLegalStateCodes] from JSON.
  factory ContractResourceLegalStateCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceLegalStateCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContractResourceLegalStateCodes cannot be constructed from JSON.',
      );
    }
    return ContractResourceLegalStateCodes._(value, element: element);
  }

  /// amended
  static final ContractResourceLegalStateCodes amended =
      ContractResourceLegalStateCodes._(
    'amended',
  );

  /// appended
  static final ContractResourceLegalStateCodes appended =
      ContractResourceLegalStateCodes._(
    'appended',
  );

  /// cancelled
  static final ContractResourceLegalStateCodes cancelled =
      ContractResourceLegalStateCodes._(
    'cancelled',
  );

  /// disputed
  static final ContractResourceLegalStateCodes disputed =
      ContractResourceLegalStateCodes._(
    'disputed',
  );

  /// entered_in_error
  static final ContractResourceLegalStateCodes entered_in_error =
      ContractResourceLegalStateCodes._(
    'entered-in-error',
  );

  /// executable
  static final ContractResourceLegalStateCodes executable =
      ContractResourceLegalStateCodes._(
    'executable',
  );

  /// executed
  static final ContractResourceLegalStateCodes executed =
      ContractResourceLegalStateCodes._(
    'executed',
  );

  /// negotiable
  static final ContractResourceLegalStateCodes negotiable =
      ContractResourceLegalStateCodes._(
    'negotiable',
  );

  /// offered
  static final ContractResourceLegalStateCodes offered =
      ContractResourceLegalStateCodes._(
    'offered',
  );

  /// policy
  static final ContractResourceLegalStateCodes policy =
      ContractResourceLegalStateCodes._(
    'policy',
  );

  /// rejected
  static final ContractResourceLegalStateCodes rejected =
      ContractResourceLegalStateCodes._(
    'rejected',
  );

  /// renewed
  static final ContractResourceLegalStateCodes renewed =
      ContractResourceLegalStateCodes._(
    'renewed',
  );

  /// revoked
  static final ContractResourceLegalStateCodes revoked =
      ContractResourceLegalStateCodes._(
    'revoked',
  );

  /// resolved
  static final ContractResourceLegalStateCodes resolved =
      ContractResourceLegalStateCodes._(
    'resolved',
  );

  /// terminated
  static final ContractResourceLegalStateCodes terminated =
      ContractResourceLegalStateCodes._(
    'terminated',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceLegalStateCodes elementOnly =
      ContractResourceLegalStateCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceLegalStateCodes> values = [
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
  ContractResourceLegalStateCodes clone() => ContractResourceLegalStateCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContractResourceLegalStateCodes withElement(Element? newElement) {
    return ContractResourceLegalStateCodes._(
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
  ContractResourceLegalStateCodes copyWith({
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
    return ContractResourceLegalStateCodes._(
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
