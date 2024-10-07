import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Dosage] /// Indicates how the medication is/was taken or should be taken by the
/// patient.
class Dosage extends BackboneType {
  Dosage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.sequenceElement,
    this.text,
    this.textElement,
    this.additionalInstruction,
    this.patientInstruction,
    this.patientInstructionElement,
    this.timing,
    this.asNeededBoolean,
    this.asNeededBooleanElement,
    this.asNeededCodeableConcept,
    this.site,
    this.route,
    this.method,
    this.doseAndRate,
    this.maxDosePerPeriod,
    this.maxDosePerAdministration,
    this.maxDosePerLifetime,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// Indicates the order in which the dosage instructions should be applied or
  /// interpreted.
  final FhirInteger? sequence;
  final Element? sequenceElement;

  /// [text] /// Free text dosage instructions e.g. SIG.
  final FhirString? text;
  final Element? textElement;

  /// [additionalInstruction] /// Supplemental instructions to the patient on how to take the medication
  /// (e.g. "with meals" or"take half to one hour before food") or warnings for
  /// the patient about the medication (e.g. "may cause drowsiness" or "avoid
  /// exposure of skin to direct sunlight or sunlamps").
  final List<CodeableConcept>? additionalInstruction;

  /// [patientInstruction] /// Instructions in terms that are understood by the patient or consumer.
  final FhirString? patientInstruction;
  final Element? patientInstructionElement;

  /// [timing] /// When medication should be administered.
  final Timing? timing;

  /// [asNeededBoolean] /// Indicates whether the Medication is only taken when needed within a
  /// specific dosing schedule (Boolean option), or it indicates the precondition
  /// for taking the Medication (CodeableConcept).
  final FhirBoolean? asNeededBoolean;
  final Element? asNeededBooleanElement;

  /// [asNeededCodeableConcept] /// Indicates whether the Medication is only taken when needed within a
  /// specific dosing schedule (Boolean option), or it indicates the precondition
  /// for taking the Medication (CodeableConcept).
  final CodeableConcept? asNeededCodeableConcept;

  /// [site] /// Body site to administer to.
  final CodeableConcept? site;

  /// [route] /// How drug should enter body.
  final CodeableConcept? route;

  /// [method] /// Technique for administering medication.
  final CodeableConcept? method;

  /// [doseAndRate] /// The amount of medication administered.
  final List<Element>? doseAndRate;

  /// [maxDosePerPeriod] /// Upper limit on medication per unit of time.
  final Ratio? maxDosePerPeriod;

  /// [maxDosePerAdministration] /// Upper limit on medication per administration.
  final Quantity? maxDosePerAdministration;

  /// [maxDosePerLifetime] /// Upper limit on medication per lifetime of the patient.
  final Quantity? maxDosePerLifetime;
  @override
  Dosage clone() => throw UnimplementedError();
  Dosage copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? sequence,
    Element? sequenceElement,
    FhirString? text,
    Element? textElement,
    List<CodeableConcept>? additionalInstruction,
    FhirString? patientInstruction,
    Element? patientInstructionElement,
    Timing? timing,
    FhirBoolean? asNeededBoolean,
    Element? asNeededBooleanElement,
    CodeableConcept? asNeededCodeableConcept,
    CodeableConcept? site,
    CodeableConcept? route,
    CodeableConcept? method,
    List<Element>? doseAndRate,
    Ratio? maxDosePerPeriod,
    Quantity? maxDosePerAdministration,
    Quantity? maxDosePerLifetime,
  }) {
    return Dosage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      additionalInstruction:
          additionalInstruction ?? this.additionalInstruction,
      patientInstruction: patientInstruction ?? this.patientInstruction,
      patientInstructionElement:
          patientInstructionElement ?? this.patientInstructionElement,
      timing: timing ?? this.timing,
      asNeededBoolean: asNeededBoolean ?? this.asNeededBoolean,
      asNeededBooleanElement:
          asNeededBooleanElement ?? this.asNeededBooleanElement,
      asNeededCodeableConcept:
          asNeededCodeableConcept ?? this.asNeededCodeableConcept,
      site: site ?? this.site,
      route: route ?? this.route,
      method: method ?? this.method,
      doseAndRate: doseAndRate ?? this.doseAndRate,
      maxDosePerPeriod: maxDosePerPeriod ?? this.maxDosePerPeriod,
      maxDosePerAdministration:
          maxDosePerAdministration ?? this.maxDosePerAdministration,
      maxDosePerLifetime: maxDosePerLifetime ?? this.maxDosePerLifetime,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DosageDoseAndRate] /// The amount of medication administered.
class DosageDoseAndRate extends Element {
  DosageDoseAndRate({
    super.id,
    super.extension_,
    this.type,
    this.doseRange,
    this.doseQuantity,
    this.rateRatio,
    this.rateRange,
    this.rateQuantity,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The kind of dose or rate specified, for example, ordered or calculated.
  final CodeableConcept? type;

  /// [doseRange] /// Amount of medication per dose.
  final Range? doseRange;

  /// [doseQuantity] /// Amount of medication per dose.
  final Quantity? doseQuantity;

  /// [rateRatio] /// Amount of medication per unit of time.
  final Ratio? rateRatio;

  /// [rateRange] /// Amount of medication per unit of time.
  final Range? rateRange;

  /// [rateQuantity] /// Amount of medication per unit of time.
  final Quantity? rateQuantity;
  @override
  DosageDoseAndRate clone() => throw UnimplementedError();
  DosageDoseAndRate copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    CodeableConcept? type,
    Range? doseRange,
    Quantity? doseQuantity,
    Ratio? rateRatio,
    Range? rateRange,
    Quantity? rateQuantity,
  }) {
    return DosageDoseAndRate(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      doseRange: doseRange ?? this.doseRange,
      doseQuantity: doseQuantity ?? this.doseQuantity,
      rateRatio: rateRatio ?? this.rateRatio,
      rateRange: rateRange ?? this.rateRange,
      rateQuantity: rateQuantity ?? this.rateQuantity,
    );
  }
}
