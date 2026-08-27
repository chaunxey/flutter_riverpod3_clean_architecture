# flutter_riverpod_ca

A new Flutter project. mvvm + clean architecture + riverpod + dio 

## Getting Started


# 状态管理使用riverpod https://riverpod.dev/docs/introduction/getting_started
flutter pub add flutter_riverpod
flutter pub add riverpod_annotation
flutter pub add dev:riverpod_generator
flutter pub add dev:build_runner
# 需要在analysis_options.yaml 添加
plugins:
  riverpod_lint: <latest version from https://pub.dev/packages/riverpod_lint>
build_runner ：dart run build_runner watch -d
# 网络请求 dio https://github.com/cfug/dio/blob/main/dio/README-ZH.md
flutter pub add dio
# json解析 freezed  https://github.com/rrousselGit/freezed/blob/master/resources/translations/zh_CN/README.md
flutter pub add freezed_annotation
flutter pub add dev:build_runner
flutter pub add dev:freezed
# 如果你要使用 freezed 来生成 fromJson/toJson，则执行：
flutter pub add json_annotation
flutter pub add dev:json_serializable
# 路由导航使用 go_router https://pub.dev/packages/go_router/example
flutter pub add go_router
# 本地缓存 https://pub.dev/packages/shared_preferences/example
flutter pub add shared_preferences
# flutter_gen_runner
flutter pub add dev:flutter_gen_runner
# fpdart 错误处理：Either<L, R>  /  空安全增强：Option<T>
flutter pub add fpdart
# Equatable  能够在Dart中比较物体通常需要覆盖==操作员和hashCode
flutter pub add equatable
┌─────────────────────────────────────────────┐
│ import 'package:equatable/equatable.dart';  │
│ class Person extends Equatable {            │
│   const Person(this.name);                  │
│   final String name;                        │
│   @override                                 │
│   List<Object> get props => [name];         │
│ }                                           │
└─────────────────────────────────────────────┘
# flutter_secure_storage 安全数据存储 为 iOS/macOS 使用钥匙链，为 Android 提供可选的生物识别认证的自定义安全密码，以及针对 Windows、Linux 和 Web 的平台特定安全机制。
flutter pub add flutter_secure_storage
# connectivity_plus 该插件允许Flutter应用发现可用的网络连接类型。
flutter pub add connectivity_plus
# package_info_plus 你可以使用 PackageInfo 查询应用程序包的相关信息，该功能在 iOS 和 Android 平台均可使用
flutter pub add package_info_plus
# url_launcher 启动外部链接
flutter pub add url_launcher




# 结构图如下
features/
└── auth/                       # 认证模块
    ├── data/                   # 数据层：负责获取数据
    │   ├── datasources/        # 数据源（RemoteDataSource, LocalDataSource）//去外部拿数据，然后把它解析成 Data 层的 Model
    │   ├── models/             # 数据模型（DTOs，与 JSON 直接映射）
    │   └── repositories/       # Repository 的具体实现（RepositoryImpl）// 调用 DataSource 拿到 Model，然后将其“翻译”成 Domain 层的 Entity，最后交给 UseCase
    │
    ├── domain/                 # 领域层：核心业务规则（纯 Dart 代码）
    │   ├── entities/           # 业务实体（如 User, Product）
    │   ├── repositories/       # Repository 的抽象接口（Abstract Class）
    │   └── usecases/           # 用例（如 LoginUseCase, GetUserUseCase）
    │
    └── presentation/           # 展示层：UI 与状态
        ├── controllers/        # ViewModel / Notifier（处理状态逻辑）
        ├── pages/              # 页面级 Widget
        └── widgets/            # 模块内专属的自定义组件
