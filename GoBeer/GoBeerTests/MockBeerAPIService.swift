//
//  MockBeerAPIService.swift
//  GoBeerTests
//
//  Created by Himanshu Juneja on 01/09/22.
//

import Foundation
@testable import GoBeer

struct MockBeerAPIService: BeerAPIProtocol {
    let beers: [Test_Beer]
    let error: Error?
    
    init(beers: [Test_Beer]) {
        self.beers = beers
        self.error = nil
    }
    
    init(error: Error) {
        self.error = error
        self.beers = []
    }
    
    func getAllBeers() async throws -> [BeerResponseProtocol] {
        if let error = self.error {
            throw error
        }
        return beers
    }
}
