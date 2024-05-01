import XCTest
@testable import CatFactsNetworking

final class CatFactsNetworkingTests: XCTestCase {

    func testFetchCatFacts() {
        let expectation = XCTestExpectation(description: "Fetch Cat Facts")

        let api = CatFactsAPI()
        api.fetchCatFacts { facts, error in
            XCTAssertNotNil(facts, "Facts should not be nil")
            XCTAssertNil(error, "Error should be nil")

            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 10.0) // Adjust timeout as needed
    }

    // Add more test cases as needed
}
