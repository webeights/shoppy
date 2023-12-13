class Rating {
  final num rate;
  final num count;

  Rating.fromJson(Map<String, dynamic> json)
      : rate = json['rate'],
        count = json['count'];
}
