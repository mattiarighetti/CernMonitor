//
//  Experiment.swift
//  CernMonitor
//
//  Created by Mattia Righetti on 04/10/2020.
//

import SwiftUI
import SDWebImageSwiftUI

struct ExperimentDetail: View {
    var name: String
    var monitorUrl: String

    var body: some View {
        VStack {
            Text(name)
                .font(.title)
            Divider()
            WebImage(url: URL(string: monitorUrl))
                .onSuccess { image, data, cacheType in
                }
                .resizable()
                .placeholder(Image(systemName: "photo"))
                .placeholder {
                    Rectangle().foregroundColor(.gray)
                }
                .indicator(.activity)
                .transition(.fade(duration: 0.5))
                .scaledToFit()
                .frame(width: 300, height: 300, alignment: .center)
        }.padding().navigationBarTitle(Text(name), displayMode: .inline)
    }
}

struct ExperimentDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExperimentDetail(name: "Alice", monitorUrl: "")
    }
}
