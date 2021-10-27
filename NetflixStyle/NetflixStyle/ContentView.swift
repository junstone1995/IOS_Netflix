//
//  ContentView.swift
//  NetflixStyle
//
//  Created by Junseok Lee on 2021/10/27.
//

import SwiftUI

struct ContentView: View {
    let titles = ["Netflix Sample App"]
    
    var body: some View {
        NavigationView{
            List(titles, id: \.self){
                let netflixVC = HomeViewControllerRepresentable()
                    .navigationBarHidden(true)
                    .edgesIgnoringSafeArea(.all)
                NavigationLink($0, destination: netflixVC)
            }
            .navigationTitle("SwitfUI to UIKit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
