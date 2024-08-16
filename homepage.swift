import SwiftUI

struct HomePageView: View {
    @State private var selectedBloodGroup = "রক্তের গ্রুপ"
    @State private var selectedDistrict = "সকল জেলা"
    
    var body: some View {
        VStack {
            // Top section with dropdowns
            HStack {
                Picker(selection: $selectedBloodGroup, label: Text("রক্তের গ্রুপ")) {
                    Text("A+").tag("A+")
                    Text("A-").tag("A-")
                    Text("B+").tag("B+")
                    Text("B-").tag("B-")
                    Text("O+").tag("O+")
                    Text("O-").tag("O-")
                    Text("AB+").tag("AB+")
                    Text("AB-").tag("AB-")
                }
                .pickerStyle(MenuPickerStyle())
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
                
                Picker(selection: $selectedDistrict, label: Text("সকল জেলা")) {
                    Text("Dhaka").tag("Dhaka")
                    Text("Chittagong").tag("Chittagong")
                    Text("Sylhet").tag("Sylhet")
                    // Add more districts here
                }
                .pickerStyle(MenuPickerStyle())
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
            }
            .padding(.horizontal)
            .padding(.top, 16)
            
            // Middle section with result text
            Text("0 টি আবেদন পাওয়া গেছে \"\(selectedDistrict)\" জেলায়")
                .font(.headline)
                .padding(.top, 50)
            
            Spacer()

            HStack {
                Button(action: {
                }) {
                    VStack {
                        Image(systemName: "house")
                        Text("ব্যাক হোম")
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .foregroundColor(.red)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.red, lineWidth: 1)
                )
                
                Button(action: {
                }) {
                    VStack {
                        Image(systemName: "plus.app")
                        Text("নতুন আবেদন")
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding()
            .background(Color.gray.opacity(0.1))
        }
        .background(Color.white)
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

