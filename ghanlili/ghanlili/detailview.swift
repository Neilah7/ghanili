//
//  detailview.swift
//  ghanlili
//
//  Created by maryam almijlad on 08/01/2023.
//

//import SwiftUI
//@State var songwriter: String = ""
//struct detailview: View {
//    var body: some View {
//        TextField("Write a note ...", text: songwriter)
//    }
//}
//
//struct detailview_Previews: PreviewProvider {
//    static var previews: some View {
//        detailview()
//    }
//}
import SwiftUI

struct Splashscreen: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
     
        if isActive {
            friendsList()
        } else {
            VStack {
                VStack {
                    Image("splashgh")
                        .resizable()
                        .frame(width: 250, height: 500)

                    
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
            
            
        }
    }
}



struct Splashscreen_Previews: PreviewProvider {
    static var previews: some View {
        Splashscreen()
    }
}
