//
//  Stacks.swift
//  
//
//  Created by Dilpreet Singh on 29/06/24.
//

public struct Stack<Element> {

  private var storage: [Element] = []

  public init() { }

  public init(_ elements: [Element]) {
    storage = elements
  }

  public mutating func push(_ element: Element) {
    storage.append(element)
  }

  @discardableResult
  public mutating func pop() -> Element? {
    storage.popLast()
  }

  public func peek() -> Element? {
    storage.last
  }

  public var isEmpty: Bool {
    peek() == nil
  }
}

extension Stack: CustomDebugStringConvertible {
  public var debugDescription: String {
    """
    ----top----
    \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
    -----------
    """
  }
}

extension Stack: ExpressibleByArrayLiteral {
  public init(arrayLiteral elements: Element...) {
    storage = elements
  }
}
