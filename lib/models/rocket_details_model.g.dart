// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket_details_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetRocketDetailsModelCollection on Isar {
  IsarCollection<RocketDetailsModel> get rocketDetailsModels =>
      this.collection();
}

const RocketDetailsModelSchema = CollectionSchema(
  name: r'RocketDetailsModel',
  id: 4026244255208655754,
  properties: {
    r'active': PropertySchema(
      id: 0,
      name: r'active',
      type: IsarType.bool,
    ),
    r'company': PropertySchema(
      id: 1,
      name: r'company',
      type: IsarType.string,
    ),
    r'costPerLaunch': PropertySchema(
      id: 2,
      name: r'costPerLaunch',
      type: IsarType.long,
    ),
    r'country': PropertySchema(
      id: 3,
      name: r'country',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 4,
      name: r'description',
      type: IsarType.string,
    ),
    r'diameter': PropertySchema(
      id: 5,
      name: r'diameter',
      type: IsarType.object,
      target: r'Diameter',
    ),
    r'flickrImages': PropertySchema(
      id: 6,
      name: r'flickrImages',
      type: IsarType.stringList,
    ),
    r'height': PropertySchema(
      id: 7,
      name: r'height',
      type: IsarType.object,
      target: r'Diameter',
    ),
    r'name': PropertySchema(
      id: 8,
      name: r'name',
      type: IsarType.string,
    ),
    r'rocketId': PropertySchema(
      id: 9,
      name: r'rocketId',
      type: IsarType.string,
    ),
    r'successRatePct': PropertySchema(
      id: 10,
      name: r'successRatePct',
      type: IsarType.long,
    ),
    r'wikipedia': PropertySchema(
      id: 11,
      name: r'wikipedia',
      type: IsarType.string,
    )
  },
  estimateSize: _rocketDetailsModelEstimateSize,
  serialize: _rocketDetailsModelSerialize,
  deserialize: _rocketDetailsModelDeserialize,
  deserializeProp: _rocketDetailsModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'Diameter': DiameterSchema},
  getId: _rocketDetailsModelGetId,
  getLinks: _rocketDetailsModelGetLinks,
  attach: _rocketDetailsModelAttach,
  version: '3.0.5',
);

