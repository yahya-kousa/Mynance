//
//  Transaction.swift
//  Mynance
//
//  Created by Kousa, Yahya on 4/2/24.
//

import Foundation

struct Transaction: Codable
{
    var amount: Float
    var category: String
    var description: String
    var date: Date
}
