/// Defines the relationship of a class to the context.
///
/// The [RelationshipInfo] type defines relationships between a class and
/// its context, specifying the target context and related key elements.
class RelationshipInfo {
  /// Specifies the target context of the relationship.
  String context;

  /// Specifies the related key elements of the type containing the reference.
  String? relatedKeyElement;

  RelationshipInfo({
    required this.context,
    this.relatedKeyElement,
  });

  factory RelationshipInfo.fromJson(Map<String, dynamic> json) {
    return RelationshipInfo(
      context: json['context'],
      relatedKeyElement: json['relatedKeyElement'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['context'] = context;
    if (relatedKeyElement != null) {
      data['relatedKeyElement'] = relatedKeyElement;
    }
    return data;
  }
}
