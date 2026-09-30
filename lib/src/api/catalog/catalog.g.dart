// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'catalog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryUsage _$CategoryUsageFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CategoryUsage', json, ($checkedConvert) {
      final val = CategoryUsage(
        inUse: $checkedConvert('inUse', (v) => v as bool),
        productCount: $checkedConvert(
          'productCount',
          (v) => (v as num).toInt(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CategoryUsageToJson(CategoryUsage instance) =>
    <String, dynamic>{
      'inUse': instance.inUse,
      'productCount': instance.productCount,
    };

const _$CategoryUsageJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'inUse': {'type': 'boolean', 'description': 'Se há pelo menos um produto.'},
    'productCount': {
      'type': 'integer',
      'description': 'Quantos produtos apontam para a categoria.',
    },
  },
  'required': ['inUse', 'productCount'],
};

LaborService _$LaborServiceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LaborService', json, ($checkedConvert) {
      final val = LaborService(
        code: $checkedConvert('code', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        price: $checkedConvert('price', (v) => MoneyAmount.fromJson(v)),
        isActive: $checkedConvert('isActive', (v) => v as bool),
        id: $checkedConvert('id', (v) => v as String?),
        description: $checkedConvert('description', (v) => v as String?),
        estimatedHours: $checkedConvert(
          'estimatedHours',
          (v) => v == null ? null : HoursAmount.fromJson(v),
        ),
        warrantyDays: $checkedConvert(
          'warrantyDays',
          (v) => (v as num?)?.toInt(),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) =>
              v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) =>
              v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$LaborServiceToJson(LaborService instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price.toJson(),
      'estimatedHours': instance.estimatedHours?.toJson(),
      'warrantyDays': instance.warrantyDays,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
    };

const _$LaborServiceJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID. Opcional no corpo.'},
    'code': {'type': 'string', 'description': 'Código único.'},
    'name': {'type': 'string', 'description': 'Nome.'},
    'description': {'type': 'string', 'description': 'Texto livre, ou `null`.'},
    'price': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Preço padrão da rede.',
    },
    'estimatedHours': {
      r'$ref': r'#/$defs/HoursAmount',
      'description': 'Horas estimadas, ou `null`.',
    },
    'warrantyDays': {
      'type': 'integer',
      'description': 'Garantia em dias. `null` no corpo: o servidor grava 90.',
    },
    'isActive': {
      'type': 'boolean',
      'description': 'Se o serviço está ativo na rede.',
    },
    'createdAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Criação, ou `null` no corpo de escrita.',
    },
    'updatedAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Última alteração, ou `null` no corpo de escrita.',
    },
  },
  'required': ['code', 'name', 'price', 'isActive'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'HoursAmount': {'type': 'object', 'properties': {}},
    'ApiInstant': {
      'type': 'object',
      'properties': {
        'value': {
          'type': 'string',
          'format': 'date-time',
          'description': 'Instante em UTC.',
        },
      },
      'required': ['value'],
    },
  },
};

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductCategory', json, ($checkedConvert) {
      final val = ProductCategory(
        name: $checkedConvert('name', (v) => v as String),
        id: $checkedConvert('id', (v) => v as String?),
        description: $checkedConvert('description', (v) => v as String?),
        createdAt: $checkedConvert(
          'createdAt',
          (v) =>
              v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) =>
              v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProductCategoryToJson(ProductCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
    };

const _$ProductCategoryJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID. Opcional no corpo.'},
    'name': {'type': 'string', 'description': 'Nome único.'},
    'description': {'type': 'string', 'description': 'Texto livre, ou `null`.'},
    'createdAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Criação, ou `null` no corpo de escrita.',
    },
    'updatedAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Última alteração, ou `null` no corpo de escrita.',
    },
  },
  'required': ['name'],
  r'$defs': {
    'ApiInstant': {
      'type': 'object',
      'properties': {
        'value': {
          'type': 'string',
          'format': 'date-time',
          'description': 'Instante em UTC.',
        },
      },
      'required': ['value'],
    },
  },
};

ProductCodeAvailability _$ProductCodeAvailabilityFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductCodeAvailability', json, ($checkedConvert) {
  final val = ProductCodeAvailability(
    available: $checkedConvert('available', (v) => v as bool),
  );
  return val;
});

Map<String, dynamic> _$ProductCodeAvailabilityToJson(
  ProductCodeAvailability instance,
) => <String, dynamic>{'available': instance.available};

const _$ProductCodeAvailabilityJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'available': {'type': 'boolean', 'description': 'Se o código está livre.'},
  },
  'required': ['available'],
};

ProductCodeIssued _$ProductCodeIssuedFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductCodeIssued', json, ($checkedConvert) {
      final val = ProductCodeIssued(
        code: $checkedConvert('code', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ProductCodeIssuedToJson(ProductCodeIssued instance) =>
    <String, dynamic>{'code': instance.code};

const _$ProductCodeIssuedJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'code': {
      'type': 'string',
      'description': 'Próximo código, por exemplo `PRD-000124`.',
    },
  },
  'required': ['code'],
};

