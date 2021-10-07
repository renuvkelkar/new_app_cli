class FoodItemModel{
  late String foodName;
  late String foodImg;
  late int foodCal;


  FoodItemModel({
    required this.foodCal,
    required this.foodImg,
    required this.foodName});

}
List<FoodItemModel> foodList =[
  FoodItemModel(foodCal: 10, foodImg: "https://image.shutterstock.com/image-vector/simple-apple-flat-style-vector-260nw-1355114489.jpg", foodName: "apple"),
  FoodItemModel(foodCal: 10, foodImg: "https://cdn3.vectorstock.com/i/thumb-large/80/62/broccoli-on-white-background-vector-27748062.jpg", foodName: "broccoli"),
  FoodItemModel(foodCal: 10, foodImg: "https://www.kindpng.com/picc/m/434-4345309_clipart-of-pizza-without-and-artistic-slice-of.png", foodName: "pizza"),
];