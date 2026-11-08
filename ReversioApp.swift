import SwiftUI
import WebKit

@main
struct ReversioApp: App {
    var body: some Scene {
        WindowGroup {
            WebView(url: URL(string: "https://reversio.ct.ws")!)
                .ignoresSafeArea()
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        let web = WKWebView(frame: .zero, configuration: config)
        web.allowsBackForwardNavigationGestures = true
        web.load(URLRequest(url: url))
        return web
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
