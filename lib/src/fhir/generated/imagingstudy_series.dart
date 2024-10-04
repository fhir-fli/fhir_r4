import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImagingStudySeries {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirId uid;
  final PrimitiveElement Uid;
  final FhirUnsignedInt number;
  final PrimitiveElement Number;
  final Coding modality;
  final String description;
  final PrimitiveElement Description;
  final FhirUnsignedInt numberOfInstances;
  final PrimitiveElement NumberOfInstances;
  final List<Reference> endpoint;
  final Coding bodySite;
  final Coding laterality;
  final List<Reference> specimen;
  final FhirDateTime started;
  final PrimitiveElement Started;
  final List<ImagingStudyPerformer> performer;
  final List<ImagingStudyInstance> instance;
  const ImagingStudySeries({
    this.id,
    this.extension,
    this.modifierExtension,
    this.uid,
    this.Uid,
    this.number,
    this.Number,
    required this.modality,
    this.description,
    this.Description,
    this.numberOfInstances,
    this.NumberOfInstances,
    this.endpoint,
    this.bodySite,
    this.laterality,
    this.specimen,
    this.started,
    this.Started,
    this.performer,
    this.instance,
  });
}
