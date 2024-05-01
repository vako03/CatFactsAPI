//
//  File.swift
//  
//
//  Created by vako on 02.05.24.
//
import Foundation
import Alamofire

public struct CatFactsAPI {
    private let baseURL = "https://catfact.ninja/"

    public func fetchCatFacts(completion: @escaping ([String]?, Error?) -> Void) {
        let url = "\(baseURL)facts"
        AF.request(url).validate().responseDecodable(of: CatFactsResponse.self) { response in
            switch response.result {
            case .success(let factsResponse):
                let factTexts = factsResponse.data.map { $0.fact }
                completion(factTexts, nil)
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
}

struct CatFactsResponse: Decodable {
    let data: [CatFact]
}

struct CatFact: Decodable {
    let fact: String
}
