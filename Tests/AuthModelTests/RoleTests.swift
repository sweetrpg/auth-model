//
// RoleTests.swift
//

import XCTest

@testable import AuthModel

final class RoleTests: XCTestCase {
  func testAllCasesIncludeTheFixedRoleSet() {
    XCTAssertEqual(
      Set(Role.allCases),
      [.user, .submitter, .editor, .moderator, .approver, .admin])
  }

  func testRawValueRoundTrips() {
    for role in Role.allCases {
      XCTAssertEqual(Role(rawValue: role.rawValue), role)
    }
  }
}
