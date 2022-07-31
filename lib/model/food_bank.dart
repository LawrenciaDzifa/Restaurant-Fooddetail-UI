class Food {
  String name;
  String price;
  String description;
  String image;

  Food({this.name, this.price, this.description, this.image});
}

List<Food> getAllFoods() => [
      Food(
          name: 'Beef Burger',
          price: '\$2.99',
          description:
              'Tasty, delicious, and will get you craving more on the first bite. Juicy, mouthwatering, tasty, and everything you’d ever want to savor. ',
          image: 'assets/images/sandwich1.jpg'),
      Food(
          name: 'Jollof',
          price: '\$14.99',
          description: 'Enjoy this rich, healty and tasty assorted dish. ',
          image: 'assets/images/jollof.jpg'),
      Food(
          name: 'Fried Rice',
          price: '\$34.99',
          description:
              'This vegetarian dish includes lots of vegetables and sauces giving it a unique tempting flavor and color.  ',
          image: 'assets/images/friedrice.jpg'),
      Food(
          name: 'Waakye',
          price: '\$19',
          description:
              'Enjoy this rich Ghanaian traditional rice and beans dish. ',
          image: 'assets/images/waakye.png'),
      Food(
          name: 'Banku & Tilapia',
          price: '\$40',
          description:
              'A delicious fusion of African and Western recipes and tastes.',
          image: 'assets/images/banku.jpg'),
    ];
