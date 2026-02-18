import 'package:flutter/material.dart';
import 'package:green_mart/features/home/data/category_colors.dart';

class CategoryModel {
  final String id;
  final String pic;
  final String text;
  final Color backGround;

  CategoryModel({
    required this.pic,
    required this.text,
    required this.backGround,
    required this.id,
  });
}

final List<CategoryModel> categoryModels = [
  CategoryModel(
    id: '1',
    pic: 'https://images.unsplash.com/photo-1542838132-92c53300491e',
    text: 'Fresh Fruits\n& Vegetable',
    backGround: CategoryColors.fruits,
  ),
  CategoryModel(
    id: '2',
    pic: 'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d',
    text: 'Cooking Oil\n& Ghee',
    backGround: CategoryColors.oil,
  ),
  CategoryModel(
    id: '3',
    pic: 'https://images.unsplash.com/photo-1607623814075-e51df1bdc82f',
    text: 'Meat\n& Fish',
    backGround: CategoryColors.meat,
  ),
  CategoryModel(
    id: '4',
    pic: 'https://images.unsplash.com/photo-1509440159596-0249088772ff',
    text: 'Bakery\n& Snacks',
    backGround: CategoryColors.bakery,
  ),
  CategoryModel(
    id: '5',
    pic: 'https://images.unsplash.com/photo-1585238342024-78d387f4a707',
    text: 'Dairy\n& Eggs',
    backGround: CategoryColors.dairy,
  ),
  CategoryModel(
    id: '6',
    pic: 'https://images.unsplash.com/photo-1504754524776-8f4f37790ca0',
    text: 'Beverages',
    backGround: CategoryColors.beverages,
  ),

  CategoryModel(
    id: '5',
    pic: 'https://images.unsplash.com/photo-1585238342024-78d387f4a707',
    text: 'Dairy\n& Eggs',
    backGround: CategoryColors.dairy,
  ),
  CategoryModel(
    id: '6',
    pic: 'https://images.unsplash.com/photo-1504754524776-8f4f37790ca0',
    text: 'Beverages',
    backGround: CategoryColors.beverages,
  ),
];
