//
//  ResumeView.swift
//  PDFViewer-SwiftUI
//
//  Created by Nimish Sharad Mothghare on 05/03/25.
//

import SwiftUI

struct ResumeView: View {
    let fileUrl = Bundle.main.url(forResource: "IOS Development Interview Question", withExtension: "pdf")!
    var body: some View {
        PDFKitView(url: fileUrl)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ResumeView()
}
