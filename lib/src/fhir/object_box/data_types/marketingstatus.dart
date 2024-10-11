import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class MarketingStatus {
  MarketingStatus({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.country,
    this.jurisdiction,
    required this.status,
    this.dateRange,
    this.restoreDate,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? country = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? jurisdiction = ToOne<CodeableConcept>();
  ToOne<CodeableConcept> status = ToOne<CodeableConcept>();
  ToOne<Period>? dateRange = ToOne<Period>();
  String? restoreDate;
}
