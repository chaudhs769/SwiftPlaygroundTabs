import SwiftUI
import PlaygroundSupport
struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Tab 1")
                .onTapGesture {
                    self.selectedTab = 1
            }
            .tabItem {
                Image(systemName: "star")
                Text("One")
            }
            .tag(0)
            
            Text("Tab 2")
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Two")
            }
            .tag(1)
        }
    }
}
PlaygroundPage.current.setLiveView(ContentView())
