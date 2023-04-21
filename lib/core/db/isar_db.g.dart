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
    r'specialNameOfClass': PropertySchema(
      id: 6,
      name: r'specialNameOfClass',
      type: IsarType.string,
    ),
    r'stringify': PropertySchema(
      id: 7,
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
  {
    final value = object.customNameOfMulticlass;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
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
  writer.writeString(offsets[6], object.customNameOfMulticlass);
  writer.writeBool(offsets[7], object.stringify);
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
    customNameOfMulticlass: reader.readStringOrNull(offsets[6]),
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
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _characterEntitiesGetId(CharacterEntities object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _characterEntitiesGetLinks(CharacterEntities object) {
  return [];
}

void _characterEntitiesAttach(IsarCollection<dynamic> col, Id id, CharacterEntities object) {}

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

  List<Id> putAllByNameSync(List<CharacterEntities> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'name', objects, saveLinks: saveLinks);
  }
}

extension CharacterEntitiesQueryWhereSort on QueryBuilder<CharacterEntities, CharacterEntities, QWhere> {
  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CharacterEntitiesQueryWhere on QueryBuilder<CharacterEntities, CharacterEntities, QWhereClause> {
  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhereClause> idBetween(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhereClause> nameEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterWhereClause> nameNotEqualTo(String name) {
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

extension CharacterEntitiesQueryFilter on QueryBuilder<CharacterEntities, CharacterEntities, QFilterCondition> {
  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> backstoryEqualTo(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> backstoryGreaterThan(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> backstoryLessThan(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> backstoryBetween(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> backstoryStartsWith(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> backstoryEndsWith(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> backstoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backstory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> backstoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backstory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> backstoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backstory',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> backstoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backstory',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> cdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cd',
        value: value,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> cdGreaterThan(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> cdLessThan(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> cdBetween(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> raceEqualTo(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> raceGreaterThan(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> raceLessThan(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> raceBetween(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> raceStartsWith(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> raceEndsWith(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> raceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'race',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> raceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'race',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> raceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'race',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> raceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'race',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> sexEqualTo(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> sexGreaterThan(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> sexLessThan(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> sexBetween(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> sexStartsWith(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> sexEndsWith(
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

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> sexContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> sexMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sex',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> sexIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sex',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> sexIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sex',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> specialNameOfClassIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'specialNameOfClass',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> specialNameOfClassIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'specialNameOfClass',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> specialNameOfClassEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialNameOfClass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> specialNameOfClassGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'specialNameOfClass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> specialNameOfClassLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'specialNameOfClass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> specialNameOfClassBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'specialNameOfClass',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> specialNameOfClassStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'specialNameOfClass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> specialNameOfClassEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'specialNameOfClass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> specialNameOfClassContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'specialNameOfClass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> specialNameOfClassMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'specialNameOfClass',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> specialNameOfClassIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialNameOfClass',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> specialNameOfClassIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'specialNameOfClass',
        value: '',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterFilterCondition> stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }
}

extension CharacterEntitiesQueryObject on QueryBuilder<CharacterEntities, CharacterEntities, QFilterCondition> {}

extension CharacterEntitiesQueryLinks on QueryBuilder<CharacterEntities, CharacterEntities, QFilterCondition> {}

extension CharacterEntitiesQuerySortBy on QueryBuilder<CharacterEntities, CharacterEntities, QSortBy> {
  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortByBackstory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backstory', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortByBackstoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backstory', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortByCd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cd', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortByCdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cd', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortByRace() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'race', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortByRaceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'race', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortBySexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortBySpecialNameOfClass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialNameOfClass', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortBySpecialNameOfClassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialNameOfClass', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension CharacterEntitiesQuerySortThenBy on QueryBuilder<CharacterEntities, CharacterEntities, QSortThenBy> {
  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenByBackstory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backstory', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenByBackstoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backstory', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenByCd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cd', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenByCdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cd', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenByRace() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'race', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenByRaceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'race', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenBySexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenBySpecialNameOfClass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialNameOfClass', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenBySpecialNameOfClassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialNameOfClass', Sort.desc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QAfterSortBy> thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension CharacterEntitiesQueryWhereDistinct on QueryBuilder<CharacterEntities, CharacterEntities, QDistinct> {
  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct> distinctByBackstory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backstory', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct> distinctByCd() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cd');
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct> distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct> distinctByRace({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'race', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct> distinctBySex({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sex', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct> distinctBySpecialNameOfClass({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'specialNameOfClass', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CharacterEntities, CharacterEntities, QDistinct> distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }
}

extension CharacterEntitiesQueryProperty on QueryBuilder<CharacterEntities, CharacterEntities, QQueryProperty> {
  QueryBuilder<CharacterEntities, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CharacterEntities, String, QQueryOperations> backstoryProperty() {
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

  QueryBuilder<CharacterEntities, String?, QQueryOperations> specialNameOfClassProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'specialNameOfClass');
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

void _expEntitiesAttach(IsarCollection<dynamic> col, Id id, ExpEntities object) {}

extension ExpEntitiesQueryWhereSort on QueryBuilder<ExpEntities, ExpEntities, QWhere> {
  QueryBuilder<ExpEntities, ExpEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ExpEntitiesQueryWhere on QueryBuilder<ExpEntities, ExpEntities, QWhereClause> {
  QueryBuilder<ExpEntities, ExpEntities, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<ExpEntities, ExpEntities, QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
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

extension ExpEntitiesQueryFilter on QueryBuilder<ExpEntities, ExpEntities, QFilterCondition> {
  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> characterNameEqualTo(
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

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> characterNameGreaterThan(
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

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> characterNameLessThan(
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

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> characterNameBetween(
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

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> characterNameStartsWith(
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

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> characterNameEndsWith(
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

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> idEqualTo(Id value) {
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

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> valueEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterFilterCondition> valueGreaterThan(
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

extension ExpEntitiesQueryObject on QueryBuilder<ExpEntities, ExpEntities, QFilterCondition> {}

extension ExpEntitiesQueryLinks on QueryBuilder<ExpEntities, ExpEntities, QFilterCondition> {}

extension ExpEntitiesQuerySortBy on QueryBuilder<ExpEntities, ExpEntities, QSortBy> {
  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> sortByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> sortByCharacterNameDesc() {
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

extension ExpEntitiesQuerySortThenBy on QueryBuilder<ExpEntities, ExpEntities, QSortThenBy> {
  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> thenByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<ExpEntities, ExpEntities, QAfterSortBy> thenByCharacterNameDesc() {
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

extension ExpEntitiesQueryWhereDistinct on QueryBuilder<ExpEntities, ExpEntities, QDistinct> {
  QueryBuilder<ExpEntities, ExpEntities, QDistinct> distinctByCharacterName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName', caseSensitive: caseSensitive);
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

extension ExpEntitiesQueryProperty on QueryBuilder<ExpEntities, ExpEntities, QQueryProperty> {
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

extension HpEntitiesQueryWhereSort on QueryBuilder<HpEntities, HpEntities, QWhere> {
  QueryBuilder<HpEntities, HpEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension HpEntitiesQueryWhere on QueryBuilder<HpEntities, HpEntities, QWhereClause> {
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

  QueryBuilder<HpEntities, HpEntities, QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
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

extension HpEntitiesQueryFilter on QueryBuilder<HpEntities, HpEntities, QFilterCondition> {
  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> characterNameEqualTo(
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> characterNameGreaterThan(
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> characterNameLessThan(
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> characterNameBetween(
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> characterNameStartsWith(
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> characterNameEndsWith(
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> currBonusHPEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currBonusHP',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> currBonusHPGreaterThan(
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> currBonusHPLessThan(
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> currBonusHPBetween(
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> currHPEqualTo(int value) {
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> idEqualTo(Id value) {
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> maxBonusHPEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxBonusHP',
        value: value,
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> maxBonusHPGreaterThan(
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> maxBonusHPLessThan(
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> maxHPEqualTo(int value) {
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

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<HpEntities, HpEntities, QAfterFilterCondition> stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }
}

extension HpEntitiesQueryObject on QueryBuilder<HpEntities, HpEntities, QFilterCondition> {}

extension HpEntitiesQueryLinks on QueryBuilder<HpEntities, HpEntities, QFilterCondition> {}

extension HpEntitiesQuerySortBy on QueryBuilder<HpEntities, HpEntities, QSortBy> {
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

extension HpEntitiesQuerySortThenBy on QueryBuilder<HpEntities, HpEntities, QSortThenBy> {
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

extension HpEntitiesQueryWhereDistinct on QueryBuilder<HpEntities, HpEntities, QDistinct> {
  QueryBuilder<HpEntities, HpEntities, QDistinct> distinctByCharacterName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName', caseSensitive: caseSensitive);
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

extension HpEntitiesQueryProperty on QueryBuilder<HpEntities, HpEntities, QQueryProperty> {
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
    statType: _StatEntitiesstatTypeValueEnumMap[reader.readByteOrNull(offsets[3])] ?? StatType.STR,
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
      return (_StatEntitiesstatTypeValueEnumMap[reader.readByteOrNull(offset)] ?? StatType.STR) as P;
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

void _statEntitiesAttach(IsarCollection<dynamic> col, Id id, StatEntities object) {}

extension StatEntitiesQueryWhereSort on QueryBuilder<StatEntities, StatEntities, QWhere> {
  QueryBuilder<StatEntities, StatEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StatEntitiesQueryWhere on QueryBuilder<StatEntities, StatEntities, QWhereClause> {
  QueryBuilder<StatEntities, StatEntities, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<StatEntities, StatEntities, QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
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

extension StatEntitiesQueryFilter on QueryBuilder<StatEntities, StatEntities, QFilterCondition> {
  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> characterNameEqualTo(
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

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> characterNameGreaterThan(
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

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> characterNameLessThan(
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

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> characterNameBetween(
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

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> characterNameStartsWith(
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

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> characterNameEndsWith(
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

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> idEqualTo(Id value) {
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

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> saveThrowMasteredEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'saveThrowMastered',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> statTypeEqualTo(StatType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'statType',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> statTypeGreaterThan(
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

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> statTypeLessThan(
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

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> statTypeBetween(
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

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> valueEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterFilterCondition> valueGreaterThan(
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

extension StatEntitiesQueryObject on QueryBuilder<StatEntities, StatEntities, QFilterCondition> {}

extension StatEntitiesQueryLinks on QueryBuilder<StatEntities, StatEntities, QFilterCondition> {}

extension StatEntitiesQuerySortBy on QueryBuilder<StatEntities, StatEntities, QSortBy> {
  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> sortByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> sortByCharacterNameDesc() {
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

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> sortBySaveThrowMastered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saveThrowMastered', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> sortBySaveThrowMasteredDesc() {
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

extension StatEntitiesQuerySortThenBy on QueryBuilder<StatEntities, StatEntities, QSortThenBy> {
  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenByCharacterNameDesc() {
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

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenBySaveThrowMastered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saveThrowMastered', Sort.asc);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QAfterSortBy> thenBySaveThrowMasteredDesc() {
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

extension StatEntitiesQueryWhereDistinct on QueryBuilder<StatEntities, StatEntities, QDistinct> {
  QueryBuilder<StatEntities, StatEntities, QDistinct> distinctByCharacterName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StatEntities, StatEntities, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<StatEntities, StatEntities, QDistinct> distinctBySaveThrowMastered() {
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

extension StatEntitiesQueryProperty on QueryBuilder<StatEntities, StatEntities, QQueryProperty> {
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

  QueryBuilder<StatEntities, bool, QQueryOperations> saveThrowMasteredProperty() {
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
    r'dices': PropertySchema(
      id: 4,
      name: r'dices',
      type: IsarType.byteList,
      enumMap: _WeaponEntitiesdicesEnumValueMap,
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
  bytesCount += 3 + object.dices.length;
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
  writer.writeByteList(offsets[4], object.dices.map((e) => e.index).toList());
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
    dices: reader.readByteList(offsets[4])?.map((e) => _WeaponEntitiesdicesValueEnumMap[e] ?? DiceType.D4).toList() ?? [],
    distance: reader.readLong(offsets[5]),
    master: reader.readBool(offsets[7]),
    name: reader.readString(offsets[8]),
    typeDamage: reader.readString(offsets[10]),
    weaponType: _WeaponEntitiesweaponTypeValueEnumMap[reader.readByteOrNull(offsets[11])] ?? WeaponType.MELEE,
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
      return (reader.readByteList(offset)?.map((e) => _WeaponEntitiesdicesValueEnumMap[e] ?? DiceType.D4).toList() ?? []) as P;
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
      return (_WeaponEntitiesweaponTypeValueEnumMap[reader.readByteOrNull(offset)] ?? WeaponType.MELEE) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _WeaponEntitiesdicesEnumValueMap = {
  'D4': 0,
  'D6': 1,
  'D8': 2,
  'D10': 3,
  'D12': 4,
  'D20': 5,
  'D100': 6,
};
const _WeaponEntitiesdicesValueEnumMap = {
  0: DiceType.D4,
  1: DiceType.D6,
  2: DiceType.D8,
  3: DiceType.D10,
  4: DiceType.D12,
  5: DiceType.D20,
  6: DiceType.D100,
};
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

void _weaponEntitiesAttach(IsarCollection<dynamic> col, Id id, WeaponEntities object) {}

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

  List<Id> putAllByNameSync(List<WeaponEntities> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'name', objects, saveLinks: saveLinks);
  }
}

extension WeaponEntitiesQueryWhereSort on QueryBuilder<WeaponEntities, WeaponEntities, QWhere> {
  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WeaponEntitiesQueryWhere on QueryBuilder<WeaponEntities, WeaponEntities, QWhereClause> {
  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhereClause> nameEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterWhereClause> nameNotEqualTo(String name) {
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

extension WeaponEntitiesQueryFilter on QueryBuilder<WeaponEntities, WeaponEntities, QFilterCondition> {
  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> bonusAttackChanceEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bonusAttackChance',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> bonusAttackChanceGreaterThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> bonusAttackChanceLessThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> bonusAttackChanceBetween(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> bonusAttackDamageEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bonusAttackDamage',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> bonusAttackDamageGreaterThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> bonusAttackDamageLessThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> bonusAttackDamageBetween(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> characterNameEqualTo(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> characterNameGreaterThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> characterNameLessThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> characterNameBetween(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> characterNameStartsWith(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> characterNameEndsWith(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> descriptionEqualTo(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> descriptionGreaterThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> descriptionLessThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> descriptionBetween(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> descriptionStartsWith(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> descriptionEndsWith(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> dicesElementEqualTo(DiceType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dices',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> dicesElementGreaterThan(
    DiceType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dices',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> dicesElementLessThan(
    DiceType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dices',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> dicesElementBetween(
    DiceType lower,
    DiceType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dices',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> dicesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dices',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> dicesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dices',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> dicesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dices',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> dicesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dices',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> dicesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dices',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> dicesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dices',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> distanceEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'distance',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> distanceGreaterThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> distanceLessThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> distanceBetween(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> masterEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'master',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> typeDamageEqualTo(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> typeDamageGreaterThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> typeDamageLessThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> typeDamageBetween(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> typeDamageStartsWith(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> typeDamageEndsWith(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> typeDamageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'typeDamage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> typeDamageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'typeDamage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> typeDamageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeDamage',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> typeDamageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'typeDamage',
        value: '',
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> weaponTypeEqualTo(WeaponType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weaponType',
        value: value,
      ));
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> weaponTypeGreaterThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> weaponTypeLessThan(
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterFilterCondition> weaponTypeBetween(
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

extension WeaponEntitiesQueryObject on QueryBuilder<WeaponEntities, WeaponEntities, QFilterCondition> {}

extension WeaponEntitiesQueryLinks on QueryBuilder<WeaponEntities, WeaponEntities, QFilterCondition> {}

extension WeaponEntitiesQuerySortBy on QueryBuilder<WeaponEntities, WeaponEntities, QSortBy> {
  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByBonusAttackChance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackChance', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByBonusAttackChanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackChance', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByBonusAttackDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackDamage', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByBonusAttackDamageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackDamage', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByMaster() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'master', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByMasterDesc() {
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByTypeDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeDamage', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByTypeDamageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeDamage', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByWeaponType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weaponType', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> sortByWeaponTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weaponType', Sort.desc);
    });
  }
}

extension WeaponEntitiesQuerySortThenBy on QueryBuilder<WeaponEntities, WeaponEntities, QSortThenBy> {
  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByBonusAttackChance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackChance', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByBonusAttackChanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackChance', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByBonusAttackDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackDamage', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByBonusAttackDamageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusAttackDamage', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByHashCodeDesc() {
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByMasterDesc() {
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

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByTypeDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeDamage', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByTypeDamageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeDamage', Sort.desc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByWeaponType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weaponType', Sort.asc);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QAfterSortBy> thenByWeaponTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weaponType', Sort.desc);
    });
  }
}

extension WeaponEntitiesQueryWhereDistinct on QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> {
  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByBonusAttackChance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bonusAttackChance');
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByBonusAttackDamage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bonusAttackDamage');
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByCharacterName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByDices() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dices');
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

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByTypeDamage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'typeDamage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeaponEntities, WeaponEntities, QDistinct> distinctByWeaponType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weaponType');
    });
  }
}

extension WeaponEntitiesQueryProperty on QueryBuilder<WeaponEntities, WeaponEntities, QQueryProperty> {
  QueryBuilder<WeaponEntities, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WeaponEntities, int, QQueryOperations> bonusAttackChanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bonusAttackChance');
    });
  }

  QueryBuilder<WeaponEntities, int, QQueryOperations> bonusAttackDamageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bonusAttackDamage');
    });
  }

  QueryBuilder<WeaponEntities, String, QQueryOperations> characterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'characterName');
    });
  }

  QueryBuilder<WeaponEntities, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<WeaponEntities, List<DiceType>, QQueryOperations> dicesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dices');
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

  QueryBuilder<WeaponEntities, WeaponType, QQueryOperations> weaponTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weaponType');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetCompetenceEntitiesCollection on Isar {
  IsarCollection<CompetenceEntities> get competenceEntities => this.collection();
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
    r'stringify': PropertySchema(
      id: 5,
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
  writer.writeBool(offsets[5], object.stringify);
}

CompetenceEntities _competenceEntitiesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CompetenceEntities(
    characterName: reader.readString(offsets[0]),
    competenceType: _CompetenceEntitiescompetenceTypeValueEnumMap[reader.readByteOrNull(offsets[1])] ?? CompetenceType.ACROBATICS,
    competenced: reader.readBool(offsets[2]),
    mastered: reader.readBool(offsets[4]),
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
      return (_CompetenceEntitiescompetenceTypeValueEnumMap[reader.readByteOrNull(offset)] ?? CompetenceType.ACROBATICS) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
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

Id _competenceEntitiesGetId(CompetenceEntities object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _competenceEntitiesGetLinks(CompetenceEntities object) {
  return [];
}

void _competenceEntitiesAttach(IsarCollection<dynamic> col, Id id, CompetenceEntities object) {}

extension CompetenceEntitiesQueryWhereSort on QueryBuilder<CompetenceEntities, CompetenceEntities, QWhere> {
  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CompetenceEntitiesQueryWhere on QueryBuilder<CompetenceEntities, CompetenceEntities, QWhereClause> {
  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterWhereClause> idBetween(
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

extension CompetenceEntitiesQueryFilter on QueryBuilder<CompetenceEntities, CompetenceEntities, QFilterCondition> {
  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> characterNameEqualTo(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> characterNameGreaterThan(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> characterNameLessThan(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> characterNameBetween(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> characterNameStartsWith(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> characterNameEndsWith(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> competenceTypeEqualTo(CompetenceType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'competenceType',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> competenceTypeGreaterThan(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> competenceTypeLessThan(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> competenceTypeBetween(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> competencedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'competenced',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> masteredEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mastered',
        value: value,
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterFilterCondition> stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }
}

extension CompetenceEntitiesQueryObject on QueryBuilder<CompetenceEntities, CompetenceEntities, QFilterCondition> {}

extension CompetenceEntitiesQueryLinks on QueryBuilder<CompetenceEntities, CompetenceEntities, QFilterCondition> {}

extension CompetenceEntitiesQuerySortBy on QueryBuilder<CompetenceEntities, CompetenceEntities, QSortBy> {
  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> sortByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> sortByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> sortByCompetenceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenceType', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> sortByCompetenceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenceType', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> sortByCompetenced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenced', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> sortByCompetencedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenced', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> sortByMastered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mastered', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> sortByMasteredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mastered', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension CompetenceEntitiesQuerySortThenBy on QueryBuilder<CompetenceEntities, CompetenceEntities, QSortThenBy> {
  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> thenByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> thenByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> thenByCompetenceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenceType', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> thenByCompetenceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenceType', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> thenByCompetenced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenced', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> thenByCompetencedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competenced', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> thenByMastered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mastered', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> thenByMasteredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mastered', Sort.desc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QAfterSortBy> thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension CompetenceEntitiesQueryWhereDistinct on QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct> {
  QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct> distinctByCharacterName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct> distinctByCompetenceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'competenceType');
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct> distinctByCompetenced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'competenced');
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct> distinctByMastered() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mastered');
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceEntities, QDistinct> distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }
}

extension CompetenceEntitiesQueryProperty on QueryBuilder<CompetenceEntities, CompetenceEntities, QQueryProperty> {
  QueryBuilder<CompetenceEntities, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CompetenceEntities, String, QQueryOperations> characterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'characterName');
    });
  }

  QueryBuilder<CompetenceEntities, CompetenceType, QQueryOperations> competenceTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'competenceType');
    });
  }

  QueryBuilder<CompetenceEntities, bool, QQueryOperations> competencedProperty() {
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

  QueryBuilder<CompetenceEntities, bool?, QQueryOperations> stringifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringify');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetItemEntitiesCollection on Isar {
  IsarCollection<ItemEntities> get itemEntities => this.collection();
}

const ItemEntitiesSchema = CollectionSchema(
  name: r'ItemEntities',
  id: 1189064404690964876,
  properties: {
    r'characterName': PropertySchema(
      id: 0,
      name: r'characterName',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'hashCode': PropertySchema(
      id: 2,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'itemType': PropertySchema(
      id: 3,
      name: r'itemType',
      type: IsarType.byte,
      enumMap: _ItemEntitiesitemTypeEnumValueMap,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'stringify': PropertySchema(
      id: 5,
      name: r'stringify',
      type: IsarType.bool,
    )
  },
  estimateSize: _itemEntitiesEstimateSize,
  serialize: _itemEntitiesSerialize,
  deserialize: _itemEntitiesDeserialize,
  deserializeProp: _itemEntitiesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _itemEntitiesGetId,
  getLinks: _itemEntitiesGetLinks,
  attach: _itemEntitiesAttach,
  version: '3.0.5',
);

int _itemEntitiesEstimateSize(
  ItemEntities object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.characterName.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _itemEntitiesSerialize(
  ItemEntities object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.characterName);
  writer.writeString(offsets[1], object.description);
  writer.writeLong(offsets[2], object.hashCode);
  writer.writeByte(offsets[3], object.itemType.index);
  writer.writeString(offsets[4], object.name);
  writer.writeBool(offsets[5], object.stringify);
}

ItemEntities _itemEntitiesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ItemEntities(
    characterName: reader.readString(offsets[0]),
    description: reader.readString(offsets[1]),
    itemType: _ItemEntitiesitemTypeValueEnumMap[reader.readByteOrNull(offsets[3])] ?? ItemType.WEAPON,
    name: reader.readString(offsets[4]),
  );
  return object;
}

P _itemEntitiesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (_ItemEntitiesitemTypeValueEnumMap[reader.readByteOrNull(offset)] ?? ItemType.WEAPON) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ItemEntitiesitemTypeEnumValueMap = {
  'WEAPON': 0,
  'ARMOR': 1,
  'TOOLS': 2,
  'FOOD': 3,
  'QUEST_ITEMS': 4,
  'OTHER': 5,
};
const _ItemEntitiesitemTypeValueEnumMap = {
  0: ItemType.WEAPON,
  1: ItemType.ARMOR,
  2: ItemType.TOOLS,
  3: ItemType.FOOD,
  4: ItemType.QUEST_ITEMS,
  5: ItemType.OTHER,
};

Id _itemEntitiesGetId(ItemEntities object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _itemEntitiesGetLinks(ItemEntities object) {
  return [];
}

void _itemEntitiesAttach(IsarCollection<dynamic> col, Id id, ItemEntities object) {}

extension ItemEntitiesQueryWhereSort on QueryBuilder<ItemEntities, ItemEntities, QWhere> {
  QueryBuilder<ItemEntities, ItemEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ItemEntitiesQueryWhere on QueryBuilder<ItemEntities, ItemEntities, QWhereClause> {
  QueryBuilder<ItemEntities, ItemEntities, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterWhereClause> idBetween(
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

extension ItemEntitiesQueryFilter on QueryBuilder<ItemEntities, ItemEntities, QFilterCondition> {
  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> characterNameEqualTo(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> characterNameGreaterThan(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> characterNameLessThan(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> characterNameBetween(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> characterNameStartsWith(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> characterNameEndsWith(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> descriptionEqualTo(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> descriptionGreaterThan(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> descriptionLessThan(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> descriptionBetween(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> descriptionStartsWith(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> descriptionEndsWith(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> itemTypeEqualTo(ItemType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemType',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> itemTypeGreaterThan(
    ItemType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemType',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> itemTypeLessThan(
    ItemType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemType',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> itemTypeBetween(
    ItemType lower,
    ItemType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterFilterCondition> stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }
}

extension ItemEntitiesQueryObject on QueryBuilder<ItemEntities, ItemEntities, QFilterCondition> {}

extension ItemEntitiesQueryLinks on QueryBuilder<ItemEntities, ItemEntities, QFilterCondition> {}

extension ItemEntitiesQuerySortBy on QueryBuilder<ItemEntities, ItemEntities, QSortBy> {
  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> sortByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> sortByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> sortByItemType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemType', Sort.asc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> sortByItemTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemType', Sort.desc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension ItemEntitiesQuerySortThenBy on QueryBuilder<ItemEntities, ItemEntities, QSortThenBy> {
  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> thenByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> thenByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> thenByItemType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemType', Sort.asc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> thenByItemTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemType', Sort.desc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QAfterSortBy> thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension ItemEntitiesQueryWhereDistinct on QueryBuilder<ItemEntities, ItemEntities, QDistinct> {
  QueryBuilder<ItemEntities, ItemEntities, QDistinct> distinctByCharacterName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QDistinct> distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QDistinct> distinctByItemType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemType');
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QDistinct> distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ItemEntities, ItemEntities, QDistinct> distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }
}

extension ItemEntitiesQueryProperty on QueryBuilder<ItemEntities, ItemEntities, QQueryProperty> {
  QueryBuilder<ItemEntities, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ItemEntities, String, QQueryOperations> characterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'characterName');
    });
  }

  QueryBuilder<ItemEntities, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<ItemEntities, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<ItemEntities, ItemType, QQueryOperations> itemTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemType');
    });
  }

  QueryBuilder<ItemEntities, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<ItemEntities, bool?, QQueryOperations> stringifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringify');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetGameClassEntitiesCollection on Isar {
  IsarCollection<GameClassEntities> get gameClassEntities => this.collection();
}

const GameClassEntitiesSchema = CollectionSchema(
  name: r'GameClassEntities',
  id: 6043076913278532033,
  properties: {
    r'characterName': PropertySchema(
      id: 0,
      name: r'characterName',
      type: IsarType.string,
    ),
    r'classLevel': PropertySchema(
      id: 1,
      name: r'classLevel',
      type: IsarType.long,
    ),
    r'gameClassType': PropertySchema(
      id: 2,
      name: r'gameClassType',
      type: IsarType.byte,
      enumMap: _GameClassEntitiesgameClassTypeEnumValueMap,
    ),
    r'hashCode': PropertySchema(
      id: 3,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'hitDices': PropertySchema(
      id: 4,
      name: r'hitDices',
      type: IsarType.byteList,
      enumMap: _GameClassEntitieshitDicesEnumValueMap,
    ),
    r'stringify': PropertySchema(
      id: 5,
      name: r'stringify',
      type: IsarType.bool,
    )
  },
  estimateSize: _gameClassEntitiesEstimateSize,
  serialize: _gameClassEntitiesSerialize,
  deserialize: _gameClassEntitiesDeserialize,
  deserializeProp: _gameClassEntitiesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _gameClassEntitiesGetId,
  getLinks: _gameClassEntitiesGetLinks,
  attach: _gameClassEntitiesAttach,
  version: '3.0.5',
);

int _gameClassEntitiesEstimateSize(
  GameClassEntities object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.characterName.length * 3;
  bytesCount += 3 + object.hitDices.length;
  return bytesCount;
}

void _gameClassEntitiesSerialize(
  GameClassEntities object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.characterName);
  writer.writeLong(offsets[1], object.classLevel);
  writer.writeByte(offsets[2], object.gameClassType.index);
  writer.writeLong(offsets[3], object.hashCode);
  writer.writeByteList(offsets[4], object.hitDices.map((e) => e.index).toList());
  writer.writeBool(offsets[5], object.stringify);
}

GameClassEntities _gameClassEntitiesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GameClassEntities(
    characterName: reader.readString(offsets[0]),
    classLevel: reader.readLong(offsets[1]),
    gameClassType: _GameClassEntitiesgameClassTypeValueEnumMap[reader.readByteOrNull(offsets[2])] ?? GameClassType.ARTIFICIER,
    hitDices: reader.readByteList(offsets[4])?.map((e) => _GameClassEntitieshitDicesValueEnumMap[e] ?? DiceType.D4).toList() ?? [],
  );
  return object;
}

P _gameClassEntitiesDeserializeProp<P>(
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
      return (_GameClassEntitiesgameClassTypeValueEnumMap[reader.readByteOrNull(offset)] ?? GameClassType.ARTIFICIER) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readByteList(offset)?.map((e) => _GameClassEntitieshitDicesValueEnumMap[e] ?? DiceType.D4).toList() ?? []) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _GameClassEntitiesgameClassTypeEnumValueMap = {
  'ARTIFICIER': 0,
  'BARBARIAN': 1,
  'BARD': 2,
  'CLERIC': 3,
  'DRUID': 4,
  'FIGHTER': 5,
  'MONK': 6,
  'PALADIN': 7,
  'RANGER': 8,
  'ROGUE': 9,
  'SORCERER': 10,
  'WARLOCK': 11,
  'WIZARD': 12,
};
const _GameClassEntitiesgameClassTypeValueEnumMap = {
  0: GameClassType.ARTIFICIER,
  1: GameClassType.BARBARIAN,
  2: GameClassType.BARD,
  3: GameClassType.CLERIC,
  4: GameClassType.DRUID,
  5: GameClassType.FIGHTER,
  6: GameClassType.MONK,
  7: GameClassType.PALADIN,
  8: GameClassType.RANGER,
  9: GameClassType.ROGUE,
  10: GameClassType.SORCERER,
  11: GameClassType.WARLOCK,
  12: GameClassType.WIZARD,
};
const _GameClassEntitieshitDicesEnumValueMap = {
  'D4': 0,
  'D6': 1,
  'D8': 2,
  'D10': 3,
  'D12': 4,
  'D20': 5,
  'D100': 6,
};
const _GameClassEntitieshitDicesValueEnumMap = {
  0: DiceType.D4,
  1: DiceType.D6,
  2: DiceType.D8,
  3: DiceType.D10,
  4: DiceType.D12,
  5: DiceType.D20,
  6: DiceType.D100,
};

Id _gameClassEntitiesGetId(GameClassEntities object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _gameClassEntitiesGetLinks(GameClassEntities object) {
  return [];
}

void _gameClassEntitiesAttach(IsarCollection<dynamic> col, Id id, GameClassEntities object) {}

extension GameClassEntitiesQueryWhereSort on QueryBuilder<GameClassEntities, GameClassEntities, QWhere> {
  QueryBuilder<GameClassEntities, GameClassEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GameClassEntitiesQueryWhere on QueryBuilder<GameClassEntities, GameClassEntities, QWhereClause> {
  QueryBuilder<GameClassEntities, GameClassEntities, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterWhereClause> idBetween(
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

extension GameClassEntitiesQueryFilter on QueryBuilder<GameClassEntities, GameClassEntities, QFilterCondition> {
  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> characterNameEqualTo(
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

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> characterNameGreaterThan(
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

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> characterNameLessThan(
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

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> characterNameBetween(
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

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> characterNameStartsWith(
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

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> characterNameEndsWith(
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

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> classLevelEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'classLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> classLevelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'classLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> classLevelLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'classLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> classLevelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'classLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> gameClassTypeEqualTo(GameClassType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gameClassType',
        value: value,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> gameClassTypeGreaterThan(
    GameClassType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gameClassType',
        value: value,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> gameClassTypeLessThan(
    GameClassType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gameClassType',
        value: value,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> gameClassTypeBetween(
    GameClassType lower,
    GameClassType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gameClassType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> hitDicesElementEqualTo(DiceType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hitDices',
        value: value,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> hitDicesElementGreaterThan(
    DiceType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hitDices',
        value: value,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> hitDicesElementLessThan(
    DiceType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hitDices',
        value: value,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> hitDicesElementBetween(
    DiceType lower,
    DiceType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hitDices',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> hitDicesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hitDices',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> hitDicesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hitDices',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> hitDicesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hitDices',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> hitDicesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hitDices',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> hitDicesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hitDices',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> hitDicesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hitDices',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> idBetween(
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

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterFilterCondition> stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }
}

extension GameClassEntitiesQueryObject on QueryBuilder<GameClassEntities, GameClassEntities, QFilterCondition> {}

extension GameClassEntitiesQueryLinks on QueryBuilder<GameClassEntities, GameClassEntities, QFilterCondition> {}

extension GameClassEntitiesQuerySortBy on QueryBuilder<GameClassEntities, GameClassEntities, QSortBy> {
  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> sortByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> sortByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> sortByClassLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classLevel', Sort.asc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> sortByClassLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classLevel', Sort.desc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> sortByGameClassType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameClassType', Sort.asc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> sortByGameClassTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameClassType', Sort.desc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension GameClassEntitiesQuerySortThenBy on QueryBuilder<GameClassEntities, GameClassEntities, QSortThenBy> {
  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> thenByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> thenByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> thenByClassLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classLevel', Sort.asc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> thenByClassLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classLevel', Sort.desc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> thenByGameClassType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameClassType', Sort.asc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> thenByGameClassTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameClassType', Sort.desc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QAfterSortBy> thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension GameClassEntitiesQueryWhereDistinct on QueryBuilder<GameClassEntities, GameClassEntities, QDistinct> {
  QueryBuilder<GameClassEntities, GameClassEntities, QDistinct> distinctByCharacterName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QDistinct> distinctByClassLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'classLevel');
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QDistinct> distinctByGameClassType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gameClassType');
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QDistinct> distinctByHitDices() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hitDices');
    });
  }

  QueryBuilder<GameClassEntities, GameClassEntities, QDistinct> distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }
}

extension GameClassEntitiesQueryProperty on QueryBuilder<GameClassEntities, GameClassEntities, QQueryProperty> {
  QueryBuilder<GameClassEntities, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GameClassEntities, String, QQueryOperations> characterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'characterName');
    });
  }

  QueryBuilder<GameClassEntities, int, QQueryOperations> classLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'classLevel');
    });
  }

  QueryBuilder<GameClassEntities, GameClassType, QQueryOperations> gameClassTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gameClassType');
    });
  }

  QueryBuilder<GameClassEntities, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<GameClassEntities, List<DiceType>, QQueryOperations> hitDicesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hitDices');
    });
  }

  QueryBuilder<GameClassEntities, bool?, QQueryOperations> stringifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringify');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetSkillEntitiesCollection on Isar {
  IsarCollection<SkillEntities> get skillEntities => this.collection();
}

const SkillEntitiesSchema = CollectionSchema(
  name: r'SkillEntities',
  id: -4963646894618939512,
  properties: {
    r'characterName': PropertySchema(
      id: 0,
      name: r'characterName',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
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
    r'stringify': PropertySchema(
      id: 4,
      name: r'stringify',
      type: IsarType.bool,
    )
  },
  estimateSize: _skillEntitiesEstimateSize,
  serialize: _skillEntitiesSerialize,
  deserialize: _skillEntitiesDeserialize,
  deserializeProp: _skillEntitiesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _skillEntitiesGetId,
  getLinks: _skillEntitiesGetLinks,
  attach: _skillEntitiesAttach,
  version: '3.0.5',
);

int _skillEntitiesEstimateSize(
  SkillEntities object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.characterName.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _skillEntitiesSerialize(
  SkillEntities object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.characterName);
  writer.writeString(offsets[1], object.description);
  writer.writeLong(offsets[2], object.hashCode);
  writer.writeString(offsets[3], object.name);
  writer.writeBool(offsets[4], object.stringify);
}

SkillEntities _skillEntitiesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SkillEntities(
    characterName: reader.readString(offsets[0]),
    description: reader.readString(offsets[1]),
    name: reader.readString(offsets[3]),
  );
  return object;
}

P _skillEntitiesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _skillEntitiesGetId(SkillEntities object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _skillEntitiesGetLinks(SkillEntities object) {
  return [];
}

void _skillEntitiesAttach(IsarCollection<dynamic> col, Id id, SkillEntities object) {}

extension SkillEntitiesQueryWhereSort on QueryBuilder<SkillEntities, SkillEntities, QWhere> {
  QueryBuilder<SkillEntities, SkillEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SkillEntitiesQueryWhere on QueryBuilder<SkillEntities, SkillEntities, QWhereClause> {
  QueryBuilder<SkillEntities, SkillEntities, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterWhereClause> idBetween(
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

extension SkillEntitiesQueryFilter on QueryBuilder<SkillEntities, SkillEntities, QFilterCondition> {
  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> characterNameEqualTo(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> characterNameGreaterThan(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> characterNameLessThan(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> characterNameBetween(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> characterNameStartsWith(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> characterNameEndsWith(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> descriptionEqualTo(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> descriptionGreaterThan(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> descriptionLessThan(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> descriptionBetween(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> descriptionStartsWith(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> descriptionEndsWith(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterFilterCondition> stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }
}

extension SkillEntitiesQueryObject on QueryBuilder<SkillEntities, SkillEntities, QFilterCondition> {}

extension SkillEntitiesQueryLinks on QueryBuilder<SkillEntities, SkillEntities, QFilterCondition> {}

extension SkillEntitiesQuerySortBy on QueryBuilder<SkillEntities, SkillEntities, QSortBy> {
  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> sortByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> sortByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension SkillEntitiesQuerySortThenBy on QueryBuilder<SkillEntities, SkillEntities, QSortThenBy> {
  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> thenByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> thenByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QAfterSortBy> thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension SkillEntitiesQueryWhereDistinct on QueryBuilder<SkillEntities, SkillEntities, QDistinct> {
  QueryBuilder<SkillEntities, SkillEntities, QDistinct> distinctByCharacterName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QDistinct> distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QDistinct> distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SkillEntities, SkillEntities, QDistinct> distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }
}

extension SkillEntitiesQueryProperty on QueryBuilder<SkillEntities, SkillEntities, QQueryProperty> {
  QueryBuilder<SkillEntities, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SkillEntities, String, QQueryOperations> characterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'characterName');
    });
  }

  QueryBuilder<SkillEntities, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<SkillEntities, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<SkillEntities, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<SkillEntities, bool?, QQueryOperations> stringifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringify');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetSpellEntitiesCollection on Isar {
  IsarCollection<SpellEntities> get spellEntities => this.collection();
}

const SpellEntitiesSchema = CollectionSchema(
  name: r'SpellEntities',
  id: 5697435016509523205,
  properties: {
    r'castTime': PropertySchema(
      id: 0,
      name: r'castTime',
      type: IsarType.string,
    ),
    r'characterName': PropertySchema(
      id: 1,
      name: r'characterName',
      type: IsarType.string,
    ),
    r'components': PropertySchema(
      id: 2,
      name: r'components',
      type: IsarType.byteList,
      enumMap: _SpellEntitiescomponentsEnumValueMap,
    ),
    r'description': PropertySchema(
      id: 3,
      name: r'description',
      type: IsarType.string,
    ),
    r'distance': PropertySchema(
      id: 4,
      name: r'distance',
      type: IsarType.long,
    ),
    r'durationTime': PropertySchema(
      id: 5,
      name: r'durationTime',
      type: IsarType.string,
    ),
    r'hashCode': PropertySchema(
      id: 6,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.string,
    ),
    r'prepared': PropertySchema(
      id: 8,
      name: r'prepared',
      type: IsarType.bool,
    ),
    r'schoolType': PropertySchema(
      id: 9,
      name: r'schoolType',
      type: IsarType.byte,
      enumMap: _SpellEntitiesschoolTypeEnumValueMap,
    ),
    r'spellLevelType': PropertySchema(
      id: 10,
      name: r'spellLevelType',
      type: IsarType.byte,
      enumMap: _SpellEntitiesspellLevelTypeEnumValueMap,
    ),
    r'stringify': PropertySchema(
      id: 11,
      name: r'stringify',
      type: IsarType.bool,
    )
  },
  estimateSize: _spellEntitiesEstimateSize,
  serialize: _spellEntitiesSerialize,
  deserialize: _spellEntitiesDeserialize,
  deserializeProp: _spellEntitiesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _spellEntitiesGetId,
  getLinks: _spellEntitiesGetLinks,
  attach: _spellEntitiesAttach,
  version: '3.0.5',
);

int _spellEntitiesEstimateSize(
  SpellEntities object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.castTime.length * 3;
  bytesCount += 3 + object.characterName.length * 3;
  bytesCount += 3 + object.components.length;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.durationTime.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _spellEntitiesSerialize(
  SpellEntities object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.castTime);
  writer.writeString(offsets[1], object.characterName);
  writer.writeByteList(offsets[2], object.components.map((e) => e.index).toList());
  writer.writeString(offsets[3], object.description);
  writer.writeLong(offsets[4], object.distance);
  writer.writeString(offsets[5], object.durationTime);
  writer.writeLong(offsets[6], object.hashCode);
  writer.writeString(offsets[7], object.name);
  writer.writeBool(offsets[8], object.prepared);
  writer.writeByte(offsets[9], object.schoolType.index);
  writer.writeByte(offsets[10], object.spellLevelType.index);
  writer.writeBool(offsets[11], object.stringify);
}

SpellEntities _spellEntitiesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SpellEntities(
    castTime: reader.readString(offsets[0]),
    characterName: reader.readString(offsets[1]),
    components: reader.readByteList(offsets[2])?.map((e) => _SpellEntitiescomponentsValueEnumMap[e] ?? Component.V).toList() ?? [],
    description: reader.readString(offsets[3]),
    distance: reader.readLong(offsets[4]),
    durationTime: reader.readString(offsets[5]),
    name: reader.readString(offsets[7]),
    prepared: reader.readBool(offsets[8]),
    schoolType: _SpellEntitiesschoolTypeValueEnumMap[reader.readByteOrNull(offsets[9])] ?? SchoolType.ABJURATION,
    spellLevelType: _SpellEntitiesspellLevelTypeValueEnumMap[reader.readByteOrNull(offsets[10])] ?? SpellLevelType.CHARM,
  );
  return object;
}

P _spellEntitiesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readByteList(offset)?.map((e) => _SpellEntitiescomponentsValueEnumMap[e] ?? Component.V).toList() ?? []) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (_SpellEntitiesschoolTypeValueEnumMap[reader.readByteOrNull(offset)] ?? SchoolType.ABJURATION) as P;
    case 10:
      return (_SpellEntitiesspellLevelTypeValueEnumMap[reader.readByteOrNull(offset)] ?? SpellLevelType.CHARM) as P;
    case 11:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SpellEntitiescomponentsEnumValueMap = {
  'V': 0,
  'S': 1,
  'M': 2,
};
const _SpellEntitiescomponentsValueEnumMap = {
  0: Component.V,
  1: Component.S,
  2: Component.M,
};
const _SpellEntitiesschoolTypeEnumValueMap = {
  'ABJURATION': 0,
  'ALTERATION': 1,
  'CONJURATION': 2,
  'DIVINATION': 3,
  'ENCHANTMENT': 4,
  'ILLUSION': 5,
  'INVOCATION': 6,
  'NECROMANCY': 7,
};
const _SpellEntitiesschoolTypeValueEnumMap = {
  0: SchoolType.ABJURATION,
  1: SchoolType.ALTERATION,
  2: SchoolType.CONJURATION,
  3: SchoolType.DIVINATION,
  4: SchoolType.ENCHANTMENT,
  5: SchoolType.ILLUSION,
  6: SchoolType.INVOCATION,
  7: SchoolType.NECROMANCY,
};
const _SpellEntitiesspellLevelTypeEnumValueMap = {
  'CHARM': 0,
  'LEVEL_1': 1,
  'LEVEL_2': 2,
  'LEVEL_3': 3,
  'LEVEL_4': 4,
  'LEVEL_5': 5,
  'LEVEL_6': 6,
  'LEVEL_7': 7,
  'LEVEL_8': 8,
  'LEVEL_9': 9,
  'LEVEL_10': 10,
};
const _SpellEntitiesspellLevelTypeValueEnumMap = {
  0: SpellLevelType.CHARM,
  1: SpellLevelType.LEVEL_1,
  2: SpellLevelType.LEVEL_2,
  3: SpellLevelType.LEVEL_3,
  4: SpellLevelType.LEVEL_4,
  5: SpellLevelType.LEVEL_5,
  6: SpellLevelType.LEVEL_6,
  7: SpellLevelType.LEVEL_7,
  8: SpellLevelType.LEVEL_8,
  9: SpellLevelType.LEVEL_9,
  10: SpellLevelType.LEVEL_10,
};

Id _spellEntitiesGetId(SpellEntities object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _spellEntitiesGetLinks(SpellEntities object) {
  return [];
}

void _spellEntitiesAttach(IsarCollection<dynamic> col, Id id, SpellEntities object) {}

extension SpellEntitiesQueryWhereSort on QueryBuilder<SpellEntities, SpellEntities, QWhere> {
  QueryBuilder<SpellEntities, SpellEntities, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SpellEntitiesQueryWhere on QueryBuilder<SpellEntities, SpellEntities, QWhereClause> {
  QueryBuilder<SpellEntities, SpellEntities, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterWhereClause> idBetween(
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

extension SpellEntitiesQueryFilter on QueryBuilder<SpellEntities, SpellEntities, QFilterCondition> {
  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> castTimeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'castTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> castTimeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'castTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> castTimeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'castTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> castTimeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'castTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> castTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'castTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> castTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'castTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> castTimeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'castTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> castTimeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'castTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> castTimeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'castTime',
        value: '',
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> castTimeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'castTime',
        value: '',
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> characterNameEqualTo(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> characterNameGreaterThan(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> characterNameLessThan(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> characterNameBetween(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> characterNameStartsWith(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> characterNameEndsWith(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> componentsElementEqualTo(Component value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'components',
        value: value,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> componentsElementGreaterThan(
    Component value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'components',
        value: value,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> componentsElementLessThan(
    Component value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'components',
        value: value,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> componentsElementBetween(
    Component lower,
    Component upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'components',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> componentsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'components',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> componentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'components',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> componentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'components',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> componentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'components',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> componentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'components',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> componentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'components',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> descriptionEqualTo(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> descriptionGreaterThan(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> descriptionLessThan(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> descriptionBetween(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> descriptionStartsWith(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> descriptionEndsWith(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> distanceEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'distance',
        value: value,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> distanceGreaterThan(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> distanceLessThan(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> distanceBetween(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> durationTimeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'durationTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> durationTimeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'durationTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> durationTimeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'durationTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> durationTimeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'durationTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> durationTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'durationTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> durationTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'durationTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> durationTimeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'durationTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> durationTimeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'durationTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> durationTimeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'durationTime',
        value: '',
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> durationTimeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'durationTime',
        value: '',
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> preparedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prepared',
        value: value,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> schoolTypeEqualTo(SchoolType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'schoolType',
        value: value,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> schoolTypeGreaterThan(
    SchoolType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'schoolType',
        value: value,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> schoolTypeLessThan(
    SchoolType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'schoolType',
        value: value,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> schoolTypeBetween(
    SchoolType lower,
    SchoolType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'schoolType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> spellLevelTypeEqualTo(SpellLevelType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spellLevelType',
        value: value,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> spellLevelTypeGreaterThan(
    SpellLevelType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'spellLevelType',
        value: value,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> spellLevelTypeLessThan(
    SpellLevelType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'spellLevelType',
        value: value,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> spellLevelTypeBetween(
    SpellLevelType lower,
    SpellLevelType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'spellLevelType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> stringifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> stringifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringify',
      ));
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterFilterCondition> stringifyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }
}

extension SpellEntitiesQueryObject on QueryBuilder<SpellEntities, SpellEntities, QFilterCondition> {}

extension SpellEntitiesQueryLinks on QueryBuilder<SpellEntities, SpellEntities, QFilterCondition> {}

extension SpellEntitiesQuerySortBy on QueryBuilder<SpellEntities, SpellEntities, QSortBy> {
  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByCastTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'castTime', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByCastTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'castTime', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByDurationTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationTime', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByDurationTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationTime', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByPrepared() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prepared', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByPreparedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prepared', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortBySchoolType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolType', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortBySchoolTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolType', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortBySpellLevelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spellLevelType', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortBySpellLevelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spellLevelType', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension SpellEntitiesQuerySortThenBy on QueryBuilder<SpellEntities, SpellEntities, QSortThenBy> {
  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByCastTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'castTime', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByCastTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'castTime', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByDurationTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationTime', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByDurationTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationTime', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByPrepared() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prepared', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByPreparedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prepared', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenBySchoolType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolType', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenBySchoolTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolType', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenBySpellLevelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spellLevelType', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenBySpellLevelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spellLevelType', Sort.desc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QAfterSortBy> thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension SpellEntitiesQueryWhereDistinct on QueryBuilder<SpellEntities, SpellEntities, QDistinct> {
  QueryBuilder<SpellEntities, SpellEntities, QDistinct> distinctByCastTime({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'castTime', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QDistinct> distinctByCharacterName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QDistinct> distinctByComponents() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'components');
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QDistinct> distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QDistinct> distinctByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'distance');
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QDistinct> distinctByDurationTime({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'durationTime', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QDistinct> distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QDistinct> distinctByPrepared() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prepared');
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QDistinct> distinctBySchoolType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'schoolType');
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QDistinct> distinctBySpellLevelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'spellLevelType');
    });
  }

  QueryBuilder<SpellEntities, SpellEntities, QDistinct> distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }
}

extension SpellEntitiesQueryProperty on QueryBuilder<SpellEntities, SpellEntities, QQueryProperty> {
  QueryBuilder<SpellEntities, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SpellEntities, String, QQueryOperations> castTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'castTime');
    });
  }

  QueryBuilder<SpellEntities, String, QQueryOperations> characterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'characterName');
    });
  }

  QueryBuilder<SpellEntities, List<Component>, QQueryOperations> componentsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'components');
    });
  }

  QueryBuilder<SpellEntities, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<SpellEntities, int, QQueryOperations> distanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'distance');
    });
  }

  QueryBuilder<SpellEntities, String, QQueryOperations> durationTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'durationTime');
    });
  }

  QueryBuilder<SpellEntities, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<SpellEntities, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<SpellEntities, bool, QQueryOperations> preparedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prepared');
    });
  }

  QueryBuilder<SpellEntities, SchoolType, QQueryOperations> schoolTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'schoolType');
    });
  }

  QueryBuilder<SpellEntities, SpellLevelType, QQueryOperations> spellLevelTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'spellLevelType');
    });
  }

  QueryBuilder<SpellEntities, bool?, QQueryOperations> stringifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringify');
    });
  }
}
