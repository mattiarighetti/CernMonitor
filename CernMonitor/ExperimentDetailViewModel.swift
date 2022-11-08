//
//  ExperimentDetailViewModel.swift
//  CernMonitor
//
//  Created by Mattia Righetti on 08/11/22.
//

import Foundation

class ExperimentDetailViewModel: ObservableObject {
    @Published var now: Date = Date()
    
    var timer: Timer?
    
    init() {
        timer = Timer.scheduledTimer(withTimeInterval: 10, repeats: true, block: { _ in
            self.refresh()
        })
    }
    
    deinit {
        timer?.invalidate()
    }
    
    func refresh() {
        now = Date()
    }
}
