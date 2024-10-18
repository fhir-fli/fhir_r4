import 'package:fhir_r4/fhir_r4.dart';

/// Simple class defining the resourceType & ID of the resource being requested
class WhichResource {
  /// WhichResource Constructor
  WhichResource(this.resourceType, this.id);

  /// The resourceType of the resource being requested
  final R4ResourceType? resourceType;

  /// The ID of the resource being requested
  final FhirId? id;
}
