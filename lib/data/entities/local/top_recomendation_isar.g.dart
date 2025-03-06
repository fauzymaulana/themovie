// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTopRecomendIsarCollection on Isar {
  IsarCollection<TopRecomendIsar> get topRecomendIsars => this.collection();
}

const TopRecomendIsarSchema = CollectionSchema(
  name: r'TopRecomendIsar',
  id: 1060625379775963537,
  properties: {
    r'page': PropertySchema(
      id: 0,
      name: r'page',
      type: IsarType.long,
    ),
    r'totalPage': PropertySchema(
      id: 1,
      name: r'totalPage',
      type: IsarType.long,
    )
  },
  estimateSize: _topRecomendIsarEstimateSize,
  serialize: _topRecomendIsarSerialize,
  deserialize: _topRecomendIsarDeserialize,
  deserializeProp: _topRecomendIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'movies': LinkSchema(
      id: 7366668397629474454,
      name: r'movies',
      target: r'MovieIsar',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _topRecomendIsarGetId,
  getLinks: _topRecomendIsarGetLinks,
  attach: _topRecomendIsarAttach,
  version: '3.1.0+1',
);

int _topRecomendIsarEstimateSize(
  TopRecomendIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _topRecomendIsarSerialize(
  TopRecomendIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.page);
  writer.writeLong(offsets[1], object.totalPage);
}

TopRecomendIsar _topRecomendIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TopRecomendIsar(
    page: reader.readLongOrNull(offsets[0]),
    totalPage: reader.readLongOrNull(offsets[1]),
  );
  object.id = id;
  return object;
}

P _topRecomendIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _topRecomendIsarGetId(TopRecomendIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _topRecomendIsarGetLinks(TopRecomendIsar object) {
  return [object.movies];
}

void _topRecomendIsarAttach(
    IsarCollection<dynamic> col, Id id, TopRecomendIsar object) {
  object.id = id;
  object.movies.attach(col, col.isar.collection<MovieIsar>(), r'movies', id);
}

extension TopRecomendIsarQueryWhereSort
    on QueryBuilder<TopRecomendIsar, TopRecomendIsar, QWhere> {
  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TopRecomendIsarQueryWhere
    on QueryBuilder<TopRecomendIsar, TopRecomendIsar, QWhereClause> {
  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterWhereClause>
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

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterWhereClause> idBetween(
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

extension TopRecomendIsarQueryFilter
    on QueryBuilder<TopRecomendIsar, TopRecomendIsar, QFilterCondition> {
  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
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

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
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

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
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

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
      pageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'page',
      ));
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
      pageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'page',
      ));
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
      pageEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
      pageGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
      pageLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
      pageBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'page',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
      totalPageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalPage',
      ));
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
      totalPageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalPage',
      ));
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
      totalPageEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPage',
        value: value,
      ));
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
      totalPageGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalPage',
        value: value,
      ));
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
      totalPageLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalPage',
        value: value,
      ));
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
      totalPageBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalPage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TopRecomendIsarQueryObject
    on QueryBuilder<TopRecomendIsar, TopRecomendIsar, QFilterCondition> {}

extension TopRecomendIsarQueryLinks
    on QueryBuilder<TopRecomendIsar, TopRecomendIsar, QFilterCondition> {
  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition> movies(
      FilterQuery<MovieIsar> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'movies');
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterFilterCondition>
      moviesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'movies', 0, true, 0, true);
    });
  }
}

extension TopRecomendIsarQuerySortBy
    on QueryBuilder<TopRecomendIsar, TopRecomendIsar, QSortBy> {
  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterSortBy> sortByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.asc);
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterSortBy>
      sortByPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.desc);
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterSortBy>
      sortByTotalPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPage', Sort.asc);
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterSortBy>
      sortByTotalPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPage', Sort.desc);
    });
  }
}

extension TopRecomendIsarQuerySortThenBy
    on QueryBuilder<TopRecomendIsar, TopRecomendIsar, QSortThenBy> {
  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterSortBy> thenByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.asc);
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterSortBy>
      thenByPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.desc);
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterSortBy>
      thenByTotalPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPage', Sort.asc);
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QAfterSortBy>
      thenByTotalPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPage', Sort.desc);
    });
  }
}

extension TopRecomendIsarQueryWhereDistinct
    on QueryBuilder<TopRecomendIsar, TopRecomendIsar, QDistinct> {
  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QDistinct> distinctByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'page');
    });
  }

  QueryBuilder<TopRecomendIsar, TopRecomendIsar, QDistinct>
      distinctByTotalPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalPage');
    });
  }
}

extension TopRecomendIsarQueryProperty
    on QueryBuilder<TopRecomendIsar, TopRecomendIsar, QQueryProperty> {
  QueryBuilder<TopRecomendIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TopRecomendIsar, int?, QQueryOperations> pageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'page');
    });
  }

  QueryBuilder<TopRecomendIsar, int?, QQueryOperations> totalPageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalPage');
    });
  }
}
