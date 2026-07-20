part of '../primitive_types.dart';

// Hand-written compatibility aliases (not generated). Earlier releases
// generated these enum names from HL7's miscased ValueSet tokens
// (`medicationrequest-status`, `messageheader-response-request`); the
// generator now restores canonical type-name casing (fhir_r4 issue #34).
// These aliases keep the old names compiling and will be removed in a
// future release.

/// Deprecated alias for [MedicationRequestStatus].
@Deprecated('Use MedicationRequestStatus instead. '
    'Renamed in 0.7.0 to fix casing (fhir_r4 issue #34).')
typedef MedicationrequestStatus = MedicationRequestStatus;

/// Deprecated alias for [MedicationRequestStatusEnum].
@Deprecated('Use MedicationRequestStatusEnum instead. '
    'Renamed in 0.7.0 to fix casing (fhir_r4 issue #34).')
typedef MedicationrequestStatusEnum = MedicationRequestStatusEnum;

/// Deprecated alias for [MedicationRequestStatusCopyWithImpl].
@Deprecated('Use MedicationRequestStatusCopyWithImpl instead. '
    'Renamed in 0.7.0 to fix casing (fhir_r4 issue #34).')
typedef MedicationrequestStatusCopyWithImpl<T>
    = MedicationRequestStatusCopyWithImpl<T>;

/// Deprecated alias for [MessageHeaderResponseRequest].
@Deprecated('Use MessageHeaderResponseRequest instead. '
    'Renamed in 0.7.0 to fix casing (fhir_r4 issue #34).')
typedef MessageheaderResponseRequest = MessageHeaderResponseRequest;

/// Deprecated alias for [MessageHeaderResponseRequestEnum].
@Deprecated('Use MessageHeaderResponseRequestEnum instead. '
    'Renamed in 0.7.0 to fix casing (fhir_r4 issue #34).')
typedef MessageheaderResponseRequestEnum = MessageHeaderResponseRequestEnum;

/// Deprecated alias for [MessageHeaderResponseRequestCopyWithImpl].
@Deprecated('Use MessageHeaderResponseRequestCopyWithImpl instead. '
    'Renamed in 0.7.0 to fix casing (fhir_r4 issue #34).')
typedef MessageheaderResponseRequestCopyWithImpl<T>
    = MessageHeaderResponseRequestCopyWithImpl<T>;
