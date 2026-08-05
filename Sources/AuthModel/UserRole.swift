//
// UserRole.swift
//

import Fluent
import Vapor

/// A single role assignment. A subject with no rows here defaults to `Role.user` (see
/// `design.md`'s "Role model" decision) - this table only holds assignments beyond that
/// default. Keyed on the Auth0 `subject` directly rather than a foreign key into `users-api`'s
/// `User` table - `auth-api` holds no profile data of its own, so it has nothing to relate to
/// (see `sweetrpg/platform`'s `split-authz-into-auth-api` change design.md for why).
public final class UserRole: Model {
  public static let schema = UserRole.v20260805.schemaName

  @ID
  public var id: UUID?

  @Timestamp(key: UserRole.v20260805.createdAt, on: .create)
  public var createdAt: Date?

  @Field(key: UserRole.v20260805.subject)
  public var subject: String

  @Field(key: UserRole.v20260805.role)
  public var role: Role

  public init() {}

  public init(id: UUID? = nil, subject: String, role: Role) {
    self.id = id
    self.subject = subject
    self.role = role
  }
}

extension UserRole: Content {}
