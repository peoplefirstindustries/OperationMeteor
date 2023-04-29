//
// SearchResourcesView.swift
// CreativeCounselingPlus
//
// Created by Richard Crichlow on 4/1/23.
//

import SwiftUI
import WebKit

struct SearchResourcesView: View {
    @State private var searchText = ""
    var SearchResources: [Resource] = [
        Resource(title: "Coping With Grief and Loss", category: "Mental Health", description: "Find information and resources on coping with grief and loss, including support groups and counseling services.", link: "https://www.helpguide.org/articles/grief/coping-with-grief-and-loss.htm"),
        Resource(title: "Perinatal Mood and Anxiety Disorders", category: "Pregnancy and Postpartum Support", description: "Learn about perinatal mood and anxiety disorders, including symptoms, risk factors, and treatment options.", link: "https://www.postpartum.net/learn-more/perinatal-mood-and-anxiety-disorders/"),
        Resource(title: "Yoga for Mental Health", category: "Mental Health", description: "Discover the benefits of yoga for improving mental health, including reducing stress and anxiety.", link: "https://www.verywellmind.com/the-benefits-of-yoga-for-stress-management-3145187"),
        Resource(title: "Breastfeeding Support", category: "Pregnancy and Postpartum Support", description: "Find resources and support for breastfeeding, including lactation consultants and breastfeeding classes.", link: "https://www.llli.org/"),
        Resource(title: "Mindfulness for Anxiety", category: "Mental Health", description: "Learn about the benefits of mindfulness for managing anxiety and stress, and find resources for practicing mindfulness.", link: "https://www.helpguide.org/harvard/benefits-of-mindfulness.htm"),
        Resource(title: "Infertility Support", category: "Pregnancy and Postpartum Support", description: "Find support and resources for coping with infertility, including counseling services and support groups.", link: "https://resolve.org/"),
        Resource(title: "Cognitive Behavioral Therapy", category: "Mental Health", description: "Learn about cognitive behavioral therapy and how it can be used to treat a variety of mental health conditions, including depression and anxiety.", link: "https://www.nami.org/About-Mental-Illness/Treatments/Psychotherapy/Cognitive-Behavioral-Therapy"),
        Resource(title: "Childbirth Education Classes", category: "Pregnancy and Postpartum Support", description: "Find resources and classes for childbirth education, including Lamaze and Bradley Method classes.", link: "https://www.lamaze.org/"),
        Resource(title: "Exercise for Mental Health", category: "Mental Health", description: "Discover the benefits of exercise for improving mental health, including reducing symptoms of depression and anxiety.", link: "https://www.mayoclinic.org/diseases-conditions/depression/in-depth/depression-and-exercise/art-20046495"),
        Resource(title: "Postpartum Anxiety", category: "Pregnancy and Postpartum Support", description: "Find resources and support for coping with postpartum anxiety, including counseling services and support groups.", link: "https://www.postpartum.net/learn-more/anxiety-during-pregnancy-postpartum/"),
        Resource(title: "Dialectical Behavior Therapy", category: "Mental Health", description: "Learn about dialectical behavior therapy and how it can be used to treat a variety of mental health conditions, including borderline personality disorder.", link: "https://www.nami.org/About-Mental-Illness/Treatments/Psychotherapy/Dialectical-Behavior-Therapy"),
        Resource(title: "Managing Stress", category: "Mental Health", description: "Learn about stress management techniques and strategies to improve your mental health.", link: "https://www.nimh.nih.gov/health/topics/stress/index.shtml"),
        Resource(title: "Postpartum Depression", category: "Pregnancy and Postpartum Support", description: "Find information and resources on postpartum depression, including symptoms, treatment options, and support groups.", link: "https://www.postpartum.net/"),
        Resource(title: "Art Therapy for Anxiety", category: "Mental Health", description: "Discover the benefits of art therapy for managing anxiety and improving mental health.", link: "https://www.verywellmind.com/the-benefits-of-art-therapy-for-anxiety-4177858"),
        Resource(title: "Anxiety and Depression Association of America", category: "Mental Health", description: "Access resources and support for anxiety and depression, including self-help tips, online support groups, and professional treatment directories.", link: "https://adaa.org/"),
        Resource(title: "National Institute of Mental Health", category: "Mental Health", description: "Explore information and research on mental health topics, including anxiety, depression, bipolar disorder, and more.", link: "https://www.nimh.nih.gov/"),
        Resource(title: "Calm App", category: "Mental Health", description: "Download the Calm app for guided meditations, breathing exercises, and sleep stories to reduce stress and improve mental health.", link: "https://www.calm.com/"),
        Resource(title: "Mindfulness-Based Stress Reduction", category: "Mental Health", description: "Learn about the benefits of mindfulness-based stress reduction (MBSR) for managing stress and improving mental health.", link: "https://www.mindful.org/what-is-mbsr/"),
        Resource(title: "National Alliance on Mental Illness", category: "Mental Health", description: "Access resources and support for mental health conditions, including advocacy, education, and local support groups.", link: "https://www.nami.org/"),
        Resource(title: "Substance Abuse and Mental Health Services Administration", category: "Mental Health", description: "Find resources and treatment options for substance abuse and mental health conditions.", link: "https://www.samhsa.gov/"),
        Resource(title: "American Psychological Association", category: "Mental Health", description: "Access information on psychology topics, including therapy, research, and professional development opportunities.", link: "https://www.apa.org/"),
        Resource(title: "Pregnancy, Birth, and Beyond", category: "Pregnancy and Postpartum Support", description: "Find resources and information on pregnancy, birth, and postpartum support, including articles, forums, and product recommendations.", link: "https://www.pregnancybirthandbeyond.com.au/"),
        Resource(title: "La Leche League International", category: "Pregnancy and Postpartum Support", description: "Access support and resources for breastfeeding, including online forums, local groups, and trained leaders.", link: "https://www.llli.org/"),
        Resource(title: "The Postpartum Stress Center", category: "Pregnancy and Postpartum Support", description: "Find resources and support for postpartum anxiety and depression, including articles, online therapy, and educational materials.", link: "https://postpartumstress.com/")
    ]

    var filteredResources: [Resource] {
        if searchText.isEmpty {
            return SearchResources
        } else {
            return SearchResources.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText, placeholder: "Search resources")
                
                List(filteredResources) { resource in
                    NavigationLink(destination: WebView(urlString: resource.link)) {
                        VStack(alignment: .leading, spacing: 5) {
                            Text(resource.title)
                                .font(.headline)
                            Text(resource.category)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Text(resource.description)
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .navigationBarTitle("Resources")
            }
        }
    }
    
}

struct SearchResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResourcesView()
    }
}

struct WebView: UIViewRepresentable {
    let urlString: String
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}

struct SearchBar: View {
    @Binding var text: String
    var placeholder: String
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField(placeholder, text: $text)
        }
        .padding()
        .background(Color(.systemGray5))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}
