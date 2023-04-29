//
//  TherapistProfileView.swift
//  CreativeCounselingPlus
//
//  Created by Richard Crichlow on 4/8/23.
//

import SwiftUI

struct TherapistProfileView: View {
    let name: String
    let credentials: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(name)
                .font(.headline)
            Text(credentials)
                .font(.subheadline)
                .foregroundColor(.gray)
            Text(description)
                .font(.body)
        }
    }
}

struct TherapistProfileView_Previews: PreviewProvider {
    static var previews: some View {
        TherapistProfileView(name: "Desiree Valentine", credentials: "LIMHP, ATR-BC, MFT, CD", description: "Desiree is the founder of Creative Counseling & Studio. She is a Licensed Independent Mental Health Practitioner, a Board Certified Art Therapist, a Marriage and Family Therapist, and a Certified Doula.")
    }
}
