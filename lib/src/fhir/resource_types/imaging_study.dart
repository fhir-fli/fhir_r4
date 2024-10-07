import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ImagingStudy extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final List<Coding>? modality;
  final Reference subject;
  final Reference? encounter;
  final FhirDateTime? started;
  final Element? startedElement;
  final List<Reference>? basedOn;
  final Reference? referrer;
  final List<Reference>? interpreter;
  final List<Reference>? endpoint;
  final FhirUnsignedInt? numberOfSeries;
  final Element? numberOfSeriesElement;
  final FhirUnsignedInt? numberOfInstances;
  final Element? numberOfInstancesElement;
  final Reference? procedureReference;
  final List<CodeableConcept>? procedureCode;
  final Reference? location;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<Annotation>? note;
  final FhirString? description;
  final Element? descriptionElement;
  final List<ImagingStudySeries>? series;

  ImagingStudy({
    super.id,
    super.meta,
    super.implicitRules,
super.implicitRulesElement,
    super.language,
super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
this.statusElement,
    this.modality,
    required this.subject,
    this.encounter,
    this.started,
this.startedElement,
    this.basedOn,
    this.referrer,
    this.interpreter,
    this.endpoint,
    this.numberOfSeries,
this.numberOfSeriesElement,
    this.numberOfInstances,
this.numberOfInstancesElement,
    this.procedureReference,
    this.procedureCode,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.description,
this.descriptionElement,
    this.series,
  }) : super(resourceType: R4ResourceType.ImagingStudy);

@override
ImagingStudy clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImagingStudySeries extends BackboneElement {
  final FhirId uid;
  final Element? uidElement;
  final FhirUnsignedInt? number;
  final Element? numberElement;
  final Coding modality;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirUnsignedInt? numberOfInstances;
  final Element? numberOfInstancesElement;
  final List<Reference>? endpoint;
  final Coding? bodySite;
  final Coding? laterality;
  final List<Reference>? specimen;
  final FhirDateTime? started;
  final Element? startedElement;
  final List<ImagingStudyPerformer>? performer;
  final List<ImagingStudyInstance>? instance;

  ImagingStudySeries({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.uid,
this.uidElement,
    this.number,
this.numberElement,
    required this.modality,
    this.description,
this.descriptionElement,
    this.numberOfInstances,
this.numberOfInstancesElement,
    this.endpoint,
    this.bodySite,
    this.laterality,
    this.specimen,
    this.started,
this.startedElement,
    this.performer,
    this.instance,
  });

@override
ImagingStudySeries clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImagingStudyPerformer extends BackboneElement {
  final CodeableConcept? function_;
  final Reference actor;

  ImagingStudyPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
  });

@override
ImagingStudyPerformer clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImagingStudyInstance extends BackboneElement {
  final FhirId uid;
  final Element? uidElement;
  final Coding sopClass;
  final FhirUnsignedInt? number;
  final Element? numberElement;
  final FhirString? title;
  final Element? titleElement;

  ImagingStudyInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.uid,
this.uidElement,
    required this.sopClass,
    this.number,
this.numberElement,
    this.title,
this.titleElement,
  });

@override
ImagingStudyInstance clone() => throw UnimplementedError();
}

