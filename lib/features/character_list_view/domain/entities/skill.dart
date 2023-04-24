import 'package:equatable/equatable.dart';

import 'game_class.dart';

class Skill extends Equatable {
  final String name;
  final GameClassType gameClassType;
  final String description;
  const Skill({
    required this.name,
    required this.gameClassType,
    required this.description,
  });
  @override
  List<Object?> get props => [name, description];
}
