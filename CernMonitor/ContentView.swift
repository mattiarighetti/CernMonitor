//
//  ContentView.swift
//  CernMonitor
//
//  Created by Mattia Righetti on 04/10/2020.
//

import SwiftUI

struct ContentView: View {
    
    var experiments: [Experiment] = experimentData
    
    var body: some View {
        NavigationView {
            List(experiments) { experiment in
                ExperimentCell(experiment: experiment)
            }
            .navigationBarTitle(Text("Experiments"))
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(experiments: experimentData)
    }
}

struct ExperimentCell: View {
    let experiment: Experiment
    var body: some View {
        return NavigationLink(destination: ExperimentDetail(name: experiment.name, monitorUrl: experiment.monitorUrl)) {
            Text(experiment.name)
        }
    }
}
