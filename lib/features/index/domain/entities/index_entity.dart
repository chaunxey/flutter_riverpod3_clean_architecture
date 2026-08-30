import 'package:equatable/equatable.dart';

class IndexEntity extends Equatable {
  // bottom nav index 底部导航索引
  final int bottomNavIndex;

  const IndexEntity({this.bottomNavIndex = 0});

  @override
  List<Object?> get props => [bottomNavIndex];
}
