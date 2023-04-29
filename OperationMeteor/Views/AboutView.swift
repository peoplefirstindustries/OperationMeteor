//
//  AboutView.swift
//  CreativeCounselingPlus
//
//  Created by Richard Crichlow on 4/1/23.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("About Us")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Creative Counseling & Studio is a mental health practice that offers a variety of services to meet your needs. Our practice is unique in that we also offer art therapy and doula services, providing a comprehensive and holistic approach to mental health.")
                    .font(.body)
                
                Text("Our Therapists")
                    .font(.title2)
                    .fontWeight(.bold)
                
                TherapistProfileView(name: "Desiree Valentine", credentials: "LIMHP, ATR-BC, MFT, CD", description: "Desiree is the founder of Creative Counseling & Studio. She is a Licensed Independent Mental Health Practitioner, a Board Certified Art Therapist, a Marriage and Family Therapist, and a Certified Doula.")
                
                TherapistProfileView(name: "Laura Churchill", credentials: "PLMHP", description: "Laura is a Provisional Licensed Mental Health Practitioner. She has experience working with children, teens, and adults in a variety of settings, including community mental health, substance abuse treatment, and school-based therapy.")
                
                TherapistProfileView(name: "Emily Poskochil", credentials: "LIMHP, LMHC", description: "Emily is a Licensed Independent Mental Health Practitioner and Licensed Mental Health Counselor. She has experience working with children, adolescents, adults, and families in outpatient settings, addressing issues such as anxiety, depression, and trauma.")
                
                TherapistProfileView(name: "Brittany Dyer", credentials: "LIMHP, LMHC", description: "Brittany is a Licensed Independent Mental Health Practitioner and Licensed Mental Health Counselor. She has experience working with individuals, couples, and families, addressing a variety of issues, including anxiety, depression, grief, and trauma.")
                
                TherapistProfileView(name: "Ashley Hall", credentials: "LIMHP", description: "Ashley is a Licensed Independent Mental Health Practitioner. She has experience working with individuals of all ages, addressing issues such as depression, anxiety, trauma, and substance abuse.")
                
                Spacer(minLength: 50)
            }
            .padding()
        }
        .navigationTitle("About Us")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
