/// Base class for CDS Hooks context objects.
///
/// Each hook defines its own set of context fields. Subclasses implement
/// [hookName] and [toJson]/[fromJson] with hook-specific fields.
abstract class CdsHookContext {
  /// The name of the hook (e.g., `patient-view`, `order-select`).
  String get hookName;

  /// Serializes the context to a JSON map.
  Map<String, dynamic> toJson();
}
