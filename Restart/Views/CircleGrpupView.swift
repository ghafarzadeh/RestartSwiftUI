//
//  CircleGrpupView.swift
//  Restart
//
//  Created by Habib Ghaffarzadeh on 6.08.2022.
//

import SwiftUI

struct CircleGrpupView: View {
    // MARK: - PROPERTY
    
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        } //: ZSTACK
    }
}

struct CircleGrpupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGrpupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
