//
//  TestimonialsView.swift
//  CreativeCounselingPlus
//
//  Created by Richard Crichlow on 4/1/23.
//

import SwiftUI

struct TestimonialsView: View {
    @ObservedObject var viewModel: TestimonialViewModel
    let columns = [
        GridItem(.adaptive(minimum: 300))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(viewModel.publishedTestimonials, id: \.id) { testimonial in
                    VStack(alignment: .leading, spacing: 10) {
                        Text(testimonial.name)
                            .font(.headline)
                        Text(testimonial.text)
                            .font(.body)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }
                
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .navigationTitle("Testimonials")
        .onAppear {
            viewModel.fetchTestimonials()
        }
    }
}

struct TestimonialsView_Previews: PreviewProvider {
    static var previews: some View {
        TestimonialsView(viewModel: TestimonialViewModel(apiClient: MockTestimonialAPIClient()))
    }
}
