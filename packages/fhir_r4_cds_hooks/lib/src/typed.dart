import 'package:fhir_cds_hooks/fhir_cds_hooks.dart';
import 'package:fhir_r4/fhir_r4.dart';

/// R4B-typed views of a request's prefetched resources.
extension R4CdsRequestResources on CdsRequest {
  /// [CdsRequest.prefetch] parsed through the R4B model; a null value stays
  /// null (the server declined that prefetch).
  Map<String, Resource?>? get prefetchResources => prefetch?.map(
        (key, value) =>
            MapEntry(key, value == null ? null : Resource.fromJson(value)),
      );
}

/// R4B-typed view of an action's resource.
extension R4CdsActionResource on CdsAction {
  /// [CdsAction.resource] parsed through the R4B model.
  Resource? get typedResource =>
      resource == null ? null : Resource.fromJson(resource!);
}

/// The draft orders as an R4B [Bundle].
extension R4OrderSignContext on OrderSignContext {
  /// [OrderSignContext.draftOrders] parsed through the R4B model.
  Bundle get draftOrdersBundle => Bundle.fromJson(draftOrders);
}

/// The draft orders as an R4B [Bundle].
extension R4OrderSelectContext on OrderSelectContext {
  /// [OrderSelectContext.draftOrders] parsed through the R4B model.
  Bundle get draftOrdersBundle => Bundle.fromJson(draftOrders);
}

/// The fulfillment tasks as an R4B [Bundle].
extension R4OrderDispatchContext on OrderDispatchContext {
  /// [OrderDispatchContext.fulfillmentTasks] parsed through the R4B model.
  Bundle? get fulfillmentTasksBundle =>
      fulfillmentTasks == null ? null : Bundle.fromJson(fulfillmentTasks!);
}

/// The appointments as an R4B [Bundle].
extension R4AppointmentBookContext on AppointmentBookContext {
  /// [AppointmentBookContext.appointments] parsed through the R4B model.
  Bundle get appointmentsBundle => Bundle.fromJson(appointments);
}

/// The medications as an R4B [Bundle].
extension R4MedicationRefillContext on MedicationRefillContext {
  /// [MedicationRefillContext.medications] parsed through the R4B model.
  Bundle get medicationsBundle => Bundle.fromJson(medications);
}

/// The conditions as an R4B [Bundle].
extension R4ProblemListItemCreateContext on ProblemListItemCreateContext {
  /// [ProblemListItemCreateContext.conditions] parsed through the R4B model.
  Bundle get conditionsBundle => Bundle.fromJson(conditions);
}

/// The allergy being created as an R4B [AllergyIntolerance].
extension R4AllergyintoleranceCreateContext on AllergyintoleranceCreateContext {
  /// [AllergyintoleranceCreateContext.allergyIntolerance] parsed through the
  /// R4B model.
  AllergyIntolerance get allergyIntoleranceResource =>
      AllergyIntolerance.fromJson(allergyIntolerance);
}
