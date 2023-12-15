import SwiftUI

struct Screen_2_1: View {

    let images = ["f1", "f2"]
    @State private var selectedIndex = 0
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                }) {
                    Image(systemName: "chevron.left")
                }

                Spacer()

                Button(action: {
                }) {
                    Image(systemName: "cart")
                }

                Button(action: {
                }) {
                    Image(systemName: "line.horizontal.3")
                }
            }
            .padding()


            TabView(selection: $selectedIndex) {
                ForEach(0..<images.count, id: \.self) { index in
                    Image(images[index])
                        .resizable()
                        .scaledToFit()
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .frame(height: 300)
        }

        VStack(alignment: .leading, spacing: 4) {
            Text("Мемы жизненные")
                .font(.title)
                .padding(.top)

            HStack {
                Text("1 250₽")
                    .font(.title2)
                
                Text("1500₽")
                    .font(.subheadline)
                    .strikethrough()
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Button(action: {
                }) {
                    Image(systemName: "bookmark")
                        .foregroundColor(.gray)

                }
            }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
        
        Divider().padding(.horizontal).padding(.top)
        
        VStack(alignment: .leading, spacing: 4) {
                Text("Доставка")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                
                Text("Доставим 6 августа, Санкт-Петербург — 140 Р.\nБесплатная доставка от 15 000 Р.")
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)

        Spacer()
        Button(action: {
            }) {
                Text("Добавить в корзину")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)

            Button(action: {
            }) {
                Text("Написать")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
    }


#Preview {
    Screen_2_1()
}
