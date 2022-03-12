class Products {
  final String price, image, name;
  int id;

  Products(
      {required this.price,
      required this.image,
      required this.name,
      required this.id});
}

final List<Products> recentProduct = <Products>[
  Products(
      id: 0, price: '2.99', image: 'assets/coffee.png', name: 'CAFFÈ LATTE'),
  Products(price: '2.19', id: 1, image: 'assets/cup.png', name: 'AMERICANO'),
  Products(
      price: '1.67', id: 2, image: 'assets/coffee2.png', name: 'CAPPUCCINO'),
  Products(
      price: '3.28', id: 3, image: 'assets/mocha_cup.png', name: 'CAFFÈ MOCHA'),
  Products(
      price: '4.07',
      id: 4,
      image: 'assets/green_tea_cup.png',
      name: 'ESPRESSO'),
];

final List<Products> popularProducts = <Products>[
  Products(id: 5, price: '2.24', image: 'assets/pic4.png', name: 'NESCAFE'),
  Products(
      price: '1.67', id: 6, image: 'assets/mocha_cup.png', name: 'CAPPUCCINO'),
  Products(price: '3.28', id: 7, image: 'assets/pic4.png', name: 'CAFFÈ MOCHA'),
  Products(
      price: '4.07',
      id: 8,
      image: 'assets/green_tea_cup.png',
      name: 'ESPRESSO'),
  Products(price: '2.19', id: 9, image: 'assets/cup.png', name: 'AMERICANO'),
  Products(
      price: '0.99', id: 10, image: 'assets/coffee.png', name: 'CAFÈ AU LAIT'),
];

final List<Products> uniqueProducts = <Products>[
  Products(
      price: '1.67',
      id: 11,
      image: 'assets/green_tea_cup.png',
      name: 'CAPPUCCINO'),
  Products(price: '4.07', id: 12, image: 'assets/pic2.png', name: 'ESPRESSO'),
  Products(
      price: '3.28',
      id: 13,
      image: 'assets/mocha_cup.png',
      name: 'CAFFÈ MOCHA'),
  Products(price: '2.19', id: 14, image: 'assets/cup.png', name: 'AMERICANO'),
];

final List<Products> modernProduct = <Products>[
  Products(price: '1.67', id: 15, image: 'assets/pic3.png', name: 'CAPPUCCINO'),
  Products(price: '2.19', id: 16, image: 'assets/cup.png', name: 'AMERICANO'),
  Products(
      price: '0.99', id: 17, image: 'assets/coffee.png', name: 'CAFÈ AU LAIT'),
  Products(
      price: '4.07',
      id: 18,
      image: 'assets/green_tea_cup.png',
      name: 'ESPRESSO'),
];
