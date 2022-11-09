//
//  HomeView.swift
//  UberSwift
//
//  Created by Nortiz M1 on 2022/11/09.
//

import SwiftUI

struct HomeView: View {
	
	@State private var showLocationSearchView: Bool = false
	
	var body: some View {
		ZStack(alignment: .top) {
			UberMapViewRepresentable()
				.ignoresSafeArea()
			ZStack {
				if showLocationSearchView {
					ZStack(alignment: .top) {
						LocationSearchView()
						backButton
					}
				} else {
					HStack {
						mapViewActionButton
						locationSearchActivationView
							.onTapGesture {
								withAnimation(.spring()) {
									showLocationSearchView.toggle()
								}
							}
					}
					.padding(.top)
					.padding(.horizontal)
				}
			}
		}
	}
}

// MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}

// MARK: - EXTENSION
extension HomeView {
	
	private var backButton: some View {
		Button {
			withAnimation(.spring()) {
				showLocationSearchView.toggle()
			}
		} label: {
			Image(systemName: "arrow.left")
				.font(.headline)
				.foregroundColor(.black)
				.padding()
				.background(.white)
				.clipShape(Circle())
				.shadow(radius: 10, x: 0, y: 10)
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.padding()
	}
	
	private var mapViewActionButton: some View {
		Button {
			
		} label: {
			Image(systemName: "line.3.horizontal")
				.font(.headline)
				.foregroundColor(.black)
				.padding()
				.background(.white)
				.clipShape(Circle())
				.shadow(radius: 10, x: 0, y: 10)
		}
		.frame(maxWidth: .infinity)
	}
	
	private var locationSearchActivationView: some View {
		HStack {
			RoundedRectangle(cornerRadius: 2)
				.fill(.black)
				.frame(width: 8, height: 8)
				.padding(.horizontal)
			
			Text("Where to?")
				.foregroundColor(Color(.darkGray))
			
			Spacer()
		}
		.frame(width: UIScreen.main.bounds.width - 100 , height: 50)
		.background {
			RoundedRectangle(cornerRadius: 10)
				.fill(Color.white)
				.shadow(radius: 10, y: 10)
		}
	}
	
	
}
