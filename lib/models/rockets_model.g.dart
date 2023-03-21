// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rockets_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetRocketsModelCollection on Isar {
  IsarCollection<RocketsModel> get rocketsModels => this.collection();
}

const RocketsModelSchema = CollectionSchema(
  name: r'RocketsModel',
  id: 5997248110194117718,
  properties: {
    r'country': PropertySchema(
      id: 0,
      name: r'country',
      type: IsarType.string,
    ),
    r'engines': PropertySchema(
      id: 1,
      name: r'engines',
      type: IsarType.object,
      target: r'Engines',
    ),
    r'flickrImages': PropertySchema(
      id: 2,
      name: r'flickrImages',
      type: IsarType.stringList,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'rocketId': PropertySchema(
      id: 4,
      name: r'rocketId',
      type: IsarType.string,
    )
  },
  estimateSize: _rocketsModelEstimateSize,
  serialize: _rocketsModelSerialize,
  deserialize: _rocketsModelDeserialize,
  deserializeProp: _rocketsModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'Engines': EnginesSchema},
  getId: _rocketsModelGetId,
  getLinks: _rocketsModelGetLinks,
  attach: _rocketsModelAttach,
  version: '3.0.5',
);

int _rocketsModelEstimateSize(
  RocketsModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.country;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.engines;
    if (value != null) {
      bytesCount += 3 +
          EnginesSchema.estimateSize(value, allOffsets[Engines]!, allOffsets);
    }
  }
  {
    final list = object.flickrImages;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.rocketId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _rocketsModelSerialize(
  RocketsModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.country);
  writer.writeObject<Engines>(
    offsets[1],
    allOffsets,
    EnginesSchema.serialize,
    object.engines,
  );
  writer.writeStringList(offsets[2], object.flickrImages);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.rocketId);
}

RocketsModel _rocketsModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RocketsModel(
    country: reader.readStringOrNull(offsets[0]),
    engines: reader.readObjectOrNull<Engines>(
      offsets[1],
      EnginesSchema.deserialize,
      allOffsets,
    ),
    flickrImages: reader.readStringList(offsets[2]),
    name: reader.readStringOrNull(offsets[3]),
    rocketId: reader.readStringOrNull(offsets[4]),
  );
  object.id = id;
  return object;
}

P _rocketsModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<Engines>(
        offset,
        EnginesSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _rocketsModelGetId(RocketsModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _rocketsModelGetLinks(RocketsModel object) {
  return [];
}

void _rocketsModelAttach(
    IsarCollection<dynamic> col, Id id, RocketsModel object) {
  object.id = id;
}

extension RocketsModelQueryWhereSort
    on QueryBuilder<RocketsModel, RocketsModel, QWhere> {
  QueryBuilder<RocketsModel, RocketsModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RocketsModelQueryWhere
    on QueryBuilder<RocketsModel, RocketsModel, QWhereClause> {
  QueryBuilder<RocketsModel, RocketsModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<RocketsModel, RocketsModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterWhereClause> idBetween(
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

extension RocketsModelQueryFilter
    on QueryBuilder<RocketsModel, RocketsModel, QFilterCondition> {
  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      countryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      countryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      countryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      countryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      countryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      countryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'country',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      countryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      countryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      countryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      countryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'country',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      countryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      countryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      enginesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'engines',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      enginesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'engines',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flickrImages',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flickrImages',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flickrImages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'flickrImages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'flickrImages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'flickrImages',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'flickrImages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'flickrImages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'flickrImages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'flickrImages',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flickrImages',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'flickrImages',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flickrImages',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flickrImages',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flickrImages',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flickrImages',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flickrImages',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      flickrImagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flickrImages',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition> nameEqualTo(
    String? value, {
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

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
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

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition> nameLessThan(
    String? value, {
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

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      rocketIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rocketId',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      rocketIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rocketId',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      rocketIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rocketId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      rocketIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rocketId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      rocketIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rocketId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      rocketIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rocketId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      rocketIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rocketId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      rocketIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rocketId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      rocketIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rocketId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      rocketIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rocketId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      rocketIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rocketId',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition>
      rocketIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rocketId',
        value: '',
      ));
    });
  }
}

extension RocketsModelQueryObject
    on QueryBuilder<RocketsModel, RocketsModel, QFilterCondition> {
  QueryBuilder<RocketsModel, RocketsModel, QAfterFilterCondition> engines(
      FilterQuery<Engines> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'engines');
    });
  }
}

extension RocketsModelQueryLinks
    on QueryBuilder<RocketsModel, RocketsModel, QFilterCondition> {}

extension RocketsModelQuerySortBy
    on QueryBuilder<RocketsModel, RocketsModel, QSortBy> {
  QueryBuilder<RocketsModel, RocketsModel, QAfterSortBy> sortByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterSortBy> sortByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterSortBy> sortByRocketId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rocketId', Sort.asc);
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterSortBy> sortByRocketIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rocketId', Sort.desc);
    });
  }
}