ProductData _$ProductDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductData', json, ($checkedConvert) {
      final val = ProductData(
        code: $checkedConvert('code', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        salePrice: $checkedConvert('salePrice', (v) => MoneyAmount.fromJson(v)),
        isActive: $checkedConvert('isActive', (v) => v as bool),
        id: $checkedConvert('id', (v) => v as String?),
        barcode: $checkedConvert('barcode', (v) => v as String?),
        description: $checkedConvert('description', (v) => v as String?),
        categoryId: $checkedConvert('categoryId', (v) => v as String?),
        costPrice: $checkedConvert(
          'costPrice',
          (v) => v == null ? null : MoneyAmount.fromJson(v),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) =>
              v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) =>
              v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'barcode': instance.barcode,
      'name': instance.name,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'costPrice': instance.costPrice?.toJson(),
      'salePrice': instance.salePrice.toJson(),
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
    };

const _$ProductDataJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID. Opcional no corpo.'},
    'code': {'type': 'string', 'description': 'Código interno, único.'},
    'barcode': {
      'type': 'string',
      'description': 'Código de barras, ou `null`.',
    },
    'name': {'type': 'string', 'description': 'Nome.'},
    'description': {'type': 'string', 'description': 'Descrição, ou `null`.'},
    'categoryId': {'type': 'string', 'description': 'Categoria, ou `null`.'},
    'costPrice': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Custo. `null` quando oculto ou ausente.',
    },
    'salePrice': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Preço padrão da rede.',
    },
    'isActive': {
      'type': 'boolean',
      'description': 'Se o produto está ativo na rede.',
    },
    'createdAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Criação, ou `null` no corpo de escrita.',
    },
    'updatedAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Última alteração, ou `null` no corpo de escrita.',
    },
  },
  'required': ['code', 'name', 'salePrice', 'isActive'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'ApiInstant': {
      'type': 'object',
      'properties': {
        'value': {
          'type': 'string',
          'format': 'date-time',
          'description': 'Instante em UTC.',
        },
      },
      'required': ['value'],
    },
  },
};

StoreProduct _$StoreProductFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StoreProduct', json, ($checkedConvert) {
      final val = StoreProduct(
        storeId: $checkedConvert('storeId', (v) => v as String),
        product: $checkedConvert(
          'product',
          (v) => ProductData.fromJson(v as Map<String, dynamic>),
        ),
        salePrice: $checkedConvert('salePrice', (v) => MoneyAmount.fromJson(v)),
        hasStoreOverride: $checkedConvert('hasStoreOverride', (v) => v as bool),
        stockQuantity: $checkedConvert(
          'stockQuantity',
          (v) => (v as num).toInt(),
        ),
        minStock: $checkedConvert('minStock', (v) => (v as num).toInt()),
        isActive: $checkedConvert('isActive', (v) => v as bool),
        needsRestock: $checkedConvert('needsRestock', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$StoreProductToJson(StoreProduct instance) =>
    <String, dynamic>{
      'storeId': instance.storeId,
      'product': instance.product.toJson(),
      'salePrice': instance.salePrice.toJson(),
      'hasStoreOverride': instance.hasStoreOverride,
      'stockQuantity': instance.stockQuantity,
      'minStock': instance.minStock,
      'isActive': instance.isActive,
      'needsRestock': instance.needsRestock,
    };

const _$StoreProductJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'storeId': {'type': 'string', 'description': 'Loja.'},
    'product': {
      r'$ref': r'#/$defs/ProductData',
      'description': 'Cadastro da rede.',
    },
    'salePrice': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Preço efetivo da loja. `null` no override não vira zero.',
    },
    'hasStoreOverride': {
      'type': 'boolean',
      'description': 'Se a loja sobrescreveu o preço do catálogo.',
    },
    'stockQuantity': {'type': 'integer', 'description': 'Saldo inteiro.'},
    'minStock': {'type': 'integer', 'description': 'Mínimo da loja.'},
    'isActive': {
      'type': 'boolean',
      'description': 'Se a loja trabalha com o item.',
    },
    'needsRestock': {
      'type': 'boolean',
      'description':
          'Se o saldo está no mínimo ou abaixo. Valor calculado no servidor.',
    },
  },
  'required': [
    'storeId',
    'product',
    'salePrice',
    'hasStoreOverride',
    'stockQuantity',
    'minStock',
    'isActive',
    'needsRestock',
  ],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'ApiInstant': {
      'type': 'object',
      'properties': {
        'value': {
          'type': 'string',
          'format': 'date-time',
          'description': 'Instante em UTC.',
        },
      },
      'required': ['value'],
    },
    'ProductData': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID. Opcional no corpo.'},
        'code': {'type': 'string', 'description': 'Código interno, único.'},
        'barcode': {
          'type': 'string',
          'description': 'Código de barras, ou `null`.',
        },
        'name': {'type': 'string', 'description': 'Nome.'},
        'description': {
          'type': 'string',
          'description': 'Descrição, ou `null`.',
        },
        'categoryId': {
          'type': 'string',
          'description': 'Categoria, ou `null`.',
        },
        'costPrice': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Custo. `null` quando oculto ou ausente.',
        },
        'salePrice': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Preço padrão da rede.',
        },
        'isActive': {
          'type': 'boolean',
          'description': 'Se o produto está ativo na rede.',
        },
        'createdAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Criação, ou `null` no corpo de escrita.',
        },
        'updatedAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Última alteração, ou `null` no corpo de escrita.',
        },
      },
      'required': ['code', 'name', 'salePrice', 'isActive'],
    },
  },
};

