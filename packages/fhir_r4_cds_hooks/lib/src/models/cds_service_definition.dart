/// A single CDS service definition returned by the discovery endpoint.
class CdsServiceDefinition {
  /// Creates a [CdsServiceDefinition].
  CdsServiceDefinition({
    required this.hook,
    required this.title,
    required this.description,
    required this.id,
    this.prefetch,
    this.usageRequirements,
  });

  /// Creates a [CdsServiceDefinition] from a JSON map.
  factory CdsServiceDefinition.fromJson(Map<String, dynamic> json) {
    return CdsServiceDefinition(
      hook: json['hook'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      id: json['id'] as String,
      prefetch: (json['prefetch'] as Map<String, dynamic>?)?.map(
        (k, v) => MapEntry(k, v as String),
      ),
      usageRequirements: json['usageRequirements'] as String?,
    );
  }

  /// The hook this service should be invoked on.
  final String hook;

  /// The human-readable name of the service.
  final String title;

  /// The description of the service.
  final String description;

  /// The machine-readable identifier for the service.
  final String id;

  /// A map of prefetch template keys to FHIR query URLs.
  final Map<String, String>? prefetch;

  /// Human-readable description of any preconditions.
  final String? usageRequirements;

  /// Serializes to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'hook': hook,
        'title': title,
        'description': description,
        'id': id,
        if (prefetch != null) 'prefetch': prefetch,
        if (usageRequirements != null) 'usageRequirements': usageRequirements,
      };

  /// Returns a copy with the given fields replaced.
  CdsServiceDefinition copyWith({
    String? hook,
    String? title,
    String? description,
    String? id,
    Map<String, String>? prefetch,
    String? usageRequirements,
  }) {
    return CdsServiceDefinition(
      hook: hook ?? this.hook,
      title: title ?? this.title,
      description: description ?? this.description,
      id: id ?? this.id,
      prefetch: prefetch ?? this.prefetch,
      usageRequirements: usageRequirements ?? this.usageRequirements,
    );
  }
}
