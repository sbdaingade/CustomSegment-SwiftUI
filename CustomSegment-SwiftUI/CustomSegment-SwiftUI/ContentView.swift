//
//  ContentView.swift
//  CustomSegment-SwiftUI
//
//  Created by Sachin Daingade on 08/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack{
                CustomSegmentView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
