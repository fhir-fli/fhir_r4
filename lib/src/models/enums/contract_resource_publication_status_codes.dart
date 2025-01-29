// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
class ContractResourcePublicationStatusCodes extends FhirCode {
  // Private constructor for internal use (like enum)
  ContractResourcePublicationStatusCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [ContractResourcePublicationStatusCodes] from JSON.
  factory ContractResourcePublicationStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourcePublicationStatusCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContractResourcePublicationStatusCodes cannot be constructed from JSON.',
      );
    }
    return ContractResourcePublicationStatusCodes._(
      value,
      element: element,
    );
  }

  /// amended
  static final ContractResourcePublicationStatusCodes amended =
      ContractResourcePublicationStatusCodes._(
    'amended',
  );

  /// appended
  static final ContractResourcePublicationStatusCodes appended =
      ContractResourcePublicationStatusCodes._(
    'appended',
  );

  /// cancelled
  static final ContractResourcePublicationStatusCodes cancelled =
      ContractResourcePublicationStatusCodes._(
    'cancelled',
  );

  /// disputed
  static final ContractResourcePublicationStatusCodes disputed =
      ContractResourcePublicationStatusCodes._(
    'disputed',
  );

  /// entered_in_error
  static final ContractResourcePublicationStatusCodes entered_in_error =
      ContractResourcePublicationStatusCodes._(
    'entered-in-error',
  );

  /// executable
  static final ContractResourcePublicationStatusCodes executable =
      ContractResourcePublicationStatusCodes._(
    'executable',
  );

  /// executed
  static final ContractResourcePublicationStatusCodes executed =
      ContractResourcePublicationStatusCodes._(
    'executed',
  );

  /// negotiable
  static final ContractResourcePublicationStatusCodes negotiable =
      ContractResourcePublicationStatusCodes._(
    'negotiable',
  );

  /// offered
  static final ContractResourcePublicationStatusCodes offered =
      ContractResourcePublicationStatusCodes._(
    'offered',
  );

  /// policy
  static final ContractResourcePublicationStatusCodes policy =
      ContractResourcePublicationStatusCodes._(
    'policy',
  );

  /// rejected
  static final ContractResourcePublicationStatusCodes rejected =
      ContractResourcePublicationStatusCodes._(
    'rejected',
  );

  /// renewed
  static final ContractResourcePublicationStatusCodes renewed =
      ContractResourcePublicationStatusCodes._(
    'renewed',
  );

  /// revoked
  static final ContractResourcePublicationStatusCodes revoked =
      ContractResourcePublicationStatusCodes._(
    'revoked',
  );

  /// resolved
  static final ContractResourcePublicationStatusCodes resolved =
      ContractResourcePublicationStatusCodes._(
    'resolved',
  );

  /// terminated
  static final ContractResourcePublicationStatusCodes terminated =
      ContractResourcePublicationStatusCodes._(
    'terminated',
  );

  /// For instances where an Element is present but not value

  static final ContractResourcePublicationStatusCodes elementOnly =
      ContractResourcePublicationStatusCodes._('');

  /// List of all enum-like values
  static final List<ContractResourcePublicationStatusCodes> values = [
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
  ContractResourcePublicationStatusCodes clone() =>
      ContractResourcePublicationStatusCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContractResourcePublicationStatusCodes withElement(Element? newElement) {
    return ContractResourcePublicationStatusCodes._(
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
  ContractResourcePublicationStatusCodes copyWith({
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
    return ContractResourcePublicationStatusCodes._(
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