extension RocketsModelQuerySortThenBy
    on QueryBuilder<RocketsModel, RocketsModel, QSortThenBy> {
  QueryBuilder<RocketsModel, RocketsModel, QAfterSortBy> thenByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterSortBy> thenByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterSortBy> thenByRocketId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rocketId', Sort.asc);
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QAfterSortBy> thenByRocketIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rocketId', Sort.desc);
    });
  }
}

extension RocketsModelQueryWhereDistinct
    on QueryBuilder<RocketsModel, RocketsModel, QDistinct> {
  QueryBuilder<RocketsModel, RocketsModel, QDistinct> distinctByCountry(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'country', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QDistinct> distinctByFlickrImages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flickrImages');
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RocketsModel, RocketsModel, QDistinct> distinctByRocketId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rocketId', caseSensitive: caseSensitive);
    });
  }
}

extension RocketsModelQueryProperty
    on QueryBuilder<RocketsModel, RocketsModel, QQueryProperty> {
  QueryBuilder<RocketsModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RocketsModel, String?, QQueryOperations> countryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'country');
    });
  }

  QueryBuilder<RocketsModel, Engines?, QQueryOperations> enginesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'engines');
    });
  }

  QueryBuilder<RocketsModel, List<String>?, QQueryOperations>
      flickrImagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flickrImages');
    });
  }

  QueryBuilder<RocketsModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<RocketsModel, String?, QQueryOperations> rocketIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rocketId');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const EnginesSchema = Schema(
  name: r'Engines',
  id: 5114398148642244412,
  properties: {
    r'number': PropertySchema(
      id: 0,
      name: r'number',
      type: IsarType.long,
    )
  },
  estimateSize: _enginesEstimateSize,
  serialize: _enginesSerialize,
  deserialize: _enginesDeserialize,
  deserializeProp: _enginesDeserializeProp,
);

int _enginesEstimateSize(
  Engines object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _enginesSerialize(
  Engines object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.number);
}

Engines _enginesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Engines(
    number: reader.readLongOrNull(offsets[0]),
  );
  return object;
}

P _enginesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension EnginesQueryFilter
    on QueryBuilder<Engines, Engines, QFilterCondition> {
  QueryBuilder<Engines, Engines, QAfterFilterCondition> numberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'number',
      ));
    });
  }

  QueryBuilder<Engines, Engines, QAfterFilterCondition> numberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'number',
      ));
    });
  }

  QueryBuilder<Engines, Engines, QAfterFilterCondition> numberEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<Engines, Engines, QAfterFilterCondition> numberGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<Engines, Engines, QAfterFilterCondition> numberLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<Engines, Engines, QAfterFilterCondition> numberBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EnginesQueryObject
    on QueryBuilder<Engines, Engines, QFilterCondition> {}
