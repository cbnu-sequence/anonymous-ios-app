//
//  AuthView.swift
//  Got_thing
//
//  Created by 윤소희 on 2023/04/05.
//

import SwiftUI

struct AuthView: View {
    var body: some View {
        VStack{
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(30)
            Text("SNS 간편 로그인")
                .font(.title2)
                .padding(.bottom)
            Text("사용하고 계신 계정으로 간편하게\n로그인 하실 수 있습니다.")
                .multilineTextAlignment(.center)
                .font(.title3)
                .padding(.bottom, Screen.maxHeight * 0.1)
            
            // MARK: - 구글 로그인
            Button {
                
            } label: {
                RoundedRectangle(cornerRadius: 7)
                    .stroke(lineWidth: 1.3)
                    .foregroundColor(.gray)
                    .overlay{
                        ZStack {
                            HStack{
                                Image("googleLogo")
                                    .resizable()
                                    .cornerRadius(4)
                                    .aspectRatio(contentMode: .fit)
                                    .padding([.top,.leading, .bottom], 10)
                                    .padding(.trailing, 3)
                                Text("Sign in with Google")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .bold()
                                Spacer()
                            }
                        }
                    }
            }
            .frame(width: Screen.maxWidth * 0.8, height: Screen.maxHeight * 0.06)
            .padding(.bottom, 7)
            
            // MARK: - 카카오 로그인
            Button{
                
            } label: {
                Image("kakaoLoginLarge")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8)
            }
            .frame(width: Screen.maxWidth * 0.8, height: Screen.maxHeight * 0.06)
            .padding(.bottom, 5)
            Spacer()
                .frame(maxHeight: Screen.maxHeight * 0.12 )
            
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            AuthView()
        }
    }
}
