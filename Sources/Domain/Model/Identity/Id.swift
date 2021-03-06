//
//  Id.swift
//  CQRS Swift Library
//
//  Created by Fiser on 4/5/18.
//
import Foundation

public protocol Id
{
    init(id:String?)
    var id:String {get}
}

public protocol AggregateRootId : Id
{
    
}

public protocol EntityId : Id
{
    
}

extension Id {
    init(id:String?) {
        let id = id != nil ? id : UUID().uuidString
        self.init(id: id)
    }

    var hashValue: Int {
        return self.id.hashValue
    }
}

func ==<T : Id>(lhs: T, rhs: T) -> Bool {
    return lhs.id == rhs.id
}
func !=<T : Id>(lhs: T, rhs: T) -> Bool {
    return lhs.id != rhs.id
}
