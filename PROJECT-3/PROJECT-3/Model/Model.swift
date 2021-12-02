//
//  Model.swift
//  PROJECT-3
//
//  Created by Abdoalaziz Alshammari on 02/12/2021.
//

import Foundation
import UIKit
// protocol for app 
protocol Company {
    
    var companiesImages : [CompanyTypes] {get}
    
}
//  cases for compaines name assigned to its image
enum CompanyTypes:String {
    
    case apple = "Apple-Logo"
    case huawei = "Huawei-Logo"
    case samsunge = "Logo-Samsung"
    case google = "Google-Logo"
    case nokia = "Nokia-Logo"
    case oneplus = "OnePlus-logo"
    case lg = "LG-Logo"
}
//confirm to protocol
struct Companies: Company {
    var companiesImages : [CompanyTypes] = [.apple,.huawei,.samsunge,.google,.nokia,.oneplus,.lg]
}

