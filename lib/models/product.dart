class Product {
  final int id, price;
  final String title, description, image;

  Product({this.id, this.price, this.title, this.description, this.image});
}

// List products
List<Product> products = [
  Product(
    id: 1,
    price: 56,
    title: "Classic Leather Arm Chair",
    image: "assets/images/Item_1.png",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscring elit, sed do eiusmod inluce ......",
  ),

  Product(
    id: 2,
    price: 68,
    title: "Poppy Plastic Tub Chair",
    image: "assets/images/Item_2.png",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscring elit, sed do eiusmod inluce ......",
  ),

  Product(
    id: 3,
    price: 39,
    title: "Bar Stool Chair",
    image: "assets/images/Item_3.png",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscring elit, sed do eiusmod inluce ......",
  ),
];