int _rocketDetailsModelEstimateSize(
  RocketDetailsModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.company;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.country;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.diameter;
    if (value != null) {
      bytesCount += 3 +
          DiameterSchema.estimateSize(value, allOffsets[Diameter]!, allOffsets);
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
    final value = object.height;
    if (value != null) {
      bytesCount += 3 +
          DiameterSchema.estimateSize(value, allOffsets[Diameter]!, allOffsets);
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
  {
    final value = object.wikipedia;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _rocketDetailsModelSerialize(
  RocketDetailsModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.active);
  writer.writeString(offsets[1], object.company);
  writer.writeLong(offsets[2], object.costPerLaunch);
  writer.writeString(offsets[3], object.country);
  writer.writeString(offsets[4], object.description);
  writer.writeObject<Diameter>(
    offsets[5],
    allOffsets,
    DiameterSchema.serialize,
    object.diameter,
  );
  writer.writeStringList(offsets[6], object.flickrImages);
  writer.writeObject<Diameter>(
    offsets[7],
    allOffsets,
    DiameterSchema.serialize,
    object.height,
  );
  writer.writeString(offsets[8], object.name);
  writer.writeString(offsets[9], object.rocketId);
  writer.writeLong(offsets[10], object.successRatePct);
  writer.writeString(offsets[11], object.wikipedia);
}

RocketDetailsModel _rocketDetailsModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RocketDetailsModel(
    active: reader.readBoolOrNull(offsets[0]),
    company: reader.readStringOrNull(offsets[1]),
    costPerLaunch: reader.readLongOrNull(offsets[2]),
    country: reader.readStringOrNull(offsets[3]),
    description: reader.readStringOrNull(offsets[4]),
    diameter: reader.readObjectOrNull<Diameter>(
      offsets[5],
      DiameterSchema.deserialize,
      allOffsets,
    ),
    flickrImages: reader.readStringList(offsets[6]),
    height: reader.readObjectOrNull<Diameter>(
      offsets[7],
      DiameterSchema.deserialize,
      allOffsets,
    ),
    name: reader.readStringOrNull(offsets[8]),
    rocketId: reader.readStringOrNull(offsets[9]),
    successRatePct: reader.readLongOrNull(offsets[10]),
    wikipedia: reader.readStringOrNull(offsets[11]),
  );
  object.id = id;
  return object;
}

P _rocketDetailsModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readObjectOrNull<Diameter>(
        offset,
        DiameterSchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readStringList(offset)) as P;
    case 7:
      return (reader.readObjectOrNull<Diameter>(
        offset,
        DiameterSchema.deserialize,
        allOffsets,
      )) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _rocketDetailsModelGetId(RocketDetailsModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _rocketDetailsModelGetLinks(
    RocketDetailsModel object) {
  return [];
}

void _rocketDetailsModelAttach(
    IsarCollection<dynamic> col, Id id, RocketDetailsModel object) {
  object.id = id;
}

extension RocketDetailsModelQueryWhereSort
    on QueryBuilder<RocketDetailsModel, RocketDetailsModel, QWhere> {
  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RocketDetailsModelQueryWhere
    on QueryBuilder<RocketDetailsModel, RocketDetailsModel, QWhereClause> {
  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterWhereClause>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterWhereClause>
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

extension RocketDetailsModelQueryFilter
    on QueryBuilder<RocketDetailsModel, RocketDetailsModel, QFilterCondition> {
  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      activeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'active',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      activeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'active',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      activeEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'active',
        value: value,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      companyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'company',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      companyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'company',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      companyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      companyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      companyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      companyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'company',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      companyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      companyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      companyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      companyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'company',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      companyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      companyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      costPerLaunchIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costPerLaunch',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      costPerLaunchIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costPerLaunch',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      costPerLaunchEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'costPerLaunch',
        value: value,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      costPerLaunchGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'costPerLaunch',
        value: value,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      costPerLaunchLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'costPerLaunch',
        value: value,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      costPerLaunchBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'costPerLaunch',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      countryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      countryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      countryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      countryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'country',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      countryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      countryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      diameterIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'diameter',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      diameterIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'diameter',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      flickrImagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flickrImages',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      flickrImagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flickrImages',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      flickrImagesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'flickrImages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      flickrImagesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'flickrImages',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      flickrImagesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flickrImages',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      flickrImagesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'flickrImages',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      heightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'height',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      heightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'height',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      nameEqualTo(
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      nameLessThan(
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      nameBetween(
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      rocketIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rocketId',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      rocketIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rocketId',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
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

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      rocketIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rocketId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      rocketIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rocketId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      rocketIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rocketId',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      rocketIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rocketId',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      successRatePctIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'successRatePct',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      successRatePctIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'successRatePct',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      successRatePctEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'successRatePct',
        value: value,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      successRatePctGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'successRatePct',
        value: value,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      successRatePctLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'successRatePct',
        value: value,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      successRatePctBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'successRatePct',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      wikipediaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'wikipedia',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      wikipediaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'wikipedia',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      wikipediaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wikipedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      wikipediaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wikipedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      wikipediaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wikipedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      wikipediaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wikipedia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      wikipediaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'wikipedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      wikipediaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'wikipedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      wikipediaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'wikipedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      wikipediaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'wikipedia',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      wikipediaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wikipedia',
        value: '',
      ));
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      wikipediaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'wikipedia',
        value: '',
      ));
    });
  }
}

extension RocketDetailsModelQueryObject
    on QueryBuilder<RocketDetailsModel, RocketDetailsModel, QFilterCondition> {
  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      diameter(FilterQuery<Diameter> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'diameter');
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterFilterCondition>
      height(FilterQuery<Diameter> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'height');
    });
  }
}

extension RocketDetailsModelQueryLinks
    on QueryBuilder<RocketDetailsModel, RocketDetailsModel, QFilterCondition> {}

extension RocketDetailsModelQuerySortBy
    on QueryBuilder<RocketDetailsModel, RocketDetailsModel, QSortBy> {
  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByCostPerLaunch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costPerLaunch', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByCostPerLaunchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costPerLaunch', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByRocketId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rocketId', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByRocketIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rocketId', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortBySuccessRatePct() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'successRatePct', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortBySuccessRatePctDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'successRatePct', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByWikipedia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wikipedia', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      sortByWikipediaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wikipedia', Sort.desc);
    });
  }
}

extension RocketDetailsModelQuerySortThenBy
    on QueryBuilder<RocketDetailsModel, RocketDetailsModel, QSortThenBy> {
  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'active', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByCostPerLaunch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costPerLaunch', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByCostPerLaunchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costPerLaunch', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByRocketId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rocketId', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByRocketIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rocketId', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenBySuccessRatePct() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'successRatePct', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenBySuccessRatePctDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'successRatePct', Sort.desc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByWikipedia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wikipedia', Sort.asc);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QAfterSortBy>
      thenByWikipediaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wikipedia', Sort.desc);
    });
  }
}

