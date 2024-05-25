//
//  main.swift
//  RandomNumberStream
//
//  Created by Christian on 24.05.24.
//

import Foundation

let runLoop = CFRunLoopGetCurrent()
let numbersCount = 10

Task {
    print("Random numbers:")
    for try await randomNumber in randomNumberStream(maxNumbers: numbersCount) {
        print(randomNumber)
    }
    CFRunLoopStop(runLoop)
}
CFRunLoopRun()
