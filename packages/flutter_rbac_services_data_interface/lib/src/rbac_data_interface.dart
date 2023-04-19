import 'package:flutter_rbac_services_data_interface/flutter_rbac_services_data_interface.dart';

abstract class RbacDataInterface {
  RbacDataInterface._();

  Future<void> addUserPermission(String userId, String permission);
  Future<void> revokePermission(String userId, String permission);
  Future<void> grantRole(String userId, RoleDataModel role);
  Future<void> revokeRole(String userId, RoleDataModel role);
  Future<Set<String>> getUserRoles(String userId);
  Future<List> getUserRolePermissions(String userId);
  Future<Set<String>> getUserPermissions(String userId);
}
