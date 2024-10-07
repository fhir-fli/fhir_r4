import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  final FhirInteger? sequence;
  final Element? sequenceElement;
  final FhirString? text;
  final Element? textElement;
  final List<CodeableConcept>? additionalInstruction;
  final FhirString? patientInstruction;
  final Element? patientInstructionElement;
  final Timing? timing;
  final FhirBoolean? asNeededBoolean;
  final Element? asNeededBooleanElement;
  final CodeableConcept? asNeededCodeableConcept;
  final CodeableConcept? site;
  final CodeableConcept? route;
  final CodeableConcept? method;
  final List<Element>? doseAndRate;
  final Ratio? maxDosePerPeriod;
  final Quantity? maxDosePerAdministration;
  final Quantity? maxDosePerLifetime;
  @override
  Dosage clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? type;
  final Range? doseRange;
  final Quantity? doseQuantity;
  final Ratio? rateRatio;
  final Range? rateRange;
  final Quantity? rateQuantity;
  @override
  DosageDoseAndRate clone() => throw UnimplementedError();
}
