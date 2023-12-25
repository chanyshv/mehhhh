import SwiftUI

struct Screen_1_1: View {
    @State private var isPlaying = false
    
    @State private var progress = 0.3
    @State private var isHovered = true

    let imageWidth: CGFloat = 330

    let backgroundColor = Color(red: 36/255, green: 117/255, blue: 156/255)
    
    var body: some View {
        VStack {
            Text("Screen 4")
                .font(.headline)
                .padding()

            Spacer()

            Image("mehh")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: imageWidth, height: imageWidth)
                .cornerRadius(10)
                .padding()

            
            Slider(value: $progress)
                .accentColor(.white)
                .frame(width: imageWidth)
                .padding(.horizontal)

            HStack {
                Text("0:29")
                    .foregroundColor(.white)
                Spacer()
                Text("-3:44")
                    .foregroundColor(.white)
                
            }
            .frame(width: imageWidth, alignment: .center)

            Text("Little Dark Age")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding(.top, 8)

            Text("MGMT")
                .font(.headline)
                .fontWeight(.regular)
                .foregroundColor(.white)

            HStack {
                Button(action: {
                }) {
                    Image(systemName: "arrow.down.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                }
                Spacer()

                Button(action: {
                }) {
                    Image(systemName: "backward.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 34, height: 34)
                }
                Spacer()

                Button(action: {
                    self.isPlaying.toggle()
                }) {
                    Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 34, height: 34)
                }
                Spacer()

                Button(action: {
                }) {
                    Image(systemName: "forward.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 34, height: 34)
                }
                Spacer()

                Button(action: {
                }) {
                    Image(systemName: "ellipsis")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                }
            }
            .foregroundColor(.white)
            .padding(.horizontal)
            .padding(.top, 40)


            Spacer()
        }
        .background(backgroundColor)
        .edgesIgnoringSafeArea(.all)
    }

}

#Preview {
    Screen_1_1()
}
