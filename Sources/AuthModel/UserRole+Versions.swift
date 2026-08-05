//
// UserRole+Versions.swift
//

import Fluent

extension UserRole {
  public enum v20260805 {
    // schema
    public static let schemaName = "user_roles"

    // properties
    public static let id = FieldKey(stringLiteral: "id")
    public static let subject = FieldKey(stringLiteral: "subject")
    public static let role = FieldKey(stringLiteral: "role")
    public static let createdAt = FieldKey(stringLiteral: "createdAt")
  }
}
