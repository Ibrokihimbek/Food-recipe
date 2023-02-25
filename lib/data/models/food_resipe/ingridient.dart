class Ingredients {
  num quantity;
  num weight;
  String text;
  String measure;
  String food;
  String foodCategory;
  String foodId;
  String image;

  Ingredients({
    required this.text,
    required this.quantity,
    required this.measure,
    required this.food,
    required this.weight,
    required this.foodCategory,
    required this.foodId,
    required this.image,
  });

  factory Ingredients.fromJson(Map<String, dynamic> json) {
    return Ingredients(
      quantity: json['quantity'] as num? ?? 0,
      weight: json['weight'] as num? ?? 0,
      text: json['text'] as String? ?? '',
      measure: json['measure'] as String? ?? '',
      food: json['food'] as String? ?? '',
      foodCategory: json['foodCategory'] as String? ?? '',
      foodId: json['foodId'] as String? ?? '',
      image: json['image'] as String? ?? 'https://media.istockphoto.com/id/1192970073/vector/tried-and-tested-recipe-approved-label-design-with-text-for-test-kitchen-or-blog-recipes.jpg?s=170667a&w=0&k=20&c=yA7r6LUagUguYUph-981Cv7PAkFw6moFWV-uvqmkSr4=',
    );
  }
}
