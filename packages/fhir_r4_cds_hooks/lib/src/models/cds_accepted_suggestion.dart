/// An accepted suggestion in a CDS Hooks feedback message.
class CdsAcceptedSuggestion {
  /// Creates a [CdsAcceptedSuggestion].
  CdsAcceptedSuggestion({required this.id});

  /// Creates a [CdsAcceptedSuggestion] from a JSON map.
  factory CdsAcceptedSuggestion.fromJson(Map<String, dynamic> json) {
    return CdsAcceptedSuggestion(id: json['id'] as String);
  }

  /// The unique identifier of the accepted suggestion.
  final String id;

  /// Serializes to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{'id': id};

  /// Returns a copy with the given fields replaced.
  CdsAcceptedSuggestion copyWith({String? id}) {
    return CdsAcceptedSuggestion(id: id ?? this.id);
  }
}
