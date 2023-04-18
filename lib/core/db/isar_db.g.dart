// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetCharacterEntitiesCollection on Isar {
  IsarCollection<CharacterEntities> get characterEntities => this.collection();
}

const CharacterEntitiesSchema = CollectionSchema(
  name: r'CharacterEntities',
  id: 3526207290580966430,
  properties: {
    r'backstory': PropertySchema(
      id: 0,
      name: r'backstory',
      type: IsarType.string,
    ),
    r'cd': PropertySchema(
      id: 1,
      name: r'cd',
      type: IsarType.long,
    ),
    r'hashCode': PropertySchema(
      id: 2,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'race': PropertySchema(
      id: 4,
      name: r'race',
      type: IsarType.string,
    ),
    r'sex': PropertySchema(
      id: 5,
      name: r'sex',
      type: IsarType.string,
    ),
    r'stringify': PropertySchema(
      id: 6,
      name: r'stringify',
      type: IsarType.bool,
    )
  },
  estimateSize: _characterEntitiesEstimateSize,
  serialize: _characterEntitiesSerialize,
  deserialize: _characterEntitiesDeserialize,
  deserializeProp: _characterEntitiesDeserializeProp,
  idName: r'id',
  indexes: {
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _characterEntitiesGetId,
  getLinks: _characterEntitiesGetLinks,
  attach: _characterEntitiesAttach,
  version: '3.0.5',
);

int _characterEntitiesEstimateSize(
  CharacterEntities object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.backstory.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.race.length * 3;
  bytesCount += 3 + object.sex.length * 3;
  return bytesCount;
}

void _characterEntitiesSerialize(
  CharacterEntities object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.backstory);
  writer.writeLong(offsets[1], object.cd);
  writer.writeLong(offsets[2], object.hashCode);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.race);
  writer.writeString(offsets[5], object.sex);
  writer.writeBool(offsets[6], object.stringify);
}

CharacterEntities _characterEntitiesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CharacterEntities(
    backstory: reader.readString(offsets[0]),
    cd: reader.readLong(offsets[1]),
    name: reader.readString(offsets[3]),
    race: reader.readString(offsets[4]),
    sex: reader.readString(offsets[5]),
  );
  return object;
}

P _characterEntitiesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _characterEntitiesGetId(CharacterEntities object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _characterEntitiesGetLinks(
    CharacterEntities object) {
  return [];
}

void _characterEntitiesAttach(
    IsarCollection<dynamic> col, Id id, CharacterEntities object) {}

extension CharacterEntitiesByIndex on IsarCollection<CharacterEntities> {
  Future<CharacterEntities?> getByName(String name) {
    return getByIndex(r'name', [name]);
  }

  CharacterEntities? getByNameSync(String name) {
    return getByIndexSync(r'name', [name]);
  }

  Future<bool> deleteByName(String name) {
    return deleteByIndex(r'name', [name]);
  }

  bool deleteByNameSync(String name) {
    return deleteByIndexSync(r'name', [name]);
  }

  Future<List<CharacterEntities?>> getAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndex(r'name', values);
  }

  List<CharacterEntities?> getAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'name', values);
  }

  Future<int> deleteAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'name', values);
  }

  int deleteAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'name', values);
  }

  Future<Id> putByName(CharacterEntities object) {
    return putByIndex(r'name', object);
  }

  Id putByNameSync(CharacterEntities object, {bool saveLinks = true}) {
    return putByIndexSync(r'name', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByName(List<CharacterEntities> objects) {
    return putAllByIndex(r'name', objects);
  }

  List<Id> putAllByNameSync(List<CharacterEntities> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'name', objects, saveLinks: saveLinks);
  }
}

extension CharacterEntitiesQueryWhereSort
    on QueryBuilder<CharacterEntities, CharacterEntities, QWhere> {
  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CharacterEntitiesQueryWhere
    on QueryBuilder<CharacterEntities, CharacterEntities, QWhereClause> {
  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhereClause>
      nameEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhereClause>
      nameNotEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }
}

extension CharacterEntitiesQueryFilter
    on QueryBuilder<CharacterEntities, CharacterEntities, QFilterCondition> {
  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      backstoryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backstory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      backstoryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backstory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      backstoryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backstory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      backstoryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backstory',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      backstoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backstory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      backstoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backstory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      backstoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backstory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      backstoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backstory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      backstoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backstory',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      backstoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backstory',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      cdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cd',
        value: value,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      cdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cd',
        value: value,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      cdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cd',
        value: value,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      cdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cd',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      raceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'race',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      raceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'race',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      raceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'race',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      raceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'race',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      raceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'race',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      raceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'race',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      raceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'race',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      raceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'race',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      raceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'race',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      raceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'race',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      sexEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      sexGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      sexLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      sexBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      sexStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      sexEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      sexContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      sexMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sex',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      sexIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sex',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      sexIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sex',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition>
      stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }
}

extension CharacterEntitiesQueryObject
    on QueryBuilder<CharacterEntities, CharacterEntities, QFilterCondition> {}

extension CharacterEntitiesQueryLinks
    on QueryBuilder<CharacterEntities, CharacterEntities, QFilterCondition> {}

