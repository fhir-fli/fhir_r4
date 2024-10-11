import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Dosage {
  Dosage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.sequence,
    this.text,
    this.additionalInstruction,
    this.patientInstruction,
    this.timing,
    this.asNeededBoolean,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? sequence;
  String? text;
  ToMany<CodeableConcept>? additionalInstruction = ToMany<CodeableConcept>();
  String? patientInstruction;
  ToOne<Timing>? timing = ToOne<Timing>();
  bool? asNeededBoolean;
  ToOne<CodeableConcept>? asNeededCodeableConcept = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? site = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? route = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? method = ToOne<CodeableConcept>();
  ToMany<DosageDoseAndRate>? doseAndRate = ToMany<DosageDoseAndRate>();
  ToOne<Ratio>? maxDosePerPeriod = ToOne<Ratio>();
  ToOne<Quantity>? maxDosePerAdministration = ToOne<Quantity>();
  ToOne<Quantity>? maxDosePerLifetime = ToOne<Quantity>();
}

@Entity()
class DosageDoseAndRate {
  DosageDoseAndRate({
    this.id,
    this.extension_,
    this.type,
    this.doseRange,
    this.doseQuantity,
    this.rateRatio,
    this.rateRange,
    this.rateQuantity,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Range>? doseRange = ToOne<Range>();
  ToOne<Quantity>? doseQuantity = ToOne<Quantity>();
  ToOne<Ratio>? rateRatio = ToOne<Ratio>();
  ToOne<Range>? rateRange = ToOne<Range>();
  ToOne<Quantity>? rateQuantity = ToOne<Quantity>();
}
