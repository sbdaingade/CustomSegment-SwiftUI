//
//  CustomSegmentView.swift
//  CustomSegment-SwiftUI
//
//  Created by Sachin Daingade on 08/11/21.
//

import SwiftUI

public enum Tabs: Int {
    case tab1 = 0
    case tab2
    case tab3
}

struct CustomSegmentView: View {
    
    @State private var selectedIndex = 0
    
    private var titles = ["Tab 1",
                          "Tab 2",
                          "Tab 3"]
    var body: some View {
       
            VStack {
                HStack(spacing: 0) {
                    ForEach(self.titles.indices,
                            id: \.self) { index in
                        SegmentTabView(optionName: self.titles[index],
                                       indexNumber: index,
                                       selectedIndex: $selectedIndex)
                    }
                }
                selectedTab(index: Tabs(rawValue: selectedIndex)!)
            }
       
    }
    
    @ViewBuilder private func selectedTab(index: Tabs) -> some View {
        switch index {
        case .tab1:
            VStack {
                Text("Tab 1")
                    .padding(EdgeInsets(top: 100,
                                        leading: 16,
                                        bottom: 0,
                                        trailing: 0))
            }
        case .tab2:
            VStack {
                Text("Tab 2")
                    .padding(EdgeInsets(top: 100,
                                        leading: 16,
                                        bottom: 0,
                                        trailing: 0))
            }
        case .tab3:
            VStack {
                Text("Tab 3")
                    .padding(EdgeInsets(top: 100,
                                        leading: 16,
                                        bottom: 0,
                                        trailing: 0))
            }
        }
    }
}

struct CustomSegmentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSegmentView()
    }
}
