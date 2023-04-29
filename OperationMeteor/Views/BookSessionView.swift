//
//  BookSessionView.swift
//  CreativeCounselingPlus
//
//  Created by Richard Crichlow on 4/1/23.
//

import SwiftUI

struct BookSessionView: View {
    @State private var selectedService: Service?
    @State private var selectedDate = Date()
    @State private var selectedTime = Date()
    @State private var additionalInfo = ""
    @State private var isShowingConfirmation = false
    
    var serviceViewModel = ServiceViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Service")
                .font(.headline)
            Picker(selection: $selectedService, label: Text("Select a service")) {
                ForEach(serviceViewModel.publishedServices) { service in
                    Text(service.title).tag(Optional.some(service) as Service?)
                }
            }
            
            Text("Date and Time")
                .font(.headline)
            DatePicker("Select a date", selection: $selectedDate, in: Date()..., displayedComponents: .date)
            DatePicker("Select a time", selection: $selectedTime, displayedComponents: [.hourAndMinute])
            
            Text("Additional Information")
                .font(.headline)
            TextEditor(text: $additionalInfo)
                .frame(height: 100)
            
            Button(action: {
                self.isShowingConfirmation = true
            }) {
                Text("Book Session")
                    .foregroundColor(.white)
            }
            .disabled(selectedService == nil)
            .frame(maxWidth: .infinity, alignment: .center)
            .padding()
            .background(selectedService != nil ? Color.blue : Color.gray)
            .cornerRadius(8)
            .alert(isPresented: $isShowingConfirmation) {
                Alert(title: Text("Confirmation"), message: Text("Your session for \(selectedService!.title) on \(selectedDate, formatter: dateFormatter()) at \(timeFormatter().string(from: selectedTime)) has been booked. We will contact you soon."), dismissButton: .default(Text("OK")))
            }
        }
        .padding()
        .navigationTitle("Book Session")
    }
    
    func dateFormatter() -> DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
    }
    
    func timeFormatter() -> DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        return formatter
    }
}

struct BookSessionView_Previews: PreviewProvider {
    static var previews: some View {
        BookSessionView()
    }
}
