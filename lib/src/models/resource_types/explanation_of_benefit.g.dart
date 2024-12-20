part of 'explanation_of_benefit.dart';

/// The date when or period to which this information refers.
sealed class TimingXExplanationOfBenefitSupportingInfo extends DataType {}

/// The date when or period to which this information refers.
class DateTimingExplanationOfBenefitSupportingInfo extends FhirDate
    implements TimingXExplanationOfBenefitSupportingInfo {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateTimingExplanationOfBenefitSupportingInfo.fromString(
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
      ) as DateTimingExplanationOfBenefitSupportingInfo;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateTimingExplanationOfBenefitSupportingInfo.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateTimingExplanationOfBenefitSupportingInfo;

  /// Factory constructor for super class
  factory DateTimingExplanationOfBenefitSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateTimingExplanationOfBenefitSupportingInfo;
}

/// The date when or period to which this information refers.
class PeriodTimingExplanationOfBenefitSupportingInfo extends Period
    implements TimingXExplanationOfBenefitSupportingInfo {
  /// Factory constructor for super class
  factory PeriodTimingExplanationOfBenefitSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodTimingExplanationOfBenefitSupportingInfo;
}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
sealed class ValueXExplanationOfBenefitSupportingInfo extends DataType {}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
class BooleanValueExplanationOfBenefitSupportingInfo extends FhirBoolean
    implements ValueXExplanationOfBenefitSupportingInfo {
  /// Constructor for [BooleanValueExplanationOfBenefitSupportingInfo]
  BooleanValueExplanationOfBenefitSupportingInfo(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueExplanationOfBenefitSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json)
          as BooleanValueExplanationOfBenefitSupportingInfo;
}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
class StringValueExplanationOfBenefitSupportingInfo extends FhirString
    implements ValueXExplanationOfBenefitSupportingInfo {
  /// Constructor for [StringValueExplanationOfBenefitSupportingInfo]
  StringValueExplanationOfBenefitSupportingInfo(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueExplanationOfBenefitSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringValueExplanationOfBenefitSupportingInfo;
}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
class QuantityValueExplanationOfBenefitSupportingInfo extends Quantity
    implements ValueXExplanationOfBenefitSupportingInfo {
  /// Factory constructor for super class
  factory QuantityValueExplanationOfBenefitSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json)
          as QuantityValueExplanationOfBenefitSupportingInfo;
}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
class AttachmentValueExplanationOfBenefitSupportingInfo extends Attachment
    implements ValueXExplanationOfBenefitSupportingInfo {
  /// Factory constructor for super class
  factory AttachmentValueExplanationOfBenefitSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json)
          as AttachmentValueExplanationOfBenefitSupportingInfo;
}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
class ReferenceValueExplanationOfBenefitSupportingInfo extends Reference
    implements ValueXExplanationOfBenefitSupportingInfo {
  /// Factory constructor for super class
  factory ReferenceValueExplanationOfBenefitSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceValueExplanationOfBenefitSupportingInfo;
}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
sealed class DiagnosisXExplanationOfBenefitDiagnosis extends DataType {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
class CodeableConceptDiagnosisExplanationOfBenefitDiagnosis
    extends CodeableConcept implements DiagnosisXExplanationOfBenefitDiagnosis {
  /// Factory constructor for super class
  factory CodeableConceptDiagnosisExplanationOfBenefitDiagnosis.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptDiagnosisExplanationOfBenefitDiagnosis;
}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
class ReferenceDiagnosisExplanationOfBenefitDiagnosis extends Reference
    implements DiagnosisXExplanationOfBenefitDiagnosis {
  /// Factory constructor for super class
  factory ReferenceDiagnosisExplanationOfBenefitDiagnosis.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceDiagnosisExplanationOfBenefitDiagnosis;
}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
sealed class ProcedureXExplanationOfBenefitProcedure extends DataType {}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
class CodeableConceptProcedureExplanationOfBenefitProcedure
    extends CodeableConcept implements ProcedureXExplanationOfBenefitProcedure {
  /// Factory constructor for super class
  factory CodeableConceptProcedureExplanationOfBenefitProcedure.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptProcedureExplanationOfBenefitProcedure;
}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
class ReferenceProcedureExplanationOfBenefitProcedure extends Reference
    implements ProcedureXExplanationOfBenefitProcedure {
  /// Factory constructor for super class
  factory ReferenceProcedureExplanationOfBenefitProcedure.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceProcedureExplanationOfBenefitProcedure;
}

/// The physical location of the accident event.
sealed class LocationXExplanationOfBenefitAccident extends DataType {}

/// The physical location of the accident event.
class AddressLocationExplanationOfBenefitAccident extends Address
    implements LocationXExplanationOfBenefitAccident {
  /// Factory constructor for super class
  factory AddressLocationExplanationOfBenefitAccident.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json) as AddressLocationExplanationOfBenefitAccident;
}

