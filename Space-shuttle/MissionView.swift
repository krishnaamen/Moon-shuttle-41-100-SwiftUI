//
//  MissionView.swift
//  Space-shuttle
//
//  Created by min phone on 22/02/2023.
//

import SwiftUI

struct MissionView: View {
    let mission: Mission
    var body: some View {
        GeometryReader{ geometry in
            ScrollView {
                VStack{
                    // mission image
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.6)
                        .padding(.top)
                    
                    
                    
                    VStack(alignment: .leading){
                        Text("Mission HighLights")
                            .font(.title.bold())
                            .padding(.bottom,5)
                        Text(mission.description)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom)
            }
            
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
    }
}

struct MissionView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        MissionView(mission: missions[0])
            .preferredColorScheme(.dark)
    }
}
