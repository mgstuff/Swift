//
//  ContentView.swift
//  NewState
//
//  Created by Michał Grycki on 18/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var tasks = [Task]()
    
    private func addTask() {
        self.tasks.append(Task(name: "Clean your desk"))
    }
    
    var body: some View {
        List {
            Button(action: addTask) {
                Text("Add Task")
            }
            ForEach(tasks) { task in
                Text(task.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
