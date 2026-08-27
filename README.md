# README\.md

# flutter\_riverpod\_ca

🔥 **Flutter  \| CleanArchitecture \+ MVVM \+ Riverpod \+ Dio**

一套完整、规范、可直接上线的 Flutter 新项目架构模板，严格遵循 Clean Architecture 分层架构，搭配 Riverpod 最新代码生成状态管理，统一项目规范，告别混乱代码。

---

## ✨ 技术栈清单

- **状态管理**：flutter\_riverpod（代码生成模式）

- **网络请求**：dio

- **数据模型**：freezed \+ json\_serializable

- **路由管理**：go\_router

- **本地缓存**：shared\_preferences

- **安全存储**：flutter\_secure\_storage

- **工具拓展**：fpdart、equatable、package\_info\_plus

- **辅助能力**：网络监听、外部链接跳转、资源自动生成

---

## 📦 完整依赖安装命令

### 1\. 状态管理 Riverpod

官方代码生成版本，配合 lint 规范代码写法

```bash
flutter pub add flutter_riverpod
flutter pub add riverpod_annotation
flutter pub add dev:riverpod_generator
flutter pub add dev:build_runner
```

**analysis\_options\.yaml 配置**

```yaml
plugins:
  riverpod_lint: ^latest
```

**代码生成监听命令**

```bash
dart run build_runner watch -d
```

### 2\. 网络请求 Dio

```bash
flutter pub add dio
```

### 3\. 数据模型 Freezed（JSON 序列化）

```bash
flutter pub add freezed_annotation
flutter pub add dev:build_runner
flutter pub add dev:freezed
flutter pub add json_annotation
flutter pub add dev:json_serializable
```

### 4\. 路由管理 GoRouter

```bash
flutter pub add go_router
```

### 5\. 基础工具库

```bash
# 本地普通缓存
flutter pub add shared_preferences

# 资源自动生成
flutter pub add dev:flutter_gen_runner

# 函数式异常处理 Either/Option
flutter pub add fpdart

# 对象等值比较
flutter pub add equatable

# 安全加密存储
flutter pub add flutter_secure_storage

# 网络状态监听
flutter pub add connectivity_plus

# 应用版本信息
flutter pub add package_info_plus

# 外部链接跳转
flutter pub add url_launcher
```

---

## 💡 Equatable 使用示例

自动重写 == 和 hashCode，无需手动覆写

```dart
import 'package:equatable/equatable.dart';

class Person extends Equatable {
  const Person(this.name);

  final String name;

  @override
  List<Object> get props => [name];
}
```

---

## 📂 标准 CleanArchitecture 目录结构

严格分层：数据层 / 领域层 / 展示层，解耦彻底，适合大型项目迭代

```plain
features/
└── auth/                       # 业务模块（可无限扩展其他模块）
    ├── data/                   # 数据层：负责数据获取、解析、存储
    │   ├── datasources/        # 远程/本地数据源（请求接口、读取本地）
    │   ├── models/             # DTO 数据模型（与 JSON 一一映射）
    │   └── repositories/       # Repository 仓库具体实现
    │
    ├── domain/                 # 领域层：核心纯业务逻辑（无 UI、无框架依赖）
    │   ├── entities/           # 核心业务实体
    │   ├── repositories/       # Repository 抽象接口
    │   └── usecases/           # 业务用例（单一职责）
    │
    └── presentation/           # 展示层：UI 页面 + 状态管理
        ├── controllers/        # Riverpod ViewModel / Notifier
        ├── pages/              # 页面主体
        └── widgets/            # 模块内私有组件
```

---

## 🚀 项目启动

```bash
flutter pub get
flutter run
```

---

## 📄 License

MIT License

Free to use for personal and commercial projects\.
