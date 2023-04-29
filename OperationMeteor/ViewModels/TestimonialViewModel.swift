//
//  TestimonialViewModel.swift
//  CreativeCounselingPlus
//
//  Created by Richard Crichlow on 4/1/23.
//

import Foundation

class TestimonialViewModel: ObservableObject {
    @Published var publishedTestimonials = [Testimonial]()
    let apiClient: TestimonialAPIClient

    init(apiClient: TestimonialAPIClient = MockTestimonialAPIClient()) {
        self.apiClient = apiClient
        fetchTestimonials()
    }

    func fetchTestimonials() {
        apiClient.fetchTestimonials { result in
            switch result {
            case .success(let testimonials):
                DispatchQueue.main.async {
                    self.publishedTestimonials = testimonials
                }
            case .failure(let error):
                // Handle errors or retry fetching testimonials
                print("Error fetching testimonials: \(error.localizedDescription)")
            }
        }
    }
}


protocol TestimonialAPIClient {
    func fetchTestimonials(completion: @escaping (Result<[Testimonial], Error>) -> Void)
}

struct MockTestimonialAPIClient: TestimonialAPIClient {
    func fetchTestimonials(completion: @escaping (Result<[Testimonial], Error>) -> Void) {
        let mockTestimonials = [
            Testimonial(id: 1, name: "John Doe", text: "Creative Counseling Plus helped me get through a difficult time in my life. The therapists were understanding and supportive."),
            Testimonial(id: 2, name: "Jane Smith", text: "I would highly recommend Creative Counseling Plus to anyone in need of mental health support. The therapists are top-notch."),
            Testimonial(id: 3, name: "Bob Johnson", text: "Thanks to Creative Counseling Plus, I have learned how to manage my anxiety and live a happier life."),
            Testimonial(id: 4, name: "Emily Davis", text: "Creative Counseling Plus has an amazing team of professionals that genuinely care about their clients. I'm grateful for their support."),
            Testimonial(id: 5, name: "Michael Brown", text: "I've been attending therapy sessions at Creative Counseling Plus for six months, and I can't express how much they've helped me grow and heal."),
            Testimonial(id: 6, name: "Linda Williams", text: "I appreciate the personalized approach at Creative Counseling Plus. They tailor their support to my unique needs and it has made a world of difference.")
        ]

        completion(.success(mockTestimonials))
    }
}

