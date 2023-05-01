//
//  UploadView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 5/1/23.
//

import SwiftUI

struct UploadView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var title = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @State private var selectedImage = UIImage(named: "placeholderImage")
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Title")) {
                        TextField("Enter title", text: $title)
                    }
                    Section(header: Text("Description")) {
                        TextField("Enter description", text: $description)
                    }
                    Section(header: Text("Due Date")) {
                        DatePicker("Select due date", selection: $dueDate)
                    }
                    Section(header: Text("Image")) {
                        Button("Select Image") {
                            // Handle image selection
                        }
                        if let image = selectedImage {
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFit()
                        }
                    }
                }
            }
            .navigationBarTitle("Upload", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        // Handle save action
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
