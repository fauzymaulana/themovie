// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genres_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGenresIsarCollection on Isar {
  IsarCollection<GenresIsar> get genresIsars => this.collection();
}

const GenresIsarSchema = CollectionSchema(
  name: r'GenresIsar',
  id: -5637681504639754762,
  properties: {
    r'genreId': PropertySchema(
      id: 0,
      name: r'genreId',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _genresIsarEstimateSize,
  serialize: _genresIsarSerialize,
  deserialize: _genresIsarDeserialize,
  deserializeProp: _genresIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'genreId': IndexSchema(
      id: 3212228459756463684,
      name: r'genreId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'genreId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _genresIsarGetId,
  getLinks: _genresIsarGetLinks,
  attach: _genresIsarAttach,
  version: '3.1.0+1',
);

int _genresIsarEstimateSize(
  GenresIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _genresIsarSerialize(
  GenresIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.genreId);
  writer.writeString(offsets[1], object.name);
}

GenresIsar _genresIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GenresIsar(
    genreId: reader.readLongOrNull(offsets[0]),
    name: reader.readStringOrNull(offsets[1]),
  );
  object.id = id;
  return object;
}

P _genresIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _genresIsarGetId(GenresIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _genresIsarGetLinks(GenresIsar object) {
  return [];
}

void _genresIsarAttach(IsarCollection<dynamic> col, Id id, GenresIsar object) {
  object.id = id;
}

extension GenresIsarQueryWhereSort
    on QueryBuilder<GenresIsar, GenresIsar, QWhere> {
  QueryBuilder<GenresIsar, GenresIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhere> anyGenreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'genreId'),
      );
    });
  }
}

extension GenresIsarQueryWhere
    on QueryBuilder<GenresIsar, GenresIsar, QWhereClause> {
  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> idBetween(
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

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> genreIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'genreId',
        value: [null],
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> genreIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'genreId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> genreIdEqualTo(
      int? genreId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'genreId',
        value: [genreId],
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> genreIdNotEqualTo(
      int? genreId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'genreId',
              lower: [],
              upper: [genreId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'genreId',
              lower: [genreId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'genreId',
              lower: [genreId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'genreId',
              lower: [],
              upper: [genreId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> genreIdGreaterThan(
    int? genreId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'genreId',
        lower: [genreId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> genreIdLessThan(
    int? genreId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'genreId',
        lower: [],
        upper: [genreId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterWhereClause> genreIdBetween(
    int? lowerGenreId,
    int? upperGenreId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'genreId',
        lower: [lowerGenreId],
        includeLower: includeLower,
        upper: [upperGenreId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GenresIsarQueryFilter
    on QueryBuilder<GenresIsar, GenresIsar, QFilterCondition> {
  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> genreIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'genreId',
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition>
      genreIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'genreId',
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> genreIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genreId',
        value: value,
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition>
      genreIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'genreId',
        value: value,
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> genreIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'genreId',
        value: value,
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> genreIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'genreId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> nameContains(
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

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension GenresIsarQueryObject
    on QueryBuilder<GenresIsar, GenresIsar, QFilterCondition> {}

extension GenresIsarQueryLinks
    on QueryBuilder<GenresIsar, GenresIsar, QFilterCondition> {}

extension GenresIsarQuerySortBy
    on QueryBuilder<GenresIsar, GenresIsar, QSortBy> {
  QueryBuilder<GenresIsar, GenresIsar, QAfterSortBy> sortByGenreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genreId', Sort.asc);
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterSortBy> sortByGenreIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genreId', Sort.desc);
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension GenresIsarQuerySortThenBy
    on QueryBuilder<GenresIsar, GenresIsar, QSortThenBy> {
  QueryBuilder<GenresIsar, GenresIsar, QAfterSortBy> thenByGenreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genreId', Sort.asc);
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterSortBy> thenByGenreIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genreId', Sort.desc);
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension GenresIsarQueryWhereDistinct
    on QueryBuilder<GenresIsar, GenresIsar, QDistinct> {
  QueryBuilder<GenresIsar, GenresIsar, QDistinct> distinctByGenreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'genreId');
    });
  }

  QueryBuilder<GenresIsar, GenresIsar, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension GenresIsarQueryProperty
    on QueryBuilder<GenresIsar, GenresIsar, QQueryProperty> {
  QueryBuilder<GenresIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GenresIsar, int?, QQueryOperations> genreIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'genreId');
    });
  }

  QueryBuilder<GenresIsar, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