extension CharacterEntitiesQuerySortBy
    on QueryBuilder<CharacterEntities, CharacterEntities, QSortBy> {
  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      sortByBackstory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backstory', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      sortByBackstoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backstory', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortByCd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cd', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      sortByCdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cd', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      sortByRace() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'race', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      sortByRaceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'race', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      sortBySexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension CharacterEntitiesQuerySortThenBy
    on QueryBuilder<CharacterEntities, CharacterEntities, QSortThenBy> {
  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      thenByBackstory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backstory', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      thenByBackstoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backstory', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenByCd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cd', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      thenByCdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cd', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      thenByRace() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'race', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      thenByRaceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'race', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      thenBySexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy>
      thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension CharacterEntitiesQueryWhereDistinct
    on QueryBuilder<CharacterEntities, CharacterEntities, QDistinct> {
  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct>
      distinctByBackstory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backstory', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct> distinctByCd() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cd');
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct> distinctByRace(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'race', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct> distinctBySex(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sex', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct>
      distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }
}

extension CharacterEntitiesQueryProperty
    on QueryBuilder<CharacterEntities, CharacterEntities, QQueryProperty> {
  QueryBuilder<CharacterEntities, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CharacterEntities, String, QQueryOperations>
      backstoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backstory');
    });
  }

  QueryBuilder<CharacterEntities, int, QQueryOperations> cdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cd');
    });
  }

  QueryBuilder<CharacterEntities, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<CharacterEntities, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<CharacterEntities, String, QQueryOperations> raceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'race');
    });
  }

  QueryBuilder<CharacterEntities, String, QQueryOperations> sexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sex');
    });
  }

  QueryBuilder<CharacterEntities, bool?, QQueryOperations> stringifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringify');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetExpEntitiesCollection on Isar {
  IsarCollection<ExpEntities> get expEntities => this.collection();
}

const ExpEntitiesSchema = CollectionSchema(
  name: r'ExpEntities',
  id: 8247034866419608314,
  properties: {
    r'characterName': PropertySchema(
      id: 0,
      name: r'characterName',
      type: IsarType.string,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'stringify': PropertySchema(
      id: 2,
      name: r'stringify',
      type: IsarType.bool,
    ),
    r'value': PropertySchema(
      id: 3,
      name: r'value',
      type: IsarType.long,
    )
  },
  estimateSize: _expEntitiesEstimateSize,
  serialize: _expEntitiesSerialize,
  deserialize: _expEntitiesDeserialize,
  deserializeProp: _expEntitiesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _expEntitiesGetId,
  getLinks: _expEntitiesGetLinks,
  attach: _expEntitiesAttach,
  version: '3.0.5',
);

int _expEntitiesEstimateSize(
  ExpEntities object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.characterName.length * 3;
  return bytesCount;
}

void _expEntitiesSerialize(
  ExpEntities object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.characterName);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeBool(offsets[2], object.stringify);
  writer.writeLong(offsets[3], object.value);
}

ExpEntities _expEntitiesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ExpEntities(
    characterName: reader.readString(offsets[0]),
    value: reader.readLong(offsets[3]),
  );
  return object;
}

P _expEntitiesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _expEntitiesGetId(ExpEntities object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _expEntitiesGetLinks(ExpEntities object) {
  return [];
}

void _expEntitiesAttach(
    IsarCollection<dynamic> col, Id id, ExpEntities object) {}

extension ExpEntitiesQueryWhereSort
    on QueryBuilder<ExpEntities, ExpEntities, QWhere> {
  QueryBuilder<ExpEntities, ExpEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ExpEntitiesQueryWhere
    on QueryBuilder<ExpEntities, ExpEntities, QWhereClause> {
  QueryBuilder<ExpEntities, ExpEntities, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ExpEntitiesQueryFilter
    on QueryBuilder<ExpEntities, ExpEntities, QFilterCondition> {
  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      characterNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      characterNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      characterNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      characterNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'characterName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      characterNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      characterNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> valueEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition>
      valueGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> valueLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> valueBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ExpEntitiesQueryObject
    on QueryBuilder<ExpEntities, ExpEntities, QFilterCondition> {}

extension ExpEntitiesQueryLinks
    on QueryBuilder<ExpEntities, ExpEntities, QFilterCondition> {}

extension ExpEntitiesQuerySortBy
    on QueryBuilder<ExpEntities, ExpEntities, QSortBy> {
  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> sortByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy>
      sortByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension ExpEntitiesQuerySortThenBy
    on QueryBuilder<ExpEntities, ExpEntities, QSortThenBy> {
  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> thenByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy>
      thenByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension ExpEntitiesQueryWhereDistinct
    on QueryBuilder<ExpEntities, ExpEntities, QDistinct> {
  QueryBuilder<ExpEntities, ExpEntities, QDistinct> distinctByCharacterName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QDistinct> distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QDistinct> distinctByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'value');
    });
  }
}

extension ExpEntitiesQueryProperty
    on QueryBuilder<ExpEntities, ExpEntities, QQueryProperty> {
  QueryBuilder<ExpEntities, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ExpEntities, String, QQueryOperations> characterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'characterName');
    });
  }

  QueryBuilder<ExpEntities, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<ExpEntities, bool?, QQueryOperations> stringifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringify');
    });
  }

  QueryBuilder<ExpEntities, int, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetHpEntitiesCollection on Isar {
  IsarCollection<HpEntities> get hpEntities => this.collection();
}

