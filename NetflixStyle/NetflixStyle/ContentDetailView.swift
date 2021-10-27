//
//  ContentDetailView.swift
//  NetflixStyle
//
//  Created by Junseok Lee on 2021/10/27.
//

import SwiftUI

struct ContentDetailView: View {
    @State var item: Item?
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ZStack(alignment: .bottom){
                if let item = item{
                    Image(uiImage: item.image)
                        .resizable()
                        .aspectRatio(contentMode : .fit)
                        .frame(width: 200)
                    Text(item.description)
                        .font(.caption)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding()
                        .foregroundColor(.primary)
                        .background(Color.primary
                                        .colorInvert()
                                        .opacity(0.75))
                }else{
                    Color.white
                }
            }
        }
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let item0 = Item(description: "흥미진진 , 판타지, 애니메이션, 액션, 멀티캐스팅", imageName: "poster0")
        ContentDetailView(item: item0)
    }
}
