//
//  ContentView.swift
//  Shared
//
//  Created by Sagar Dagdu on 6/14/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView {
            List {
                InboxListCell()
                InboxListCell()
                InboxListCell()
                InboxListCell()
                InboxListCell()
                InboxListCell()
                InboxListCell()
                
            }.navigationTitle("Inbox")
                .searchable("Search inbox", text: $searchText) {
                    Text("From Apple")
                    Text("From Google")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