const HpEntitiesSchema = CollectionSchema(
  name: r'HpEntities',
  id: -1518962615010716565,
  properties: {
    r'characterName': PropertySchema(
      id: 0,
      name: r'characterName',
      type: IsarType.string,
    ),
    r'currBonusHP': PropertySchema(
      id: 1,
      name: r'currBonusHP',
      type: IsarType.long,
    ),
    r'currHP': PropertySchema(
      id: 2,
      name: r'currHP',
      type: IsarType.long,
    ),
    r'hashCode': PropertySchema(
      id: 3,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'maxBonusHP': PropertySchema(
      id: 4,
      name: r'maxBonusHP',
      type: IsarType.long,
    ),
    r'maxHP': PropertySchema(
      id: 5,
      name: r'maxHP',
      type: IsarType.long,
    ),
    r'stringify': PropertySchema(
      id: 6,
      name: r'stringify',
      type: IsarType.bool,
    )
  },
  estimateSize: _hpEntitiesEstimateSize,
  serialize: _hpEntitiesSerialize,
  deserialize: _hpEntitiesDeserialize,
  deserializeProp: _hpEntitiesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _hpEntitiesGetId,
  getLinks: _hpEntitiesGetLinks,
  attach: _hpEntitiesAttach,
  version: '3.0.5',
);

int _hpEntitiesEstimateSize(
  HpEntities object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.characterName.length * 3;
  return bytesCount;
}

void _hpEntitiesSerialize(
  HpEntities object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.characterName);
  writer.writeLong(offsets[1], object.currBonusHP);
  writer.writeLong(offsets[2], object.currHP);
  writer.writeLong(offsets[3], object.hashCode);
  writer.writeLong(offsets[4], object.maxBonusHP);
  writer.writeLong(offsets[5], object.maxHP);
  writer.writeBool(offsets[6], object.stringify);
}

HpEntities _hpEntitiesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = HpEntities(
    characterName: reader.readString(offsets[0]),
    currBonusHP: reader.readLong(offsets[1]),
    currHP: reader.readLong(offsets[2]),
    maxBonusHP: reader.readLong(offsets[4]),
    maxHP: reader.readLong(offsets[5]),
  );
  return object;
}

P _hpEntitiesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _hpEntitiesGetId(HpEntities object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _hpEntitiesGetLinks(HpEntities object) {
  return [];
}

void _hpEntitiesAttach(IsarCollection<dynamic> col, Id id, HpEntities object) {}

extension HpEntitiesQueryWhereSort
    on QueryBuilder<HpEntities, HpEntities, QWhere> {
  QueryBuilder<HpEntities, HpEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension HpEntitiesQueryWhere
    on QueryBuilder<HpEntities, HpEntities, QWhereClause> {
  QueryBuilder<HpEntities, HpEntities, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension HpEntitiesQueryFilter
    on QueryBuilder<HpEntities, HpEntities, QFilterCondition> {
  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      characterNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      characterNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      characterNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      characterNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'characterName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      characterNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      characterNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      currBonusHPEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currBonusHP',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      currBonusHPGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currBonusHP',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      currBonusHPLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currBonusHP',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      currBonusHPBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currBonusHP',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> currHPEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currHP',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> currHPGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currHP',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> currHPLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currHP',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> currHPBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currHP',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> maxBonusHPEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxBonusHP',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      maxBonusHPGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxBonusHP',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      maxBonusHPLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxBonusHP',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> maxBonusHPBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxBonusHP',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> maxHPEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxHP',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> maxHPGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxHP',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> maxHPLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxHP',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> maxHPBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxHP',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition>
      stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> stringifyEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }
}

extension HpEntitiesQueryObject
    on QueryBuilder<HpEntities, HpEntities, QFilterCondition> {}

extension HpEntitiesQueryLinks
    on QueryBuilder<HpEntities, HpEntities, QFilterCondition> {}

extension HpEntitiesQuerySortBy
    on QueryBuilder<HpEntities, HpEntities, QSortBy> {
  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> sortByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> sortByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> sortByCurrBonusHP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currBonusHP', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> sortByCurrBonusHPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currBonusHP', Sort.desc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> sortByCurrHP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currHP', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> sortByCurrHPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currHP', Sort.desc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> sortByMaxBonusHP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxBonusHP', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> sortByMaxBonusHPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxBonusHP', Sort.desc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> sortByMaxHP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxHP', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> sortByMaxHPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxHP', Sort.desc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension HpEntitiesQuerySortThenBy
    on QueryBuilder<HpEntities, HpEntities, QSortThenBy> {
  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByCurrBonusHP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currBonusHP', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByCurrBonusHPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currBonusHP', Sort.desc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByCurrHP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currHP', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByCurrHPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currHP', Sort.desc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByMaxBonusHP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxBonusHP', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByMaxBonusHPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxBonusHP', Sort.desc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByMaxHP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxHP', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByMaxHPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxHP', Sort.desc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterSortBy> thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension HpEntitiesQueryWhereDistinct
    on QueryBuilder<HpEntities, HpEntities, QDistinct> {
  QueryBuilder<HpEntities, HpEntities, QDistinct> distinctByCharacterName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<HpEntities, HpEntities, QDistinct> distinctByCurrBonusHP() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currBonusHP');
    });
  }

  QueryBuilder<HpEntities, HpEntities, QDistinct> distinctByCurrHP() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currHP');
    });
  }

  QueryBuilder<HpEntities, HpEntities, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<HpEntities, HpEntities, QDistinct> distinctByMaxBonusHP() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxBonusHP');
    });
  }

  QueryBuilder<HpEntities, HpEntities, QDistinct> distinctByMaxHP() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxHP');
    });
  }

  QueryBuilder<HpEntities, HpEntities, QDistinct> distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }
}

