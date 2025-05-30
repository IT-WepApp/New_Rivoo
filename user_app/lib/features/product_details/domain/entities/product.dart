import 'package:user_app/core/architecture/domain/entity.dart';
import 'package:user_app/features/products/domain/product_status.dart';

/// كيان المنتج
class Product extends Entity {
  /// اسم المنتج
  final String name;
  
  /// وصف المنتج
  final String description;
  
  /// سعر المنتج
  final double price;
  
  /// سعر المنتج بعد الخصم (إن وجد)
  final double? discountPrice;
  
  /// صورة المنتج الرئيسية
  final String imageUrl;
  
  /// صور المنتج الإضافية
  final List<String> additionalImages;
  
  /// تقييم المنتج
  final double rating;
  
  /// عدد التقييمات
  final int reviewsCount;
  
  /// عدد المراجعات (لإصلاح خطأ reviewCount)
  final int reviewCount;
  
  /// هل المنتج متوفر في المخزون
  final bool inStock;
  
  /// كمية المنتج المتوفرة
  final int quantity;
  
  /// معرف الفئة التي ينتمي إليها المنتج
  final String categoryId;
  
  /// الكلمات المفتاحية للمنتج
  final List<String> tags;
  
  /// هل المنتج مميز
  final bool isFeatured;
  
  /// هل المنتج جديد
  final bool isNew;
  
  /// هل المنتج مخفض
  final bool isOnSale;
  
  /// حالة المنتج
  final ProductStatus status;
  
  /// تاريخ إضافة المنتج
  final DateTime createdAt;
  
  /// تاريخ آخر تحديث للمنتج
  final DateTime updatedAt;

  /// إنشاء كيان المنتج
  const Product({
    required String id,
    required this.name,
    required this.description,
    required this.price,
    this.discountPrice,
    required this.imageUrl,
    this.additionalImages = const [],
    this.rating = 0.0,
    this.reviewsCount = 0,
    int? reviewCount,
    this.inStock = true,
    this.quantity = 0,
    required this.categoryId,
    this.tags = const [],
    this.isFeatured = false,
    this.isNew = false,
    this.isOnSale = false,
    this.status = ProductStatus.available,
    required this.createdAt,
    required this.updatedAt,
  }) : 
    this.reviewCount = reviewCount ?? reviewsCount,
    super(id: id);

  /// نسخة جديدة من الكيان مع تحديث بعض الحقول
  Product copyWith({
    String? id,
    String? name,
    String? description,
    double? price,
    double? discountPrice,
    String? imageUrl,
    List<String>? additionalImages,
    double? rating,
    int? reviewsCount,
    int? reviewCount,
    bool? inStock,
    int? quantity,
    String? categoryId,
    List<String>? tags,
    bool? isFeatured,
    bool? isNew,
    bool? isOnSale,
    ProductStatus? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      discountPrice: discountPrice ?? this.discountPrice,
      imageUrl: imageUrl ?? this.imageUrl,
      additionalImages: additionalImages ?? this.additionalImages,
      rating: rating ?? this.rating,
      reviewsCount: reviewsCount ?? this.reviewsCount,
      reviewCount: reviewCount ?? this.reviewCount,
      inStock: inStock ?? this.inStock,
      quantity: quantity ?? this.quantity,
      categoryId: categoryId ?? this.categoryId,
      tags: tags ?? this.tags,
      isFeatured: isFeatured ?? this.isFeatured,
      isNew: isNew ?? this.isNew,
      isOnSale: isOnSale ?? this.isOnSale,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// هل المنتج متاح للشراء
  bool get isAvailable => status == ProductStatus.available && inStock;

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        price,
        discountPrice,
        imageUrl,
        additionalImages,
        rating,
        reviewsCount,
        reviewCount,
        inStock,
        quantity,
        categoryId,
        tags,
        isFeatured,
        isNew,
        isOnSale,
        status,
        createdAt,
        updatedAt,
      ];
}
