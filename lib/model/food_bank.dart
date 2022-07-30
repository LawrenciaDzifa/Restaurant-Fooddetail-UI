class Food {
  String name;
  String price;
  String description;
  String image;

  Food({this.name, this.price, this.description, this.image});
}

List<Food> getAllFoods() => [
      Food(
          name: 'Egg Surfer',
          price: '\$2.99',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
          image: 'assets/images/sandwich1.jpg'),
      Food(
          name: 'Jollof',
          price: '\$14.99',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
          image: 'assets/images/jollof.jpg'),
      Food(
          name: 'Fried Rice',
          price: '\$34.99',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
          image: 'assets/images/friedrice.jpg'),
      Food(
          name: 'Waakye',
          price: '\$19',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
          image: 'assets/images/waakye.png'),
      Food(
          name: 'Banku',
          price: '\$40',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
          image: 'assets/images/banku.jpg'),
    ];
