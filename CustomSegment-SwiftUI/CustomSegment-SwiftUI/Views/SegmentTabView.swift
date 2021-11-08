//
//  SegmentTabView.swift
//  CustomSegment-SwiftUI
//
//  Created by Sachin Daingade on 08/11/21.
//

import SwiftUI

struct SegmentTabView: View {
    var optionName: String
    var indexNumber: Int
    @Binding var selectedIndex: Int
    
    var body: some View {
        VStack {
            Text(optionName).foregroundColor(.blue)
                .onTapGesture {
                selectedIndex = indexNumber
            }
            .font(selectedIndex == indexNumber ? .headline : .headline)
            .padding(EdgeInsets(top: 16,
                                leading: 0,
                                bottom: 16,
                                trailing: 0))
            VStack(spacing: 0.2){
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(selectedIndex == indexNumber ? Color.red : Color.clear)
                Rectangle()
                    .background(Color.gray)
                    .frame(height: 1)
            }
        }
    }
}

struct SegmentTabView_Previews: PreviewProvider {
    @State static var selected = 0
    static var previews: some View {
      Group {
        
        SegmentTabView(optionName: "Tab 1",
                        indexNumber: 0,
                        selectedIndex: $selected).previewLayout(.sizeThatFits).environment(\.colorScheme, .dark)
        
        SegmentTabView(optionName: "Tab 1",
                        indexNumber: 0,
                        selectedIndex: $selected).previewLayout(.sizeThatFits).environment(\.colorScheme, .light)
        }
    }
}
