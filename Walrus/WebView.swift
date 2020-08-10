import SwiftUI
import WebKit
import AppKit

struct WebView : NSViewRepresentable {
    
    let request: URLRequest
    
    func makeNSView(context: Context) -> some NSView {
        let view = WKWebView()
        view.autoresizingMask = [.width, .height]
            return view
    }
   
    
    func updateNSView(_ nsView: NSViewType, context: Context) {
        guard context.coordinator.needsToLoadURL else { return }
        if let webview = nsView as? WKWebView {
            webview.load(request)
        }
    }

    
  
     func makeCoordinator() -> WebView.Coordinator {
             Coordinator()
         }

         class Coordinator {
             var needsToLoadURL = true
         }
    
}

#if DEBUG
struct WebView_Previews : PreviewProvider {
    static var previews: some View {
        WebView(request: URLRequest(url: URL(string: "https://www.apple.com")!))
    }
}
#endif
