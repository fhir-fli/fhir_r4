import 'package:fhir_r4/fhir_r4.dart';

/// Simple class defining the resourceType and the ID of the resource being requested
class WhichResource {
  WhichResource(this.resourceType, this.id);

  final R4ResourceType? resourceType;
  final FhirId? id;
}
