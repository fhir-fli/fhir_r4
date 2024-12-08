// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This is an example value set defined by the FHIR project, that could be used to represent possible connection type profile values.
class EndpointConnectionType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EndpointConnectionType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [EndpointConnectionType] from JSON.
  factory EndpointConnectionType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EndpointConnectionType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EndpointConnectionType cannot be constructed from JSON.',
      );
    }
    return EndpointConnectionType._(value, element: element);
  }

  /// ihe_xcpd
  static final EndpointConnectionType ihe_xcpd = EndpointConnectionType._(
    'ihe-xcpd',
  );

  /// ihe_xca
  static final EndpointConnectionType ihe_xca = EndpointConnectionType._(
    'ihe-xca',
  );

  /// ihe_xdr
  static final EndpointConnectionType ihe_xdr = EndpointConnectionType._(
    'ihe-xdr',
  );

  /// ihe_xds
  static final EndpointConnectionType ihe_xds = EndpointConnectionType._(
    'ihe-xds',
  );

  /// ihe_iid
  static final EndpointConnectionType ihe_iid = EndpointConnectionType._(
    'ihe-iid',
  );

  /// dicom_wado_rs
  static final EndpointConnectionType dicom_wado_rs = EndpointConnectionType._(
    'dicom-wado-rs',
  );

  /// dicom_qido_rs
  static final EndpointConnectionType dicom_qido_rs = EndpointConnectionType._(
    'dicom-qido-rs',
  );

  /// dicom_stow_rs
  static final EndpointConnectionType dicom_stow_rs = EndpointConnectionType._(
    'dicom-stow-rs',
  );

  /// dicom_wado_uri
  static final EndpointConnectionType dicom_wado_uri = EndpointConnectionType._(
    'dicom-wado-uri',
  );

  /// hl7_fhir_rest
  static final EndpointConnectionType hl7_fhir_rest = EndpointConnectionType._(
    'hl7-fhir-rest',
  );

  /// hl7_fhir_msg
  static final EndpointConnectionType hl7_fhir_msg = EndpointConnectionType._(
    'hl7-fhir-msg',
  );

  /// hl7v2_mllp
  static final EndpointConnectionType hl7v2_mllp = EndpointConnectionType._(
    'hl7v2-mllp',
  );

  /// secure_email
  static final EndpointConnectionType secure_email = EndpointConnectionType._(
    'secure-email',
  );

  /// direct_project
  static final EndpointConnectionType direct_project = EndpointConnectionType._(
    'direct-project',
  );

  /// For instances where an Element is present but not value

  static final EndpointConnectionType elementOnly =
      EndpointConnectionType._('');

  /// List of all enum-like values
  static final List<EndpointConnectionType> values = [
    ihe_xcpd,
    ihe_xca,
    ihe_xdr,
    ihe_xds,
    ihe_iid,
    dicom_wado_rs,
    dicom_qido_rs,
    dicom_stow_rs,
    dicom_wado_uri,
    hl7_fhir_rest,
    hl7_fhir_msg,
    hl7v2_mllp,
    secure_email,
    direct_project,
  ];

  /// Clones the current instance
  @override
  EndpointConnectionType clone() => EndpointConnectionType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EndpointConnectionType withElement(Element? newElement) {
    return EndpointConnectionType._(value, element: newElement);
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
  EndpointConnectionType copyWith({
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
    return EndpointConnectionType._(
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
