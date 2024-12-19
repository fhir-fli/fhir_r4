part of 'composition.dart';

/// The target composition/document of this relationship.
sealed class TargetXCompositionRelatesTo {}

/// The target composition/document of this relationship.
class IdentifierTargetCompositionRelatesTo extends Identifier
    implements TargetXCompositionRelatesTo {
  /// Factory constructor for super class
  factory IdentifierTargetCompositionRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Identifier.fromJson(json) as IdentifierTargetCompositionRelatesTo;
}

/// The target composition/document of this relationship.
class ReferenceTargetCompositionRelatesTo extends Reference
    implements TargetXCompositionRelatesTo {
  /// Factory constructor for super class
  factory ReferenceTargetCompositionRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceTargetCompositionRelatesTo;
}
