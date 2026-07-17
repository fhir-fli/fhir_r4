/// FHIR R4 binding for the model-independent `fhirpath` engine: the R4
/// `WorkerContext` / `FhirValueFactory` implementations, terminology and
/// validation plumbing, and the legacy `walkFhirPath` facade. The engine
/// itself (FHIRPathEngine, ExpressionNode, TypeDetails, ...) is re-exported
/// from `package:fhirpath`.
library;

export 'package:fhir_path/fhir_path.dart';

export 'src/clients.dart';
export 'src/core.dart';
export 'src/engine.dart';
export 'src/exceptions.dart';
export 'src/logging.dart';
export 'src/utils.dart';
export 'src/validation.dart';
export 'src/valuesets.dart';
