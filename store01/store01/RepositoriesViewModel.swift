//
//  RepositoriesViewModel.swift
//  store01
//
//  Created by xmshen on 2022/9/13.
//

import Foundation
import Combine

struct Repository: Codable {
    let name: String
    let description: String
}

struct Repositories: Codable {
    let items: [Repository]
}

class RepositoriesViewModel: NSObject, ObservableObject {
    func searchRepositories(_ resultCallback: @escaping (String?) -> Void) {
        let url = URL(string: "https://api.github.com/search/repositories?q=swift")!
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let `data` = data {
                resultCallback(String(data: data, encoding: .utf8))
            } else {
                resultCallback(nil)
            }
            
        }
        task.resume()
    }
    
    func searchRepositoriesAsynchronously() async -> String? {
        let url = URL(string: "https://api.github.com/search/repositories?q=swift")!
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return String(data: data, encoding: .utf8)
        } catch {
            return nil
        }
    }
    
    func repositories(from data: Data) -> [Repository] {
        let decoder = JSONDecoder()
        
        let repos: [Repository] = (try? decoder.decode(Repositories.self, from: data).items) ?? []
        
        return repos
    }
}
