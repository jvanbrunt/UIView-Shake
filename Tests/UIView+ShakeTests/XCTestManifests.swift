import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(UIView_ShakeTests.allTests),
    ]
}
#endif
