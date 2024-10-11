import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class BiologicallyDerivedProduct extends Resource {
  BiologicallyDerivedProduct({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.productCategory,
    this.productCode,
    this.status,
    this.request,
    this.quantity,
    this.parent,
    this.collection,
    this.processing,
    this.manipulation,
    this.storage,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? productCategory;
  ToOne<CodeableConcept>? productCode = ToOne<CodeableConcept>();
  String? status;
  ToMany<Reference>? request = ToMany<Reference>();
  int? quantity;
  ToMany<Reference>? parent = ToMany<Reference>();
  ToOne<BiologicallyDerivedProductCollection>? collection =
      ToOne<BiologicallyDerivedProductCollection>();
  ToMany<BiologicallyDerivedProductProcessing>? processing =
      ToMany<BiologicallyDerivedProductProcessing>();
  ToOne<BiologicallyDerivedProductManipulation>? manipulation =
      ToOne<BiologicallyDerivedProductManipulation>();
  ToMany<BiologicallyDerivedProductStorage>? storage =
      ToMany<BiologicallyDerivedProductStorage>();
}

@Entity()
class BiologicallyDerivedProductCollection {
  BiologicallyDerivedProductCollection({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.collector,
    this.source,
    this.collectedDateTime,
    this.collectedPeriod,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference>? collector = ToOne<Reference>();
  ToOne<Reference>? source = ToOne<Reference>();
  String? collectedDateTime;
  ToOne<Period>? collectedPeriod = ToOne<Period>();
}

@Entity()
class BiologicallyDerivedProductProcessing {
  BiologicallyDerivedProductProcessing({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.timePeriod,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  ToOne<CodeableConcept>? procedure = ToOne<CodeableConcept>();
  ToOne<Reference>? additive = ToOne<Reference>();
  String? timeDateTime;
  ToOne<Period>? timePeriod = ToOne<Period>();
}

@Entity()
class BiologicallyDerivedProductManipulation {
  BiologicallyDerivedProductManipulation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.timeDateTime,
    this.timePeriod,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  String? timeDateTime;
  ToOne<Period>? timePeriod = ToOne<Period>();
}

@Entity()
class BiologicallyDerivedProductStorage {
  BiologicallyDerivedProductStorage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.temperature,
    this.scale,
    this.duration,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  double? temperature;
  String? scale;
  ToOne<Period>? duration = ToOne<Period>();
}
