//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Frank Entsie on 2024/02/17.
//

import Foundation
struct Constants{
    static let API_KEY = "4257fb71"
    static let BASE_URL = "https://www.omdbapi.com/?apikey=4257fb71&s=all&page="
    static let SEARCH_URL = "https://www.omdbapi.com/?apikey=4257fb71&page=1&s="
}
enum APIError: Error{
    case failedToGetData
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[MovieItem],Error>)->Void){
        
        guard let url = URL(string: "\(Constants.BASE_URL)\(1)")else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data,error == nil else{
                return
            }
            do {
                let results = try JSONDecoder().decode(Movie.self,from: data)
                completion(.success(results.Search))
//                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
//                print(results)
            }catch{
                completion(.failure(APIError.failedToGetData))
            }
            
        }
        
        task.resume()
    }
    
    func getTrendingTVs(completion: @escaping (Result<[MovieItem], Error>)->Void){
        guard let url = URL(string: "\(Constants.BASE_URL)\(2)") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data,error == nil else {
                return
            }
            do{
                let results = try JSONDecoder().decode(Movie.self, from: data)
                completion(.success(results.Search))
//                completion(.success(results.Search))
            }catch{
                completion(.failure(APIError.failedToGetData))
            }
        }
        
        task.resume()
    }
    
    func getUpcomingMovies(completion: @escaping (Result<[MovieItem], Error>)->Void){
        guard let url = URL(string: "\(Constants.BASE_URL)\(3)") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data,error == nil else {
                return
            }
            do{
                let results = try JSONDecoder().decode(Movie.self, from: data)
                completion(.success(results.Search))
//                completion(.success(results.Search))
            }catch{
                completion(.failure(APIError.failedToGetData))
            }
        }
        
        task.resume()
    }
    func getPopularMovies(completion: @escaping (Result<[MovieItem], Error>)->Void){
        guard let url = URL(string: "\(Constants.BASE_URL)\(4)") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data,error == nil else {
                return
            }
            do{
                let results = try JSONDecoder().decode(Movie.self, from: data)
                completion(.success(results.Search))
//                completion(.success(results.Search))
            }catch{
                completion(.failure(APIError.failedToGetData))
            }
        }
        
        task.resume()
    }
    
    func getTopRatedMovies(completion: @escaping (Result<[MovieItem], Error>)->Void){
        guard let url = URL(string: "\(Constants.BASE_URL)\(4)") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data,error == nil else {
                return
            }
            do{
                let results = try JSONDecoder().decode(Movie.self, from: data)
         
                completion(.success(results.Search))
            }catch{
                completion(.failure(APIError.failedToGetData))
            }
        }
        
        task.resume()
    }
    
    func getDiscoverMovies(completion: @escaping (Result<[MovieItem], Error>)->Void){
        guard let url = URL(string: "\(Constants.SEARCH_URL)\("the matrix")") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data,error == nil else {
                return
            }
            do{
                let results = try JSONDecoder().decode(Movie.self, from: data)
         
                completion(.success(results.Search))
            }catch{
                completion(.failure(APIError.failedToGetData))
            }
        }
        
        task.resume()
    }
    
}