extension HpEntitiesQueryProperty
    on QueryBuilder<HpEntities, HpEntities, QQueryProperty> {
  QueryBuilder<HpEntities, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<HpEntities, String, QQueryOperations> characterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'characterName');
    });
  }

  QueryBuilder<HpEntities, int, QQueryOperations> currBonusHPProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currBonusHP');
    });
  }

  QueryBuilder<HpEntities, int, QQueryOperations> currHPProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currHP');
    });
  }

  QueryBuilder<HpEntities, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<HpEntities, int, QQueryOperations> maxBonusHPProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxBonusHP');
    });
  }

  QueryBuilder<HpEntities, int, QQueryOperations> maxHPProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxHP');
    });
  }

  QueryBuilder<HpEntities, bool?, QQueryOperations> stringifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringify');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetStatEntitiesCollection on Isar {
  IsarCollection<StatEntities> get statEntities => this.collection();
}

const StatEntitiesSchema = CollectionSchema(
  name: r'StatEntities',
  id: -7315659939794621026,
  properties: {
    r'characterName': PropertySchema(
      id: 0,
      name: r'characterName',
      type: IsarType.string,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'saveThrowMastered': PropertySchema(
      id: 2,
      name: r'saveThrowMastered',
      type: IsarType.bool,
    ),
    r'statType': PropertySchema(
      id: 3,
      name: r'statType',
      type: IsarType.byte,
      enumMap: _StatEntitiesstatTypeEnumValueMap,
    ),
    r'stringify': PropertySchema(
      id: 4,
      name: r'stringify',
      type: IsarType.bool,
    ),
    r'value': PropertySchema(
      id: 5,
      name: r'value',
      type: IsarType.long,
    )
  },
  estimateSize: _statEntitiesEstimateSize,
  serialize: _statEntitiesSerialize,
  deserialize: _statEntitiesDeserialize,
  deserializeProp: _statEntitiesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _statEntitiesGetId,
  getLinks: _statEntitiesGetLinks,
  attach: _statEntitiesAttach,
  version: '3.0.5',
);

int _statEntitiesEstimateSize(
  StatEntities object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.characterName.length * 3;
  return bytesCount;
}

void _statEntitiesSerialize(
  StatEntities object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.characterName);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeBool(offsets[2], object.saveThrowMastered);
  writer.writeByte(offsets[3], object.statType.index);
  writer.writeBool(offsets[4], object.stringify);
  writer.writeLong(offsets[5], object.value);
}

StatEntities _statEntitiesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StatEntities(
    characterName: reader.readString(offsets[0]),
    saveThrowMastered: reader.readBool(offsets[2]),
    statType:
        _StatEntitiesstatTypeValueEnumMap[reader.readByteOrNull(offsets[3])] ??
            StatType.STR,
    value: reader.readLong(offsets[5]),
  );
  return object;
}

P _statEntitiesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (_StatEntitiesstatTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          StatType.STR) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _StatEntitiesstatTypeEnumValueMap = {
  'STR': 0,
  'DEX': 1,
  'VIT': 2,
  'INT': 3,
  'WIS': 4,
  'CHR': 5,
};
const _StatEntitiesstatTypeValueEnumMap = {
  0: StatType.STR,
  1: StatType.DEX,
  2: StatType.VIT,
  3: StatType.INT,
  4: StatType.WIS,
  5: StatType.CHR,
};

Id _statEntitiesGetId(StatEntities object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _statEntitiesGetLinks(StatEntities object) {
  return [];
}

void _statEntitiesAttach(
    IsarCollection<dynamic> col, Id id, StatEntities object) {}

extension StatEntitiesQueryWhereSort
    on QueryBuilder<StatEntities, StatEntities, QWhere> {
  QueryBuilder<StatEntities, StatEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StatEntitiesQueryWhere
    on QueryBuilder<StatEntities, StatEntities, QWhereClause> {
  QueryBuilder<StatEntities, StatEntities, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StatEntitiesQueryFilter
    on QueryBuilder<StatEntities, StatEntities, QFilterCondition> {
  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      characterNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      characterNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      characterNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      characterNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'characterName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      characterNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      characterNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      saveThrowMasteredEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'saveThrowMastered',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      statTypeEqualTo(StatType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'statType',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      statTypeGreaterThan(
    StatType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'statType',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      statTypeLessThan(
    StatType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'statType',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      statTypeBetween(
    StatType lower,
    StatType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'statType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> valueEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition>
      valueGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> valueLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> valueBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StatEntitiesQueryObject
    on QueryBuilder<StatEntities, StatEntities, QFilterCondition> {}

extension StatEntitiesQueryLinks
    on QueryBuilder<StatEntities, StatEntities, QFilterCondition> {}

extension StatEntitiesQuerySortBy
    on QueryBuilder<StatEntities, StatEntities, QSortBy> {
  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> sortByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy>
      sortByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy>
      sortBySaveThrowMastered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saveThrowMastered', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy>
      sortBySaveThrowMasteredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saveThrowMastered', Sort.desc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> sortByStatType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statType', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> sortByStatTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statType', Sort.desc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension StatEntitiesQuerySortThenBy
    on QueryBuilder<StatEntities, StatEntities, QSortThenBy> {
  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy>
      thenByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy>
      thenBySaveThrowMastered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saveThrowMastered', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy>
      thenBySaveThrowMasteredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saveThrowMastered', Sort.desc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenByStatType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statType', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenByStatTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statType', Sort.desc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension StatEntitiesQueryWhereDistinct
    on QueryBuilder<StatEntities, StatEntities, QDistinct> {
  QueryBuilder<StatEntities, StatEntities, QDistinct> distinctByCharacterName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<StatEntities, StatEntities, QDistinct>
      distinctBySaveThrowMastered() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'saveThrowMastered');
    });
  }

  QueryBuilder<StatEntities, StatEntities, QDistinct> distinctByStatType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'statType');
    });
  }

  QueryBuilder<StatEntities, StatEntities, QDistinct> distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }

  QueryBuilder<StatEntities, StatEntities, QDistinct> distinctByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'value');
    });
  }
}

