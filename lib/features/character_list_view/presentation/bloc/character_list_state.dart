part of 'character_list_bloc.dart';

abstract class CharacterListState extends Equatable {
  const CharacterListState();

  @override
  List<Object?> get props => [];
}

class CharacterListInitial extends CharacterListState {  
}

class CharacterListLoaded extends CharacterListState {
  final List<Character> characterList;
  const CharacterListLoaded(this.characterList);
  
  @override
  List<Object?> get props => [characterList];
}

