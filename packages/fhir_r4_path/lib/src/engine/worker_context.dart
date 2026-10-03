import 'package:fhir_r4_path/fhir_r4_path.dart';

/// fhir_path's worker context over the fhir_r4 model. Everything it does
/// lives in [FhirWorkerContext]; this class only binds the model.
class WorkerContext extends FhirWorkerContext {
  /// A worker over fhir_r4, with an in-memory resource cache unless one is
  /// given.
  WorkerContext({super.txClient, super.resourceCache})
      : super(binding: const R4ModelBinding());
}
