

// extension BasePaginateMapper<T, R> on BasePaginateResponse<T> {
//   BasePaginate<R> toBasePaginate(R Function(T?) transformResults) {
//     return BasePaginate<R>(
//       dates: dates?.toDateEntity(),
//       page: page,
//       totalResults: totalResults,
//       totalPages: totalPages,
//       results: transformResults(results),
//     );
//   }
// }