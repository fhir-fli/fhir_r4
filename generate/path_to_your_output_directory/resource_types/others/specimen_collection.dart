import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Specimen_Collection] A sample to be used for analysis.

@freezed
class Specimen_Collection with _$Specimen_Collection {
  const Specimen_Collection._();

  const factory Specimen_Collection({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [collector] Person who collected the specimen.

    @JsonKey(name: 'collector') Reference? collector,
/// [collectedDateTime] Time when specimen was collected from subject - the
/// physiologically relevant time.

    @JsonKey(name: 'collectedDateTime') FhirDateTime? collectedDateTime,
/// [_collectedDateTime] Extensions for collectedDateTime

    @JsonKey(name: '_collectedDateTime') PrimitiveElement? collectedDateTimeElement,
/// [collectedPeriod] Time when specimen was collected from subject - the
/// physiologically relevant time.

    @JsonKey(name: 'collectedPeriod') Period? collectedPeriod,
/// [duration] The span of time over which the collection of a specimen
/// occurred.

    @JsonKey(name: 'duration') FhirDuration? duration,
/// [quantity] The quantity of specimen collected; for instance the volume
/// of a blood sample, or the physical measurement of an anatomic pathology
/// sample.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// [method] A coded value specifying the technique that is used to perform
/// the procedure.

    @JsonKey(name: 'method') CodeableConcept? method,
/// [device] A coded value specifying the device that is used to perform
/// the procedure.

    @JsonKey(name: 'device') CodeableReference? device,
/// [procedure] The procedure event during which the specimen was collected
/// (e.g. the surgery leading to the collection of a pathology sample).

    @JsonKey(name: 'procedure') Reference? procedure,
/// [bodySite] Anatomical location from which the specimen was collected
/// (if subject is a patient). This is the target site.  This element is not
/// used for environmental specimens.

    @JsonKey(name: 'bodySite') CodeableReference? bodySite,
/// [fastingStatusCodeableConcept] Abstinence or reduction from some or all
/// food, drink, or both, for a period of time prior to sample collection.

    @JsonKey(name: 'fastingStatusCodeableConcept') CodeableConcept? fastingStatusCodeableConcept,
/// [fastingStatusDuration] Abstinence or reduction from some or all food,
/// drink, or both, for a period of time prior to sample collection.

    @JsonKey(name: 'fastingStatusDuration') FhirDuration? fastingStatusDuration,
  }) = _$Specimen_Collection;

  @override
  String get fhirType => 'Specimen_Collection';

  factory Specimen_Collection.fromJson(Map<String, dynamic> json) =>
      _$Specimen_CollectionFromJson(json);

  factory Specimen_Collection.fromYaml(dynamic yaml) => yaml is String
      ? Specimen_Collection.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Specimen_Collection.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Specimen_Collection cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Specimen_Collection.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Specimen_CollectionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