extension StatEntitiesQueryProperty
    on QueryBuilder<StatEntities, StatEntities, QQueryProperty> {
  QueryBuilder<StatEntities, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<StatEntities, String, QQueryOperations> characterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'characterName');
    });
  }

  QueryBuilder<StatEntities, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<StatEntities, bool, QQueryOperations>
      saveThrowMasteredProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'saveThrowMastered');
    });
  }

  QueryBuilder<StatEntities, StatType, QQueryOperations> statTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'statType');
    });
  }

  QueryBuilder<StatEntities, bool?, QQueryOperations> stringifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringify');
    });
  }

  QueryBuilder<StatEntities, int, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetWeaponEntitiesCollection on Isar {
  IsarCollection<WeaponEntities> get weaponEntities => this.collection();
}

const WeaponEntitiesSchema = CollectionSchema(
  name: r'WeaponEntities',
  id: 5609841154205655448,
  properties: {
    r'bonusAttackChance': PropertySchema(
      id: 0,
      name: r'bonusAttackChance',
      type: IsarType.long,
    ),
    r'bonusAttackDamage': PropertySchema(
      id: 1,
      name: r'bonusAttackDamage',
      type: IsarType.long,
    ),
    r'characterName': PropertySchema(
      id: 2,
      name: r'characterName',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 3,
      name: r'description',
      type: IsarType.string,
    ),
    r'dice': PropertySchema(
      id: 4,
      name: r'dice',
      type: IsarType.string,
    ),
    r'distance': PropertySchema(
      id: 5,
      name: r'distance',
      type: IsarType.long,
    ),
    r'hashCode': PropertySchema(
      id: 6,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'master': PropertySchema(
      id: 7,
      name: r'master',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 8,
      name: r'name',
      type: IsarType.string,
    ),
    r'stringify': PropertySchema(
      id: 9,
      name: r'stringify',
      type: IsarType.bool,
    ),
    r'typeDamage': PropertySchema(
      id: 10,
      name: r'typeDamage',
      type: IsarType.string,
    ),
    r'weaponType': PropertySchema(
      id: 11,
      name: r'weaponType',
      type: IsarType.byte,
      enumMap: _WeaponEntitiesweaponTypeEnumValueMap,
    )
  },
  estimateSize: _weaponEntitiesEstimateSize,
  serialize: _weaponEntitiesSerialize,
  deserialize: _weaponEntitiesDeserialize,
  deserializeProp: _weaponEntitiesDeserializeProp,
  idName: r'id',
  indexes: {
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _weaponEntitiesGetId,
  getLinks: _weaponEntitiesGetLinks,
  attach: _weaponEntitiesAttach,
  version: '3.0.5',
);

int _weaponEntitiesEstimateSize(
  WeaponEntities object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.characterName.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.dice.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.typeDamage.length * 3;
  return bytesCount;
}

void _weaponEntitiesSerialize(
  WeaponEntities object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.bonusAttackChance);
  writer.writeLong(offsets[1], object.bonusAttackDamage);
  writer.writeString(offsets[2], object.characterName);
  writer.writeString(offsets[3], object.description);
  writer.writeString(offsets[4], object.dice);
  writer.writeLong(offsets[5], object.distance);
  writer.writeLong(offsets[6], object.hashCode);
  writer.writeBool(offsets[7], object.master);
  writer.writeString(offsets[8], object.name);
  writer.writeBool(offsets[9], object.stringify);
  writer.writeString(offsets[10], object.typeDamage);
  writer.writeByte(offsets[11], object.weaponType.index);
}

WeaponEntities _weaponEntitiesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WeaponEntities(
    bonusAttackChance: reader.readLong(offsets[0]),
    bonusAttackDamage: reader.readLong(offsets[1]),
    characterName: reader.readString(offsets[2]),
    description: reader.readString(offsets[3]),
    dice: reader.readString(offsets[4]),
    distance: reader.readLong(offsets[5]),
    master: reader.readBool(offsets[7]),
    name: reader.readString(offsets[8]),
    typeDamage: reader.readString(offsets[10]),
    weaponType: _WeaponEntitiesweaponTypeValueEnumMap[
            reader.readByteOrNull(offsets[11])] ??
        WeaponType.MELEE,
  );
  return object;
}

