//
//  RestaurantModel.swift
//  ForsquareProjectBackup
//
//  Created by Liubov Kaper  on 2/21/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import Foundation

struct Data: Codable & Equatable {
    let response: Response
}

struct Response: Codable & Equatable {
    let venues: [Venue]
}

struct Venue: Codable & Equatable {
    let name: String
    let location: Location
    let categories: [Category]
    let hasPerk: Bool
    let delivery: Delivery?
}

struct Location: Codable & Equatable {
    let address: String
    let lat: Double
    let lng: Double
    let postalCode: String
    let city: String
    let state: String
    let country: String
    let formattedAddress: [String]
    let neighborhood: String?
    let crossStreet: String?
}
struct Category: Codable & Equatable {
    let shortName: String
}

struct Delivery: Codable & Equatable {
    let id: String
    let url: String
    let provider: Provider
}

struct Provider: Codable & Equatable{
    let name: String
    //let icon: ProviderIcon
}

struct ApiKey {
    static let clientID = "FJPWRHQXG3GC0KHIEQVPLNCUZ455TW0PHUIZAZ5SOLLFUVWK"
    static let clientSecret = "R1SGV3KMNYDMWI4SY1W2QWWN43GRQ2PUF2XJHRMA5TAR4ZVI"
}
