//
//  schoolLevel.swift
//  DataInList
//
//  Created by Michał Grycki on 20/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation


struct singleLesson {
    let name: String
    let duration: Int
}

struct schoolLevel {
    let clas: String
    let lessonsList: [singleLesson]
}

extension schoolLevel {
    static func all() -> [schoolLevel] {
        return [schoolLevel(clas: "Klasa 6", lessonsList: [singleLesson(name: "WF", duration: 45), singleLesson(name: "PL", duration: 35)]), schoolLevel(clas: "Klasa 7", lessonsList: [singleLesson(name: "PR", duration: 90), singleLesson(name: "WF", duration: 85)])]
    }
}
