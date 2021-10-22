//
//  Parser.swift
//  mvvmDemo
//
//  Created by vasanth on 22/10/21.
//

import Foundation


struct Parser {
    
    func parse(completion:@escaping ([EmployeeData]) -> ()) {
        let api = URL(string: "https://mocki.io/v1/8e6c58bf-0d6e-45dd-b4a3-ff31ad8aab30")
        
        URLSession.shared.dataTask(with: api!) { data, response, error in
            if error != nil {
                print("error---->\(String(describing: error?.localizedDescription))")
                return
            }
            do {
                if let data = data {
                    let results = try JSONDecoder().decode(Root.self, from: data)
                    print("results---->\(results)")
                    completion(results.data)
                }else {
                    print("something wrong in dta")
                }
            } catch  {
                
            }
        }.resume()
    }
}
