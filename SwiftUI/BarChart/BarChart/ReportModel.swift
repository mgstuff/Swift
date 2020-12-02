//
//  ReportModel.swift
//  BarChart
//
//  Created by Michał Grycki on 19/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation


struct Report: Hashable {
    let year: String
    let revenue: Double
}

extension Report {
    static func all() -> [Report] {
        return [
            Report(year: "2002", revenue: 2500),
            Report(year: "2003", revenue: 4500),
            Report(year: "2004", revenue: 6500)
        ]
    }
}
