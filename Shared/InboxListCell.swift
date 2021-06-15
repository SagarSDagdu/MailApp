//
//  InboxListCell.swift
//  MailApp
//
//  Created by Sagar Dagdu on 6/14/21.
//

import SwiftUI

struct InboxListCell: View {
    var body: some View {
        VStack {
            HStack {
                Text("Apple")
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
                Label("Yesterday", systemImage: "chevron.right")
                    .font(.caption)
                    .labelStyle(HorizontalCustomLabelStyle())
            }
            
            HStack {
                Text("Information about your Apple ID")
                .font(.subheadline)
                .fontWeight(.medium)
                
                Spacer()
                
                Image(systemName: "paperclip")
                    .resizable()
                    .frame(width: 10, height: 10)
            }
            
            Text("Your Apple ID Information has been updated. Dear Apple customer, we wish to inform you that the following changes have been made to your Apple ID")
            .lineLimit(2)
            .font(.footnote)
            .foregroundColor(.gray)
        }
    }
}

struct InboxListCell_Previews: PreviewProvider {
    static var previews: some View {
        InboxListCell()
            .preferredColorScheme(.dark)
    }
}

struct HorizontalCustomLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}
