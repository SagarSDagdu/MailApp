//
//  InboxMailDetailView.swift
//  MailApp
//
//  Created by Sagar Dagdu on 6/14/21.
//

import SwiftUI

struct InboxMailDetailView: View {
    var body: some View {
        VStack {
            Text("Title")
                .font(.title3)
            Text("Long Text").font(.body)
        }.navigationTitle("Apple Mail")
    }
}

struct InboxMailDetailView_Previews: PreviewProvider {
    static var previews: some View {
        InboxMailDetailView()
    }
}
