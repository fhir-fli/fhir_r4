part of 'claim.dart';

/// The date when or period to which this information refers.
sealed class TimingXClaimSupportingInfo extends DataType {}

/// The date when or period to which this information refers.
class DateTimingClaimSupportingInfo extends FhirDate
    implements TimingXClaimSupportingInfo {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateTimingClaimSupportingInfo.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDate.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateTimingClaimSupportingInfo;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateTimingClaimSupportingInfo.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateTimingClaimSupportingInfo;

  /// Factory constructor for super class
  factory DateTimingClaimSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateTimingClaimSupportingInfo;
}

/// The date when or period to which this information refers.
class PeriodTimingClaimSupportingInfo extends Period
    implements TimingXClaimSupportingInfo {
  /// Factory constructor for super class
  factory PeriodTimingClaimSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodTimingClaimSupportingInfo;
}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
sealed class ValueXClaimSupportingInfo extends DataType {}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
class BooleanValueClaimSupportingInfo extends FhirBoolean
    implements ValueXClaimSupportingInfo {
  /// Constructor for [BooleanValueClaimSupportingInfo]
  BooleanValueClaimSupportingInfo(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueClaimSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueClaimSupportingInfo;
}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
class StringValueClaimSupportingInfo extends FhirString
    implements ValueXClaimSupportingInfo {
  /// Constructor for [StringValueClaimSupportingInfo]
  StringValueClaimSupportingInfo(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueClaimSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueClaimSupportingInfo;
}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
class QuantityValueClaimSupportingInfo extends Quantity
    implements ValueXClaimSupportingInfo {
  /// Factory constructor for super class
  factory QuantityValueClaimSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueClaimSupportingInfo;
}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
class AttachmentValueClaimSupportingInfo extends Attachment
    implements ValueXClaimSupportingInfo {
  /// Factory constructor for super class
  factory AttachmentValueClaimSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json) as AttachmentValueClaimSupportingInfo;
}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
class ReferenceValueClaimSupportingInfo extends Reference
    implements ValueXClaimSupportingInfo {
  /// Factory constructor for super class
  factory ReferenceValueClaimSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceValueClaimSupportingInfo;
}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
sealed class DiagnosisXClaimDiagnosis extends DataType {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
class CodeableConceptDiagnosisClaimDiagnosis extends CodeableConcept
    implements DiagnosisXClaimDiagnosis {
  /// Factory constructor for super class
  factory CodeableConceptDiagnosisClaimDiagnosis.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptDiagnosisClaimDiagnosis;
}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
class ReferenceDiagnosisClaimDiagnosis extends Reference
    implements DiagnosisXClaimDiagnosis {
  /// Factory constructor for super class
  factory ReferenceDiagnosisClaimDiagnosis.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceDiagnosisClaimDiagnosis;
}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
sealed class ProcedureXClaimProcedure extends DataType {}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
class CodeableConceptProcedureClaimProcedure extends CodeableConcept
    implements ProcedureXClaimProcedure {
  /// Factory constructor for super class
  factory CodeableConceptProcedureClaimProcedure.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptProcedureClaimProcedure;
}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
class ReferenceProcedureClaimProcedure extends Reference
    implements ProcedureXClaimProcedure {
  /// Factory constructor for super class
  factory ReferenceProcedureClaimProcedure.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceProcedureClaimProcedure;
}

/// The physical location of the accident event.
sealed class LocationXClaimAccident extends DataType {}

/// The physical location of the accident event.
class AddressLocationClaimAccident extends Address
    implements LocationXClaimAccident {
  /// Factory constructor for super class
  factory AddressLocationClaimAccident.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json) as AddressLocationClaimAccident;
}

/// The physical location of the accident event.
class ReferenceLocationClaimAccident extends Reference
    implements LocationXClaimAccident {
  /// Factory constructor for super class
  factory ReferenceLocationClaimAccident.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceLocationClaimAccident;
}

/// The date or dates when the service or product was supplied, performed
/// or completed.
sealed class ServicedXClaimItem extends DataType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
class DateServicedClaimItem extends FhirDate implements ServicedXClaimItem {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateServicedClaimItem.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDate.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateServicedClaimItem;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateServicedClaimItem.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element) as DateServicedClaimItem;

  /// Factory constructor for super class
  factory DateServicedClaimItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateServicedClaimItem;
}

/// The date or dates when the service or product was supplied, performed
/// or completed.
class PeriodServicedClaimItem extends Period implements ServicedXClaimItem {
  /// Factory constructor for super class
  factory PeriodServicedClaimItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodServicedClaimItem;
}

/// Where the product or service was provided.
sealed class LocationXClaimItem extends DataType {}

/// Where the product or service was provided.
class CodeableConceptLocationClaimItem extends CodeableConcept
    implements LocationXClaimItem {
  /// Factory constructor for super class
  factory CodeableConceptLocationClaimItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptLocationClaimItem;
}

/// Where the product or service was provided.
class AddressLocationClaimItem extends Address implements LocationXClaimItem {
  /// Factory constructor for super class
  factory AddressLocationClaimItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json) as AddressLocationClaimItem;
}

/// Where the product or service was provided.
class ReferenceLocationClaimItem extends Reference
    implements LocationXClaimItem {
  /// Factory constructor for super class
  factory ReferenceLocationClaimItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceLocationClaimItem;
}
