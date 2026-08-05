//
// ServiceDenyEntry+Versions.swift
//

import Fluent

extension ServiceDenyEntry {
  public enum v20260805 {
    // schema
    public static let schemaName = "service_deny_entries"

    // properties
    public static let id = FieldKey(stringLiteral: "id")
    public static let subject = FieldKey(stringLiteral: "subject")
    public static let service = FieldKey(stringLiteral: "service")
    public static let createdAt = FieldKey(stringLiteral: "createdAt")
  }
}
