//
//  ContentView.swift
//  SSB_Stage_Striker
//
//  Created by Work on 8/2/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingX = true
    @State private var showingXArray = [true, true, true]
    @State private var starterStages = ["stage_2_BattleField", "stage_2_End", "stage_2_Animal_Village+us_en"]
    let xIcon = "xmark.circle"
    let imageWidth: CGFloat = 250
    let imageHeight: CGFloat = 200
    
    let columns = [
        GridItem(.adaptive(minimum:150))
    ]
    
    var body: some View {
        
        LazyVGrid(columns:columns, spacing: 20){
            /*
            ZStack{ //ZStack for Battlefield Only
            
            Button{
                toggleXArray(0)
            } label: {Image(starterStages[0])
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    //.frame(width: imageWidth, height: imageHeight, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.green, lineWidth: 6)
                    )
            }
            
            if !showingXArray[0]{ //this allows the X to hide when toggled
                Button{
                    toggleXArray(0)
                }
            label:
                {Image(systemName: xIcon)
                .resizable()
                .foregroundColor(Color.red)
                .frame(width: 100.0, height: 100.0)
                }
            }
        }   //Battlefield
            ZStack{ //ZStack for FD Only
            
            Button{
                toggleXArray(1)
            } label: {Image(starterStages[1])
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    //.frame(width: imageWidth, height: imageHeight, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.green, lineWidth: 6)
                    )
            }
            
            if !showingXArray[1]{ //this allows the X to hide when toggled
                Button{
                    toggleXArray(1)
                }
            label:
                {Image(systemName: xIcon)
                .resizable()
                .foregroundColor(Color.red)
                .frame(width: 100.0, height: 100.0)
                }
            }
        }   //FD
            ZStack{ //ZStack for Smashville
            
            Button{
                toggleXArray(2)
            } label: {Image(starterStages[2])
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    //.frame(width: imageWidth, height: imageHeight, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.green, lineWidth: 6)
                    )
            }
            
            if !showingXArray[2]{ //this allows the X to hide when toggled
                Button{
                    toggleXArray(2)
                }
            label:
                {Image(systemName: xIcon)
                .resizable()
                .foregroundColor(Color.red)
                .frame(width: 100.0, height: 100.0)
                }
            }
        }   //Smashville
            */
            ForEach(0..<3) {iteration in
                ZStack{ //ZStack for Battlefield Only
                
                Button{
                    toggleXArray(iteration)
                } label: {Image(starterStages[iteration])
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        //.frame(width: imageWidth, height: imageHeight, alignment: .center)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.green, lineWidth: 6)
                        )
                }
                
                if !showingXArray[iteration]{ //this allows the X to hide when toggled
                    Button{
                        toggleXArray(iteration)
                    }
                label:
                    {Image(systemName: xIcon)
                    .resizable()
                    .foregroundColor(Color.red)
                    .frame(width: 100.0, height: 100.0)
                    }
                }
            }
            }
                
        } .padding(.horizontal)
        
        
    }

    func toggleXArray(_ number: Int){
        if showingXArray[number] == false{
            showingXArray[number] = true
            print("showing \(number)")
        }
        else{
            showingXArray[number] = false
            print("hiding \(number)")
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
