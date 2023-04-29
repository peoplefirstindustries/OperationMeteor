//
//  ContactUsView.swift
//  CreativeCounselingPlus
//
//  Created by Richard Crichlow on 4/1/23.
//

import SwiftUI

struct ContactUsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Group {
                    Text("Contact Us")
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    Text("Creative Counseling & Studio")
                        .font(.title2)
                        .fontWeight(.bold)

                    Text("Address:")
                        .font(.headline)
                    Text("1941 S. 42nd Street")
                    Text("Suite 542")
                    Text("Omaha, NE, 68105")
                }
                
                Group {
                    Text("Phone:")
                        .font(.headline)
                    Text("402-401-4445")

                    Text("Fax:")
                        .font(.headline)
                    Text("402-702-0583")

                    Text("Email:")
                        .font(.headline)
                    Text("info@creativecounselingandstudio.com")
                }

                VStack(alignment: .leading) {
                    Text("Social Media:")
                        .font(.headline)
                    
                    HStack {
                        // Facebook icon
                        Image("facebook_icon")
                            .resizable()
                            .frame(width: 32, height: 32)
                        
                        // Instagram icon
                        Image("instagram_icon")
                            .resizable()
                            .frame(width: 32, height: 32)

                        // Twitter icon
                        Image("twitter_icon")
                            .resizable()
                            .frame(width: 32, height: 32)

                        // LinkedIn icon
                        Image("linkedin_icon")
                            .resizable()
                            .frame(width: 32, height: 32)
                    }
                }

                Spacer()
            }
            .padding()
        }
        .navigationTitle("Contact Us")
    }
}

struct ContactUsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactUsView()
    }
}
