//
//  RandomNumberStream.swift
//  RandomNumberStream
//
//  Created by Christian on 25.05.24.
//

import Foundation

func randomNumberStream(maxNumbers: Int) -> AsyncThrowingStream<Int, Error> {
    var index = 0
    
    return AsyncThrowingStream {
        try await Task.sleep(nanoseconds: 1 * 1_000_000_000)
        let random = Int.random(in: 1...100)
        if index >= maxNumbers {
            return nil
        }
        index += 1
        return random
    }
}
