//
//  Utilities.swift
//  TaskManageriOS
//
//  Created by Matthew Riley on 11/2/18.
//  Copyright © 2018 Matthew Riley. All rights reserved.
//

import Foundation


func formatDate(_ date: Date) -> String {
    let formatter = DateFormatter()
    
    formatter.dateFormat = "MMM d, yyyy"
    
    let formattedString = formatter.string(from: date)
    
    return formattedString
}