P _weaponEntitiesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readBoolOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (_WeaponEntitiesweaponTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          WeaponType.MELEE) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _WeaponEntitiesweaponTypeEnumValueMap = {
  'MELEE': 0,
  'RANGE': 1,
  'FENCING': 2,
};
const _WeaponEntitiesweaponTypeValueEnumMap = {
  0: WeaponType.MELEE,
  1: WeaponType.RANGE,
  2: WeaponType.FENCING,
};

Id _weaponEntitiesGetId(WeaponEntities object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _weaponEntitiesGetLinks(WeaponEntities object) {
  return [];
}

void _weaponEntitiesAttach(
    IsarCollection<dynamic> col, Id id, WeaponEntities object) {}

extension WeaponEntitiesByIndex on IsarCollection<WeaponEntities> {
  Future<WeaponEntities?> getByName(String name) {
    return getByIndex(r'name', [name]);
  }

  WeaponEntities? getByNameSync(String name) {
    return getByIndexSync(r'name', [name]);
  }

  Future<bool> deleteByName(String name) {
    return deleteByIndex(r'name', [name]);
  }

  bool deleteByNameSync(String name) {
    return deleteByIndexSync(r'name', [name]);
  }

  Future<List<WeaponEntities?>> getAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndex(r'name', values);
  }

  List<WeaponEntities?> getAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'name', values);
  }

  Future<int> deleteAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'name', values);
  }

  int deleteAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'name', values);
  }

  Future<Id> putByName(WeaponEntities object) {
    return putByIndex(r'name', object);
  }

  Id putByNameSync(WeaponEntities object, {bool saveLinks = true}) {
    return putByIndexSync(r'name', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByName(List<WeaponEntities> objects) {
    return putAllByIndex(r'name', objects);
  }

  List<Id> putAllByNameSync(List<WeaponEntities> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'name', objects, saveLinks: saveLinks);
  }
}

extension WeaponEntitiesQueryWhereSort
    on QueryBuilder<WeaponEntities, WeaponEntities, QWhere> {
  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WeaponEntitiesQueryWhere
    on QueryBuilder<WeaponEntities, WeaponEntities, QWhereClause> {
  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhereClause> nameEqualTo(
      String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhereClause>
      nameNotEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }
}

extension WeaponEntitiesQueryFilter
    on QueryBuilder<WeaponEntities, WeaponEntities, QFilterCondition> {
  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      bonusAttackChanceEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bonusAttackChance',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      bonusAttackChanceGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bonusAttackChance',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      bonusAttackChanceLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bonusAttackChance',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      bonusAttackChanceBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bonusAttackChance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      bonusAttackDamageEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bonusAttackDamage',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      bonusAttackDamageGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bonusAttackDamage',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      bonusAttackDamageLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bonusAttackDamage',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      bonusAttackDamageBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bonusAttackDamage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      characterNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      characterNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      characterNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      characterNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'characterName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      characterNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      characterNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      diceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      diceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      diceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      diceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      diceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      diceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      diceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      diceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      diceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dice',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      diceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dice',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      distanceEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'distance',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      distanceGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'distance',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      distanceLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'distance',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      distanceBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'distance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      masterEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'master',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      typeDamageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeDamage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      typeDamageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'typeDamage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      typeDamageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'typeDamage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      typeDamageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'typeDamage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      typeDamageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'typeDamage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      typeDamageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'typeDamage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      typeDamageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'typeDamage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      typeDamageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'typeDamage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      typeDamageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeDamage',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      typeDamageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'typeDamage',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      weaponTypeEqualTo(WeaponType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weaponType',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      weaponTypeGreaterThan(
    WeaponType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weaponType',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      weaponTypeLessThan(
    WeaponType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weaponType',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition>
      weaponTypeBetween(
    WeaponType lower,
    WeaponType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weaponType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WeaponEntitiesQueryObject
    on QueryBuilder<WeaponEntities, WeaponEntities, QFilterCondition> {}

extension WeaponEntitiesQueryLinks
    on QueryBuilder<WeaponEntities, WeaponEntities, QFilterCondition> {}

extension WeaponEntitiesQuerySortBy
    on QueryBuilder<WeaponEntities, WeaponEntities, QSortBy> {
  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByBonusAttackChance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackChance', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByBonusAttackChanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackChance', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByBonusAttackDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackDamage', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByBonusAttackDamageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackDamage', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByDice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dice', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByDiceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dice', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByMaster() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'master', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByMasterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'master', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByTypeDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeDamage', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByTypeDamageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeDamage', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByWeaponType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weaponType', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      sortByWeaponTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weaponType', Sort.desc);
    });
  }
}

extension WeaponEntitiesQuerySortThenBy
    on QueryBuilder<WeaponEntities, WeaponEntities, QSortThenBy> {
  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByBonusAttackChance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackChance', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByBonusAttackChanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackChance', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByBonusAttackDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackDamage', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByBonusAttackDamageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackDamage', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByDice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dice', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByDiceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dice', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByMaster() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'master', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByMasterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'master', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByTypeDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeDamage', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByTypeDamageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeDamage', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByWeaponType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weaponType', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy>
      thenByWeaponTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weaponType', Sort.desc);
    });
  }
}

