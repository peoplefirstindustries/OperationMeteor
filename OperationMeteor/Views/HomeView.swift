//
//  HomeView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        ZStack {
            Color(.sRGB, red: 0.9, green: 0.9, blue: 0.9, opacity: 0.3)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                NavigationLink("Volunteer Sign Up", value: NavigationPath.volunteerSignUp)
                // Add other NavigationLinks for other views
                
                Text("Welcome to Operation Meteor!")
                    .font(.largeTitle).lineLimit(nil)
                    .minimumScaleFactor(0.5)
                    .fontWeight(.bold)
                
                Text("Explore our upcoming projects:")
                    .font(.headline).lineLimit(nil)
                    .minimumScaleFactor(0.5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 15) {
                        ForEach(upcomingProjects, id: \.self) { project in
                            Text(project)
                                .font(.body).lineLimit(nil)
                                .minimumScaleFactor(0.5)
                                .padding(.leading, 10)
                        }
                    }
                }
            }
            .padding()
        }
    }
    
    let upcomingProjects = [
            "MeteorHealth",
            "MeteorEducation",
            "MeteorFinance",
            "MeteorShop",
            "MeteorRemote",
            "MeteorFreelance",
            "MeteorTravel",
            "MeteorLanguage",
            "MeteorCyber",
            "MeteorMarket",
            "PantherEco",
            "PantherJustice",
            "PantherHomes",
            "PantherRights",
            "PantherEnergy",
            "PantherGig",
            "PantherTalent",
            "PantherMentor",
            "PantherFood",
            "PantherWellness",
            "PantherSpace",
            "PantherCrowd",
            "PantherConnect",
            "PantherVoice",
            "PantherParent",
            "PantherHobby",
            "PantherRepair",
            "PantherStudy",
            "PantherSelfCare",
            "PantherGreen",
            "PantherCharity",
            "PantherFashion",
            "PantherRecovery",
            "PantherCook",
            "PantherSkill",
            "PantherNeighbor",
            "PantherGrowth",
            "PantherAdventure",
            "PantherCraft",
            "PantherUpcycle",
            "PantherGame",
            "PantherMusic",
            "PantherHistory",
            "PantherPet",
            "PantherElder",
            "PantherEvents",
            "PantherSafety",
            "PantherCulture",
            "PantherArts",
            "PantherSports",
            "PantherGarden",
            "PantherVolunteer",
            "PantherRead",
            "PantherSpirituality",
            "PantherFashionTech",
            "PantherTransport",
            "PantherInnovate",
            "PantherAid",
            "PantherAgriTech",
            "PantherSmartCity",
            "PantherSocialImpact",
            "PantherBioTech",
            "PantherRobotics",
            "PantherCleanTech",
            "PantherVR",
            "PantherAI",
            "PantherIoT",
            "PantherData",
            "PantherCrypto",
            "PantherMedTech",
            "PantherSpaceTech",
            "PantherQuantum",
        ]
    
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
