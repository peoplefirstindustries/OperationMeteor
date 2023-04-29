//
//  ServicesViewModel.swift
//  CreativeCounselingPlus
//
//  Created by Richard Crichlow on 4/1/23.
//

import Foundation

class ServiceViewModel: ObservableObject {
    @Published var publishedServices: [Service] = []

    init() {
        publishedServices = [
            Service(
                title: "Individual Therapy",
                category: "Therapy Services",
                description: "Individual therapy sessions are offered for adults, teens, and children. Treatment is tailored to fit your unique needs and circumstances.",
                priceRange: "$50-$200",
                imageSource: .localAsset(name: "individualTherapy")
            ),
            Service(
                title: "Family Therapy",
                category: "Therapy Services",
                description: "Family therapy sessions are designed to improve communication, resolve conflicts, and strengthen the family unit.",
                priceRange: "$50-$200",
                imageSource: .localAsset(name: "familyTherapy")
            ),
            Service(
                title: "Group Therapy",
                category: "Therapy Services",
                description: "Group therapy sessions are available for individuals who share similar concerns, such as anxiety, depression, or trauma. Groups typically include 6-8 participants and are led by a therapist.",
                priceRange: "$50-$200",
                imageSource: .localAsset(name: "groupTherapy")
            ),
            Service(
                title: "Art Therapy",
                category: "Art Therapy",
                description: "Art therapy sessions provide an alternative form of communication and expression, allowing clients to explore their emotions, experiences, and challenges through the creative process.",
                priceRange: "$50-$200",
                imageSource: .localAsset(name: "artTherapy")
            ),
            Service(
                title: "Doula Services",
                category: "Doula Services",
                description: "Doula services are available for prenatal, birth, and postpartum support, ensuring a nurturing and empowering environment for parents and families during the childbirth process.",
                priceRange: "Contact for pricing",
                imageSource: .localAsset(name: "doulaServices")
            ),
            Service(
                title: "Pregnant and Postpartum Family Therapy",
                category: "Doula Services",
                description: "Specialized therapy sessions are offered for pregnant and postpartum families, addressing topics such as emotional wellbeing, relationship challenges, and parenting support.",
                priceRange: "$50-$200",
                imageSource: .localAsset(name: "pregnantPostpartumTherapy")
            ),
            Service(
                title: "Professional Consultation",
                category: "Consultation Services",
                description: "Consultation services are available for professionals seeking guidance in their work or practice. This can include case consultations, professional development, or mentorship.",
                priceRange: "$50-$200",
                imageSource: .localAsset(name: "professionalConsultation")
            ),
            Service(
                title: "Clinical Supervision",
                category: "Consultation Services",
                description: "Clinical supervision is offered for mental health professionals seeking guidance and support in their clinical practice. This can include case review, professional growth, and ethical considerations.",
                priceRange: "$50-$200",
                imageSource: .localAsset(name: "clinicalSupervision")
            )
        ]
    }
}
