//
//  PDFKitView.swift
//  PDFViewer-SwiftUI
//
//  Created by Nimish Sharad Mothghare on 05/03/25.
//

import SwiftUI
import PDFKit

struct PDFKitView: View {
    var url : URL
    var body: some View {
        
        PDfKitRepresntableView(url)
    }
}


struct PDfKitRepresntableView : UIViewRepresentable {
    
    let url: URL
       init(_ url: URL) {
           self.url = url
       }

       func makeUIView(context: UIViewRepresentableContext<PDfKitRepresntableView>) -> PDfKitRepresntableView.UIViewType {
           let pdfView = PDFView()
           pdfView.document = PDFDocument(url: self.url)
           pdfView.autoScales = true
           return pdfView
       }

       func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PDfKitRepresntableView>) {
           // Update the view.
       }
    
}

#Preview {
    PDFKitView(url: Bundle.main.url(forResource: "IOS Development Interview Question", withExtension: "pdf")!)
}
