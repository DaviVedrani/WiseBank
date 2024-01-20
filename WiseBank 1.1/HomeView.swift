//
//  HomeView.swift
//  WiseBank
//
//  Created by Davi Vedrani on 28/10/23.
//

import SwiftUI

//MARK: - VIEW
struct HomeView: View {
    
    @EnvironmentObject var userData: UserData
    
     @State var viewModel = HomeViewModel()
    
    var body: some View {
        ZStack(alignment: .top){
            LinearGradient(colors: [Color("Principal")], startPoint: .top, endPoint: .top)
                .ignoresSafeArea()
            
            ScrollView(){
                
                // MARK: -- Top Bar
                
                VStack{
                    HStack(){
                        Image("picture2")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(100)
                        
                        Text("Olá, \(userData.username)")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .font(.subheadline)
                        Spacer()
                        Image(systemName: "bell")
                            .foregroundColor(Color("green2"))
                            .fontWeight(.regular)
                            .padding(.trailing, 10)
                        
                        
                        Image(systemName: "gearshape")
                            .foregroundColor(Color("green2"))
                            .fontWeight(.regular)
                        
                    }
                    
                    // MARK: -- SALDO DISPONIVEL
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("second"))
                            .frame(width: .infinity, height: 100)
                            .cornerRadius(20)
                        VStack(spacing: 4){
                            
                            HStack{
                                Image(systemName: "dollarsign.arrow.circlepath")
                                    .foregroundColor(.green)
                                Text("Saldo disponível")
                                    .font(.subheadline)
                                    .fontWeight(.regular)
                                    .foregroundColor(.white)
                                Spacer()
                                
                            }
                            
                            HStack{
                                Image(systemName: "brazilianrealsign")
                                    .font(.largeTitle)
                                    .fontWeight(.regular)
                                    .foregroundColor(.white)
                                
                                if self.viewModel.modelshowBalance{
                                    Text("10.315,00")
                                        .font(.largeTitle)
                                        .fontWeight(.regular)
                                        .foregroundColor(.white)
                                } else{
                                    Text("*********")
                                        .font(.largeTitle)
                                        .fontWeight(.regular)
                                        .foregroundColor(.white)
                                }
                                Spacer()
                                //MARK: - BUTTON SHOW/HIDDEN
                                Button(action: {
                                    self.viewModel.modelshowBalance.toggle()
                                }) {
                                    Image(systemName: self.viewModel.modelshowBalance ? "eye" : "eye.slash")
                                        .foregroundColor((self.viewModel.modelshowBalance == true) ? Color.green : Color.white)
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                }
                            }
                        }.padding(.horizontal, 15)
                    }.padding(.top)
                    
                    // MARK: -- GRID SALDO EM OUTRAS MOEDAS
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ZStack{
                                Rectangle()
                                    .frame(width: 135, height: 170)
                                    .foregroundColor(Color("second"))
                                    .cornerRadius(20)
                                
                                // MARK: -- SALDO REAL
                                VStack{
                                    Image("brazil")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 90, height: 60)
                                        .cornerRadius(50)
                                    
                                    HStack{
                                        Image(systemName: "brazilianrealsign")
                                            .foregroundColor(.white)
                                            .font(.callout)
                                            .fontWeight(.semibold)
                                        if self.viewModel.modelshowBalance{
                                            Text("10.315,00")
                                                .foregroundColor(.white)
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                        } else{
                                            Text("********")
                                                .foregroundColor(.white)
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                        }
                                    }.padding(.top)
                                }.frame(maxWidth: .infinity)
                            }
                            
                            // MARK: -- SALDO DOLLAR
                            ZStack{
                                Rectangle()
                                    .frame(width: 135, height: 170)
                                    .foregroundColor(Color("second"))
                                    .cornerRadius(20)
                                
                                VStack{
                                    Image("EUA")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 90, height: 60)
                                        .cornerRadius(50)
                                    
                                    HStack{
                                        Image(systemName: "dollarsign")
                                            .foregroundColor(.white)
                                            .font(.callout)
                                            .fontWeight(.semibold)
                                        if self.viewModel.modelshowBalance{
                                            Text("5.987,00")
                                                .foregroundColor(.white)
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                        } else{
                                            Text("********")
                                                .foregroundColor(.white)
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                        }
                                    }.padding(.top)
                                }.frame(maxWidth: .infinity)
                            }
                            