extension WeaponEntitiesQueryWhereDistinct
    on QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> {
  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct>
      distinctByBonusAttackChance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bonusAttackChance');
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct>
      distinctByBonusAttackDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bonusAttackDamage');
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct>
      distinctByCharacterName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByDice(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dice', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'distance');
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByMaster() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'master');
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct>
      distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByTypeDamage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'typeDamage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct>
      distinctByWeaponType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weaponType');
    });
  }
}

extension WeaponEntitiesQueryProperty
    on QueryBuilder<WeaponEntities, WeaponEntities, QQueryProperty> {
  QueryBuilder<WeaponEntities, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WeaponEntities, int, QQueryOperations>
      bonusAttackChanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bonusAttackChance');
    });
  }

  QueryBuilder<WeaponEntities, int, QQueryOperations>
      bonusAttackDamageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bonusAttackDamage');
    });
  }

  QueryBuilder<WeaponEntities, String, QQueryOperations>
      characterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'characterName');
    });
  }

  QueryBuilder<WeaponEntities, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<WeaponEntities, String, QQueryOperations> diceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dice');
    });
  }

  QueryBuilder<WeaponEntities, int, QQueryOperations> distanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'distance');
    });
  }

  QueryBuilder<WeaponEntities, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<WeaponEntities, bool, QQueryOperations> masterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'master');
    });
  }

  QueryBuilder<WeaponEntities, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<WeaponEntities, bool?, QQueryOperations> stringifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringify');
    });
  }

  QueryBuilder<WeaponEntities, String, QQueryOperations> typeDamageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'typeDamage');
    });
  }

  QueryBuilder<WeaponEntities, WeaponType, QQueryOperations>
      weaponTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weaponType');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetCompetenceEntitiesCollection on Isar {
  IsarCollection<CompetenceEntities> get competenceEntities =>
      this.collection();
}

const CompetenceEntitiesSchema = CollectionSchema(
  name: r'CompetenceEntities',
  id: -2616218442569236800,
  properties: {
    r'characterName': PropertySchema(
      id: 0,
      name: r'characterName',
      type: IsarType.string,
    ),
    r'competenceType': PropertySchema(
      id: 1,
      name: r'competenceType',
      type: IsarType.byte,
      enumMap: _CompetenceEntitiescompetenceTypeEnumValueMap,
    ),
    r'competenced': PropertySchema(
      id: 2,
      name: r'competenced',
      type: IsarType.bool,
    ),
    r'hashCode': PropertySchema(
      id: 3,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'mastered': PropertySchema(
      id: 4,
      name: r'mastered',
      type: IsarType.bool,
    ),
    r'statTypeScale': PropertySchema(
      id: 5,
      name: r'statTypeScale',
      type: IsarType.byte,
      enumMap: _CompetenceEntitiesstatTypeScaleEnumValueMap,
    ),
    r'stringify': PropertySchema(
      id: 6,
      name: r'stringify',
      type: IsarType.bool,
    )
  },
  estimateSize: _competenceEntitiesEstimateSize,
  serialize: _competenceEntitiesSerialize,
  deserialize: _competenceEntitiesDeserialize,
  deserializeProp: _competenceEntitiesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _competenceEntitiesGetId,
  getLinks: _competenceEntitiesGetLinks,
  attach: _competenceEntitiesAttach,
  version: '3.0.5',
);

int _competenceEntitiesEstimateSize(
  CompetenceEntities object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.characterName.length * 3;
  return bytesCount;
}

void _competenceEntitiesSerialize(
  CompetenceEntities object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.characterName);
  writer.writeByte(offsets[1], object.competenceType.index);
  writer.writeBool(offsets[2], object.competenced);
  writer.writeLong(offsets[3], object.hashCode);
  writer.writeBool(offsets[4], object.mastered);
  writer.writeByte(offsets[5], object.statTypeScale.index);
  writer.writeBool(offsets[6], object.stringify);
}

CompetenceEntities _competenceEntitiesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CompetenceEntities(
    characterName: reader.readString(offsets[0]),
    competenceType: _CompetenceEntitiescompetenceTypeValueEnumMap[
            reader.readByteOrNull(offsets[1])] ??
        CompetenceType.ACROBATICS,
    competenced: reader.readBool(offsets[2]),
    mastered: reader.readBool(offsets[4]),
    statTypeScale: _CompetenceEntitiesstatTypeScaleValueEnumMap[
            reader.readByteOrNull(offsets[5])] ??
        StatType.STR,
  );
  return object;
}

