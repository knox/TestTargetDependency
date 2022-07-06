import XCTest
@testable import TestTargetDependency
import TestTargetDependencyLib

final class TestTargeeDependencyTests: XCTestCase {
    func testExample() {
        XCTAssertNotNil(AppDelegate.example)
    }

    func testExtension() {
        XCTAssertNotNil(UIWindow(rootViewController: UIViewController()).rootViewController)
    }
}