                            // MARK: -- SALDO YEN
                            ZStack{
                                Rectangle()
                                    .frame(width: 135, height: 170)
                                    .foregroundColor(Color("second"))
                                    .cornerRadius(20)
                                
                                VStack{
                                    Image("japan")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 90, height: 60)
                                        .cornerRadius(50)
                                    
                                    HStack{
                                        Image(systemName: "yensign")
                                            .foregroundColor(.white)
                                            .font(.callout)
                                            .fontWeight(.semibold)
                                        if self.viewModel.modelshowBalance{
                                            Text("1,209,00")
                                                .foregroundColor(.white)
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                        } else{
                                            Text("********")
                                                .foregroundColor(.white)
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                        }
                                    }.padding(.top)
                                }.frame(maxWidth: .infinity)
                            }
                            
                            // MARK: -- SALDO EM PESO
                            ZStack{
                                Rectangle()
                                    .frame(width: 140, height: 170)
                                    .foregroundColor(Color("second"))
                                    .cornerRadius(20)
                                
                                VStack{
                                    Image("chile")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 90, height: 60)
                                        .cornerRadius(50)
                                    
                                    HStack{
                                        Image(systemName: "pesosign")
                                            .foregroundColor(.white)
                                            .font(.callout)
                                            .fontWeight(.semibold)
                                        if self.viewModel.modelshowBalance{
                                            Text("500,120,00")
                                                .foregroundColor(.white)
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                        } else{
                                            Text("********")
                                                .foregroundColor(.white)
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                        }
                                    }.padding(.top)
                                }.frame(maxWidth: .infinity)
                            }
                            
                        }
                        
                        
                        
                        
                    }.padding(.bottom)
                    
                    // MARK: -- SCROLLVIEW HORIZONTAL  - OPTIONS
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ZStack{
                                Rectangle()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(20)
                                    .foregroundColor(Color("second"))
                                VStack{
                                    Image(systemName: "arrow.left.arrow.right")
                                        .foregroundColor(.white)
                                    
                                    Text("Enviar")
                                        .foregroundColor(.white)
                                }
                            }
                            ZStack{
                                Rectangle()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(20)
                                    .foregroundColor(Color("second"))
                                VStack{
                                    Image(systemName: "doc.text.magnifyingglass")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                    
                                    Text("Extrato")
                                        .foregroundColor(.white)
                                }
                            }
                            ZStack{
                                Rectangle()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(20)
                                    .foregroundColor(Color("second"))
                                VStack{
                                    Image(systemName: "creditcard")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                    
                                    Text("Crédito")
                                        .foregroundColor(.white)
                                }
                            }
                            ZStack{
                                Rectangle()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(20)
                                    .foregroundColor(Color("second"))
                                VStack{
                                    Image(systemName: "barcode")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                    
                                    Text("Pagar")
                                        .foregroundColor(.white)
                                }
                            }
                            ZStack{
                                Rectangle()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(20)
                                    .foregroundColor(Color("second"))
                                VStack{
                                    Image(systemName: "chart.line.uptrend.xyaxis")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                    
                                    
                                    Text("Investir")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                    }.padding(.bottom, 20)
                    
                    // MARK: -- MY CARD / ADD CARD
                    Rectangle()
                    
                        .frame(width: .infinity, height: 1)
                        .foregroundColor(.green)
                        .cornerRadius(30)
                    
                    VStack{
                        HStack{
                            Text("Cartões")
                                .font(.callout)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Spacer()
                        }
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                
                                ZStack{
                                    Image("debitcard")
                                        .resizable()
                                        .frame(width: 150, height: 100)
                                    VStack{
                                        Text("**** **** 3029")
                                            .padding(.top, 60)
                                    }
                                }
                                ZStack{
                                    Rectangle()
                                        .frame(width: 150, height: 100)
                                        .foregroundColor(Color("second"))
                                    VStack{
                                        Image(systemName: "plus")
                                            .font(.title)
                                            .foregroundColor(.gray)
                                        
                                    }
                                }
                            }
                        }.padding(.bottom)
                        
                        // MARK: -- CREDIT CARD / PAYMENT
                        Rectangle()
                        
                            .frame(width: .infinity, height: 1)
                            .foregroundColor(Color.gray)
                            .cornerRadius(30)
                        
                        VStack{
                            HStack{
                                Text("Cartão de crédito")
                                    .foregroundColor(.white)
                                    .font(.callout)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            HStack{
                                Text("Fatura atual")
                                    .padding(.top, 1)
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                
                                Spacer()
                            }
                            HStack{
                                Image(systemName: "brazilianrealsign")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                
                                Text("7.843,00")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            HStack{
                                NavigationLink(destination: LoginView()){
                                    Text("Pagar")
                                        .font(.title3)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.white)
                                }
                                .padding(.all, 5)
                                .background(.red)
                                .cornerRadius(25)
                                
                                NavigationLink(destination: LoginView()){
                                    Text("Parcelar")
                                        .font(.title3)
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.black)
                                }
                                .padding(.all, 5)
                                .background(.white)
                                .cornerRadius(25)
                                
                            }
                        }
                    }
                } .padding(.horizontal, 15.0)
            }
        }
    }
}




struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
