//
//  VolunteerViewModel.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import Foundation

class VolunteerViewModel: ObservableObject {
    @Published private(set) var volunteers: [Volunteer] = []
    
    func signUp(name: String, email: String, phoneNumber: String, city: String) {
        let newVolunteer = Volunteer(id: UUID(), name: name, email: email, phoneNumber: phoneNumber, city: city)
        volunteers.append(newVolunteer)
        
        // Save the volunteer data, send to a server, or perform other necessary actions
    }
    
    func isValidName(_ name: String) -> Bool {
        return !name.isEmpty
    }
    
    func isValidEmail(_ email: String) -> Bool {
        // A simple regex pattern to validate the email format
        let emailPattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailPattern)
        return emailPredicate.evaluate(with: email)
    }
    
    func isValidPhoneNumber(_ phoneNumber: String) -> Bool {
        // A simple regex pattern to validate the phone number format
        let phoneNumberPattern = "^[0-9]{10}$"
        let phoneNumberPredicate = NSPredicate(format: "SELF MATCHES %@", phoneNumberPattern)
        return phoneNumberPredicate.evaluate(with: phoneNumber)
    }
    
    func isValidCity(_ city: String) -> Bool {
        return !city.isEmpty
    }
}
