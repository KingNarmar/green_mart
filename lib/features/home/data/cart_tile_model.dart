class CartTileModel {
  final String pic;
  final String name;
  final String qty;
  final String price;

  CartTileModel({
    required this.pic,
    required this.name,
    required this.qty,
    required this.price,
  });
}

final List<CartTileModel> cartItems = [
  CartTileModel(
    pic:
        'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?w=600', // red pepper
    name: 'Bell Pepper Red',
    qty: '1kg',
    price: '\$4.99',
  ),
  CartTileModel(
    pic:
        'https://images.unsplash.com/photo-1587486913049-53fc88980cfc?w=600', // eggs basket
    name: 'Egg Chicken Red',
    qty: '4pcs',
    price: '\$1.99',
  ),
  CartTileModel(
    pic:
        'https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?w=600', // bananas
    name: 'Organic Bananas',
    qty: '12kg',
    price: '\$3.00',
  ),

  CartTileModel(
    pic:
        'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?w=600', // red pepper
    name: 'Bell Pepper Red',
    qty: '1kg',
    price: '\$4.99',
  ),
  CartTileModel(
    pic:
        'https://images.unsplash.com/photo-1587486913049-53fc88980cfc?w=600', // eggs basket
    name: 'Egg Chicken Red',
    qty: '4pcs',
    price: '\$1.99',
  ),
  CartTileModel(
    pic:
        'https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?w=600', // bananas
    name: 'Organic Bananas',
    qty: '12kg',
    price: '\$3.00',
  ),

  CartTileModel(
    pic:
        'https://images.unsplash.com/photo-1587486913049-53fc88980cfc?w=600', // eggs basket
    name: 'Egg Chicken Red',
    qty: '4pcs',
    price: '\$1.99',
  ),
  CartTileModel(
    pic:
        'https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?w=600', // bananas
    name: 'Organic Bananas',
    qty: '12kg',
    price: '\$3.00',
  ),
];
