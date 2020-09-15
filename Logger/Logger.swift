//
//  Logger.swift
//  TestAppForFramework
//
//  Created by Vikash Anand on 05/07/20.
//

import Foundation

public enum log {
    case line(_: String)
    case success(_: String)
    case warning(_: String)
    case error(_: String)
    case todo(_: String)
    case url(_: String)
}

postfix operator /

public postfix func / (target: log?) {
    guard let target = target else { return }

    func log<T>(_ emoji: String, _ object: T) {
        #if DEBUG
        print(emoji + " " + String(describing: object))
        #endif
    }

    switch target {
    case .line(let line):
        log("✏️", line)
    case .success(let success):
        log("✅", success)
    case .warning(let warning):
        log("⚠️", warning)
    case .error(let error):
        log("🛑", error)
    case .todo(let todo):
        log("👨🏾‍💻", todo)
    case .url(let url):
        log("🌎", url)
    }
}