/// The physical location of the accident event.
class ReferenceLocationExplanationOfBenefitAccident extends Reference
    implements LocationXExplanationOfBenefitAccident {
  /// Factory constructor for super class
  factory ReferenceLocationExplanationOfBenefitAccident.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceLocationExplanationOfBenefitAccident;
}

/// The date or dates when the service or product was supplied, performed
/// or completed.
sealed class ServicedXExplanationOfBenefitItem extends DataType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
class DateServicedExplanationOfBenefitItem extends FhirDate
    implements ServicedXExplanationOfBenefitItem {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateServicedExplanationOfBenefitItem.fromString(
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
      ) as DateServicedExplanationOfBenefitItem;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateServicedExplanationOfBenefitItem.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateServicedExplanationOfBenefitItem;

  /// Factory constructor for super class
  factory DateServicedExplanationOfBenefitItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateServicedExplanationOfBenefitItem;
}

/// The date or dates when the service or product was supplied, performed
/// or completed.
class PeriodServicedExplanationOfBenefitItem extends Period
    implements ServicedXExplanationOfBenefitItem {
  /// Factory constructor for super class
  factory PeriodServicedExplanationOfBenefitItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodServicedExplanationOfBenefitItem;
}

/// Where the product or service was provided.
sealed class LocationXExplanationOfBenefitItem extends DataType {}

/// Where the product or service was provided.
class CodeableConceptLocationExplanationOfBenefitItem extends CodeableConcept
    implements LocationXExplanationOfBenefitItem {
  /// Factory constructor for super class
  factory CodeableConceptLocationExplanationOfBenefitItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptLocationExplanationOfBenefitItem;
}

/// Where the product or service was provided.
class AddressLocationExplanationOfBenefitItem extends Address
    implements LocationXExplanationOfBenefitItem {
  /// Factory constructor for super class
  factory AddressLocationExplanationOfBenefitItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json) as AddressLocationExplanationOfBenefitItem;
}

/// Where the product or service was provided.
class ReferenceLocationExplanationOfBenefitItem extends Reference
    implements LocationXExplanationOfBenefitItem {
  /// Factory constructor for super class
  factory ReferenceLocationExplanationOfBenefitItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceLocationExplanationOfBenefitItem;
}

/// The date or dates when the service or product was supplied, performed
/// or completed.
sealed class ServicedXExplanationOfBenefitAddItem extends DataType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
class DateServicedExplanationOfBenefitAddItem extends FhirDate
    implements ServicedXExplanationOfBenefitAddItem {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateServicedExplanationOfBenefitAddItem.fromString(
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
      ) as DateServicedExplanationOfBenefitAddItem;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateServicedExplanationOfBenefitAddItem.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateServicedExplanationOfBenefitAddItem;

  /// Factory constructor for super class
  factory DateServicedExplanationOfBenefitAddItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateServicedExplanationOfBenefitAddItem;
}

