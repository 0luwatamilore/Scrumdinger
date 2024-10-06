//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Tamilore Oladejo on 10/5/24.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List(scrums) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
        .navigationTitle("Scrums")
        .toolbar{ EditButton() }
        
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
