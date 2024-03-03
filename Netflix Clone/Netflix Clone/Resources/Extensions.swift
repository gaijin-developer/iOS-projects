//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Frank Entsie on 2024/02/18.
//

import Foundation

extension String {
    func capitalizeFirstLetter()->String{
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