/// The date or dates when the service or product was supplied, performed
/// or completed.
class PeriodServicedExplanationOfBenefitAddItem extends Period
    implements ServicedXExplanationOfBenefitAddItem {
  /// Factory constructor for super class
  factory PeriodServicedExplanationOfBenefitAddItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodServicedExplanationOfBenefitAddItem;
}

/// Where the product or service was provided.
sealed class LocationXExplanationOfBenefitAddItem extends DataType {}

/// Where the product or service was provided.
class CodeableConceptLocationExplanationOfBenefitAddItem extends CodeableConcept
    implements LocationXExplanationOfBenefitAddItem {
  /// Factory constructor for super class
  factory CodeableConceptLocationExplanationOfBenefitAddItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptLocationExplanationOfBenefitAddItem;
}

/// Where the product or service was provided.
class AddressLocationExplanationOfBenefitAddItem extends Address
    implements LocationXExplanationOfBenefitAddItem {
  /// Factory constructor for super class
  factory AddressLocationExplanationOfBenefitAddItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Address.fromJson(json) as AddressLocationExplanationOfBenefitAddItem;
}

/// Where the product or service was provided.
class ReferenceLocationExplanationOfBenefitAddItem extends Reference
    implements LocationXExplanationOfBenefitAddItem {
  /// Factory constructor for super class
  factory ReferenceLocationExplanationOfBenefitAddItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceLocationExplanationOfBenefitAddItem;
}

/// The quantity of the benefit which is permitted under the coverage.
sealed class AllowedXExplanationOfBenefitFinancial extends DataType {}

/// The quantity of the benefit which is permitted under the coverage.
class UnsignedIntAllowedExplanationOfBenefitFinancial extends FhirUnsignedInt
    implements AllowedXExplanationOfBenefitFinancial {
  /// Constructor for [UnsignedIntAllowedExplanationOfBenefitFinancial]
  UnsignedIntAllowedExplanationOfBenefitFinancial(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntAllowedExplanationOfBenefitFinancial.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json)
          as UnsignedIntAllowedExplanationOfBenefitFinancial;
}

/// The quantity of the benefit which is permitted under the coverage.
class StringAllowedExplanationOfBenefitFinancial extends FhirString
    implements AllowedXExplanationOfBenefitFinancial {
  /// Constructor for [StringAllowedExplanationOfBenefitFinancial]
  StringAllowedExplanationOfBenefitFinancial(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringAllowedExplanationOfBenefitFinancial.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringAllowedExplanationOfBenefitFinancial;
}

/// The quantity of the benefit which is permitted under the coverage.
class MoneyAllowedExplanationOfBenefitFinancial extends Money
    implements AllowedXExplanationOfBenefitFinancial {
  /// Factory constructor for super class
  factory MoneyAllowedExplanationOfBenefitFinancial.fromJson(
    Map<String, dynamic> json,
  ) =>
      Money.fromJson(json) as MoneyAllowedExplanationOfBenefitFinancial;
}

/// The quantity of the benefit which have been consumed to date.
sealed class UsedXExplanationOfBenefitFinancial extends DataType {}

/// The quantity of the benefit which have been consumed to date.
class UnsignedIntUsedExplanationOfBenefitFinancial extends FhirUnsignedInt
    implements UsedXExplanationOfBenefitFinancial {
  /// Constructor for [UnsignedIntUsedExplanationOfBenefitFinancial]
  UnsignedIntUsedExplanationOfBenefitFinancial(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UnsignedIntUsedExplanationOfBenefitFinancial.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUnsignedInt.fromJson(json)
          as UnsignedIntUsedExplanationOfBenefitFinancial;
}

/// The quantity of the benefit which have been consumed to date.
class MoneyUsedExplanationOfBenefitFinancial extends Money
    implements UsedXExplanationOfBenefitFinancial {
  /// Factory constructor for super class
  factory MoneyUsedExplanationOfBenefitFinancial.fromJson(
    Map<String, dynamic> json,
  ) =>
      Money.fromJson(json) as MoneyUsedExplanationOfBenefitFinancial;
}
