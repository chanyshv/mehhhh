import SwiftUI

struct Screen_1_2: View {
    @State private var password: String = ""

    var body: some View {
        VStack {
            HStack {
                Image("v")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                Text("ID")
                    .font(.title)
                    .fontWeight(.medium)
            }
            .padding(.top, 40)



            Text("Введите пароль")
                .font(.title)
                .padding()

            SecureField("Введите пароль", text: $password)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(12)
                .padding(.horizontal)

            HStack {
                Button(action: {
                }) {
                    Text("Забыли или не установили пароль?")
                        .foregroundColor(.blue)
                }
                Spacer()
            }
            .padding([.leading, .top])

            Spacer()
            Button(action: {
            }) {
                Text("Продолжить")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()

        }
        .padding(.horizontal)
    }
}



#Preview {
    Screen_1_2()
}
