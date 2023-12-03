//
//  SwiftUISampleApp.swift
//  SwiftUISample
//
//  Created by otukutun on 2023/12/01.
//

import SwiftUI

@main
struct SwiftUISampleApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