StoreProductSettingsRequest _$StoreProductSettingsRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('StoreProductSettingsRequest', json, ($checkedConvert) {
  final val = StoreProductSettingsRequest(
    minStock: $checkedConvert('minStock', (v) => (v as num).toInt()),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    salePrice: $checkedConvert(
      'salePrice',
      (v) => v == null ? null : MoneyAmount.fromJson(v),
    ),
  );
  return val;
});

Map<String, dynamic> _$StoreProductSettingsRequestToJson(
  StoreProductSettingsRequest instance,
) => <String, dynamic>{
  'salePrice': instance.salePrice?.toJson(),
  'minStock': instance.minStock,
  'isActive': instance.isActive,
};

const _$StoreProductSettingsRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'salePrice': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Preço da loja, ou `null` para herdar o catálogo.',
    },
    'minStock': {
      'type': 'integer',
      'description': 'Mínimo, maior ou igual a zero.',
    },
    'isActive': {
      'type': 'boolean',
      'description': 'Se a loja trabalha com o item.',
    },
  },
  'required': ['minStock', 'isActive'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

StoreService _$StoreServiceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StoreService', json, ($checkedConvert) {
      final val = StoreService(
        storeId: $checkedConvert('storeId', (v) => v as String),
        service: $checkedConvert(
          'service',
          (v) => LaborService.fromJson(v as Map<String, dynamic>),
        ),
        price: $checkedConvert('price', (v) => MoneyAmount.fromJson(v)),
        hasStoreOverride: $checkedConvert('hasStoreOverride', (v) => v as bool),
        isActive: $checkedConvert('isActive', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$StoreServiceToJson(StoreService instance) =>
    <String, dynamic>{
      'storeId': instance.storeId,
      'service': instance.service.toJson(),
      'price': instance.price.toJson(),
      'hasStoreOverride': instance.hasStoreOverride,
      'isActive': instance.isActive,
    };

const _$StoreServiceJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'storeId': {'type': 'string', 'description': 'Loja.'},
    'service': {
      r'$ref': r'#/$defs/LaborService',
      'description': 'Cadastro da rede.',
    },
    'price': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Preço efetivo da loja.',
    },
    'hasStoreOverride': {
      'type': 'boolean',
      'description': 'Se a loja sobrescreveu o preço.',
    },
    'isActive': {
      'type': 'boolean',
      'description': 'Se a loja oferece o serviço.',
    },
  },
  'required': ['storeId', 'service', 'price', 'hasStoreOverride', 'isActive'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'HoursAmount': {'type': 'object', 'properties': {}},
    'ApiInstant': {
      'type': 'object',
      'properties': {
        'value': {
          'type': 'string',
          'format': 'date-time',
          'description': 'Instante em UTC.',
        },
      },
      'required': ['value'],
    },
    'LaborService': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID. Opcional no corpo.'},
        'code': {'type': 'string', 'description': 'Código único.'},
        'name': {'type': 'string', 'description': 'Nome.'},
        'description': {
          'type': 'string',
          'description': 'Texto livre, ou `null`.',
        },
        'price': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Preço padrão da rede.',
        },
        'estimatedHours': {
          r'$ref': r'#/$defs/HoursAmount',
          'description': 'Horas estimadas, ou `null`.',
        },
        'warrantyDays': {
          'type': 'integer',
          'description':
              'Garantia em dias. `null` no corpo: o servidor grava 90.',
        },
        'isActive': {
          'type': 'boolean',
          'description': 'Se o serviço está ativo na rede.',
        },
        'createdAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Criação, ou `null` no corpo de escrita.',
        },
        'updatedAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Última alteração, ou `null` no corpo de escrita.',
        },
      },
      'required': ['code', 'name', 'price', 'isActive'],
    },
  },
};

StoreServiceSettingsRequest _$StoreServiceSettingsRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('StoreServiceSettingsRequest', json, ($checkedConvert) {
  final val = StoreServiceSettingsRequest(
    isActive: $checkedConvert('isActive', (v) => v as bool),
    price: $checkedConvert(
      'price',
      (v) => v == null ? null : MoneyAmount.fromJson(v),
    ),
  );
  return val;
});

Map<String, dynamic> _$StoreServiceSettingsRequestToJson(
  StoreServiceSettingsRequest instance,
) => <String, dynamic>{
  'price': instance.price?.toJson(),
  'isActive': instance.isActive,
};

const _$StoreServiceSettingsRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'price': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Preço da loja, ou `null` para herdar o catálogo.',
    },
    'isActive': {
      'type': 'boolean',
      'description': 'Se a loja oferece o serviço.',
    },
  },
  'required': ['isActive'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};
