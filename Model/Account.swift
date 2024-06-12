//
//  Account.swift
//  Mynance
//
//  Created by Kousa, Yahya on 4/2/24.
//

import Foundation

struct Account : Codable
{
    var transactions: [Transaction]
    var balance: Float
}
