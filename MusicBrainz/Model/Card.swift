//
//  Card.swift
//  MusicBrainz
//
//  Created by Akshat Tiwari on 29/05/22.
//

import SwiftUI
import Foundation

struct Card: Identifiable {
    var id  = UUID()
    var file : String
    var title : String
    var description : String
}

var onboardingData:[Card] = [
 Card(file: "tagger", title: "Tag", description: "Fix your Audio Metadata"),
 Card(file: "search", title: "Search", description: "Explore MusicBrainz Data"),
 Card(file: "scan", title: "Scan", description: "Barcodes Search"),
 Card(file: "collections", title: "Collections", description: "Explore your MusicBrainz Collection"),
 Card(file: "laptop_and_stuff", title: "Cross Platform", description: "Transfer music data across devices"),
 Card(file: "teen", title: "Listens", description: "Track your music listening habits"),
 Card(file: "review", title: "Critiques", description: "Read and write about an album or event")
]
