//
// ServiceDenyEntry.swift
//

import Fluent
import Vapor

/// An explicit deny of one subject's access to one service. Absence of a row means access is
/// allowed - see design.md's "Per-service access: default-allow + deny-list" decision. Keyed on
/// the Auth0 `subject` directly, same rationale as `UserRole`.
public final class ServiceDenyEntry: Model {
  public static let schema = ServiceDenyEntry.v20260805.schemaName

  @ID
  public var id: UUID?

  @Timestamp(key: ServiceDenyEntry.v20260805.createdAt, on: .create)
  public var createdAt: Date?

  @Field(key: ServiceDenyEntry.v20260805.subject)
  public var subject: String

  @Field(key: ServiceDenyEntry.v20260805.service)
  public var service: String

  public init() {}

  public init(id: UUID? = nil, subject: String, service: String) {
    self.id = id
    self.subject = subject
    self.service = service
  }
}

extension ServiceDenyEntry: Content {}