P _competenceEntitiesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (_CompetenceEntitiescompetenceTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          CompetenceType.ACROBATICS) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (_CompetenceEntitiesstatTypeScaleValueEnumMap[
              reader.readByteOrNull(offset)] ??
          StatType.STR) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _CompetenceEntitiescompetenceTypeEnumValueMap = {
  'ACROBATICS': 0,
  'ANALISYS': 1,
  'ATHLETICS': 2,
  'ATTENTION': 3,
  'SURVIVAL': 4,
  'PERFOMANCE': 5,
  'HARASSMENT': 6,
  'HISTORY': 7,
  'FAST_HANDS': 8,
  'MAGIC': 9,
  'MEDICINE': 10,
  'LIE': 11,
  'NATURE': 12,
  'INSIGHT': 13,
  'RELIGION': 14,
  'STEALTH': 15,
  'PERSUASION': 16,
  'ANIMAL_CARE': 17,
};
const _CompetenceEntitiescompetenceTypeValueEnumMap = {
  0: CompetenceType.ACROBATICS,
  1: CompetenceType.ANALISYS,
  2: CompetenceType.ATHLETICS,
  3: CompetenceType.ATTENTION,
  4: CompetenceType.SURVIVAL,
  5: CompetenceType.PERFOMANCE,
  6: CompetenceType.HARASSMENT,
  7: CompetenceType.HISTORY,
  8: CompetenceType.FAST_HANDS,
  9: CompetenceType.MAGIC,
  10: CompetenceType.MEDICINE,
  11: CompetenceType.LIE,
  12: CompetenceType.NATURE,
  13: CompetenceType.INSIGHT,
  14: CompetenceType.RELIGION,
  15: CompetenceType.STEALTH,
  16: CompetenceType.PERSUASION,
  17: CompetenceType.ANIMAL_CARE,
};
const _CompetenceEntitiesstatTypeScaleEnumValueMap = {
  'STR': 0,
  'DEX': 1,
  'VIT': 2,
  'INT': 3,
  'WIS': 4,
  'CHR': 5,
};
const _CompetenceEntitiesstatTypeScaleValueEnumMap = {
  0: StatType.STR,
  1: StatType.DEX,
  2: StatType.VIT,
  3: StatType.INT,
  4: StatType.WIS,
  5: StatType.CHR,
};

Id _competenceEntitiesGetId(CompetenceEntities object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _competenceEntitiesGetLinks(
    CompetenceEntities object) {
  return [];
}

void _competenceEntitiesAttach(
    IsarCollection<dynamic> col, Id id, CompetenceEntities object) {}

extension CompetenceEntitiesQueryWhereSort
    on QueryBuilder<CompetenceEntities, CompetenceEntities, QWhere> {
  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CompetenceEntitiesQueryWhere
    on QueryBuilder<CompetenceEntities, CompetenceEntities, QWhereClause> {
  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CompetenceEntitiesQueryFilter
    on QueryBuilder<CompetenceEntities, CompetenceEntities, QFilterCondition> {
  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      characterNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      characterNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      characterNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      characterNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'characterName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      characterNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      characterNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      competenceTypeEqualTo(CompetenceType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'competenceType',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      competenceTypeGreaterThan(
    CompetenceType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'competenceType',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      competenceTypeLessThan(
    CompetenceType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'competenceType',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      competenceTypeBetween(
    CompetenceType lower,
    CompetenceType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'competenceType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      competencedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'competenced',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      masteredEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mastered',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      statTypeScaleEqualTo(StatType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'statTypeScale',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      statTypeScaleGreaterThan(
    StatType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'statTypeScale',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      statTypeScaleLessThan(
    StatType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'statTypeScale',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      statTypeScaleBetween(
    StatType lower,
    StatType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'statTypeScale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition>
      stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }
}

extension CompetenceEntitiesQueryObject
    on QueryBuilder<CompetenceEntities, CompetenceEntities, QFilterCondition> {}

extension CompetenceEntitiesQueryLinks
    on QueryBuilder<CompetenceEntities, CompetenceEntities, QFilterCondition> {}

extension CompetenceEntitiesQuerySortBy
    on QueryBuilder<CompetenceEntities, CompetenceEntities, QSortBy> {
  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      sortByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      sortByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      sortByCompetenceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenceType', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      sortByCompetenceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenceType', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      sortByCompetenced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenced', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      sortByCompetencedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenced', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      sortByMastered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mastered', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      sortByMasteredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mastered', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      sortByStatTypeScale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statTypeScale', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      sortByStatTypeScaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statTypeScale', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension CompetenceEntitiesQuerySortThenBy
    on QueryBuilder<CompetenceEntities, CompetenceEntities, QSortThenBy> {
  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByCompetenceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenceType', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByCompetenceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenceType', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByCompetenced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenced', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByCompetencedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenced', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByMastered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mastered', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByMasteredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mastered', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByStatTypeScale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statTypeScale', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByStatTypeScaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statTypeScale', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy>
      thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension CompetenceEntitiesQueryWhereDistinct
    on QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct> {
  QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct>
      distinctByCharacterName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct>
      distinctByCompetenceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'competenceType');
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct>
      distinctByCompetenced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'competenced');
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct>
      distinctByMastered() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mastered');
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct>
      distinctByStatTypeScale() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'statTypeScale');
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct>
      distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }
}

extension CompetenceEntitiesQueryProperty
    on QueryBuilder<CompetenceEntities, CompetenceEntities, QQueryProperty> {
  QueryBuilder<CompetenceEntities, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CompetenceEntities, String, QQueryOperations>
      characterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'characterName');
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceType, QQueryOperations>
      competenceTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'competenceType');
    });
  }

  QueryBuilder<CompetenceEntities, bool, QQueryOperations>
      competencedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'competenced');
    });
  }

  QueryBuilder<CompetenceEntities, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<CompetenceEntities, bool, QQueryOperations> masteredProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mastered');
    });
  }

  QueryBuilder<CompetenceEntities, StatType, QQueryOperations>
      statTypeScaleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'statTypeScale');
    });
  }

  QueryBuilder<CompetenceEntities, bool?, QQueryOperations>
      stringifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringify');
    });
  }
}