extension RocketDetailsModelQueryWhereDistinct
    on QueryBuilder<RocketDetailsModel, RocketDetailsModel, QDistinct> {
  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QDistinct>
      distinctByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'active');
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QDistinct>
      distinctByCompany({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'company', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QDistinct>
      distinctByCostPerLaunch() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costPerLaunch');
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QDistinct>
      distinctByCountry({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'country', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QDistinct>
      distinctByFlickrImages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flickrImages');
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QDistinct>
      distinctByRocketId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rocketId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QDistinct>
      distinctBySuccessRatePct() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'successRatePct');
    });
  }

  QueryBuilder<RocketDetailsModel, RocketDetailsModel, QDistinct>
      distinctByWikipedia({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wikipedia', caseSensitive: caseSensitive);
    });
  }
}

extension RocketDetailsModelQueryProperty
    on QueryBuilder<RocketDetailsModel, RocketDetailsModel, QQueryProperty> {
  QueryBuilder<RocketDetailsModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RocketDetailsModel, bool?, QQueryOperations> activeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'active');
    });
  }

  QueryBuilder<RocketDetailsModel, String?, QQueryOperations>
      companyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'company');
    });
  }

  QueryBuilder<RocketDetailsModel, int?, QQueryOperations>
      costPerLaunchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costPerLaunch');
    });
  }

  QueryBuilder<RocketDetailsModel, String?, QQueryOperations>
      countryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'country');
    });
  }

  QueryBuilder<RocketDetailsModel, String?, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<RocketDetailsModel, Diameter?, QQueryOperations>
      diameterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'diameter');
    });
  }

  QueryBuilder<RocketDetailsModel, List<String>?, QQueryOperations>
      flickrImagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flickrImages');
    });
  }

  QueryBuilder<RocketDetailsModel, Diameter?, QQueryOperations>
      heightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'height');
    });
  }

  QueryBuilder<RocketDetailsModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<RocketDetailsModel, String?, QQueryOperations>
      rocketIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rocketId');
    });
  }

  QueryBuilder<RocketDetailsModel, int?, QQueryOperations>
      successRatePctProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'successRatePct');
    });
  }

  QueryBuilder<RocketDetailsModel, String?, QQueryOperations>
      wikipediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wikipedia');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const DiameterSchema = Schema(
  name: r'Diameter',
  id: 5971250774074257841,
  properties: {
    r'feet': PropertySchema(
      id: 0,
      name: r'feet',
      type: IsarType.double,
    ),
    r'meters': PropertySchema(
      id: 1,
      name: r'meters',
      type: IsarType.double,
    )
  },
  estimateSize: _diameterEstimateSize,
  serialize: _diameterSerialize,
  deserialize: _diameterDeserialize,
  deserializeProp: _diameterDeserializeProp,
);

int _diameterEstimateSize(
  Diameter object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _diameterSerialize(
  Diameter object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.feet);
  writer.writeDouble(offsets[1], object.meters);
}

Diameter _diameterDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Diameter(
    feet: reader.readDoubleOrNull(offsets[0]),
    meters: reader.readDoubleOrNull(offsets[1]),
  );
  return object;
}

P _diameterDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension DiameterQueryFilter
    on QueryBuilder<Diameter, Diameter, QFilterCondition> {
  QueryBuilder<Diameter, Diameter, QAfterFilterCondition> feetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'feet',
      ));
    });
  }

  QueryBuilder<Diameter, Diameter, QAfterFilterCondition> feetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'feet',
      ));
    });
  }

  QueryBuilder<Diameter, Diameter, QAfterFilterCondition> feetEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feet',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Diameter, Diameter, QAfterFilterCondition> feetGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'feet',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Diameter, Diameter, QAfterFilterCondition> feetLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'feet',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Diameter, Diameter, QAfterFilterCondition> feetBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'feet',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Diameter, Diameter, QAfterFilterCondition> metersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'meters',
      ));
    });
  }

  QueryBuilder<Diameter, Diameter, QAfterFilterCondition> metersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'meters',
      ));
    });
  }

  QueryBuilder<Diameter, Diameter, QAfterFilterCondition> metersEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meters',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Diameter, Diameter, QAfterFilterCondition> metersGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'meters',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Diameter, Diameter, QAfterFilterCondition> metersLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'meters',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Diameter, Diameter, QAfterFilterCondition> metersBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'meters',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension DiameterQueryObject
    on QueryBuilder<Diameter, Diameter, QFilterCondition> {}
