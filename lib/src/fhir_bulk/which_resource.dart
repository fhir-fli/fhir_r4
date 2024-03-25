// Package imports:

import 'package:fhir_primitives/fhir_primitives.dart';

import '../../fhir_r4.dart';

/// Simple class defining the resourceType and the ID of the resource being requested
class WhichResource {
  WhichResource(this.resourceType, this.id);

  final R4ResourceType? resourceType;
  final FhirId? id;
}
