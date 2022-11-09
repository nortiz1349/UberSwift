//
//  LocationSearchView.swift
//  UberSwift
//
//  Created by Nortiz M1 on 2022/11/09.
//

import SwiftUI

struct LocationSearchView: View {
	
	@State private var startLocationText: String = ""
	@State private var destinationLocationText: String = ""
	@StateObject var vm = LocationSearchViewModel()
	
    var body: some View {
		VStack {
			// header view
			headerView
				.padding(.horizontal)
				.padding(.top, 80)
			
			Divider()
				.padding()
			
			// list view
			ScrollView {
				VStack(alignment: .leading) {
					ForEach(vm.results, id: \.self) { result in
						LocationSearchResultCell(title: result.title, subtitle: result.subtitle)
					}
				}
			}
		}
		.background(Color.white)
    }
}

struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView()
    }
}

extension LocationSearchView {
	
	private var headerView: some View {
		HStack {
			VStack {
				Circle()
					.fill(Color(.systemGray3))
					.frame(width: 6, height: 6)
				Rectangle()
					.fill(Color(.systemGray3))
					.frame(width: 1, height: 42)
				RoundedRectangle(cornerRadius: 2)
					.fill(.black)
					.frame(width: 6, height: 6)
			}
			VStack {
				TextField("Current Location", text: $startLocationText)
					.frame(height: 50)
					.padding(.leading)
					.background(Color(.systemGroupedBackground))
					.cornerRadius(10)
				
				TextField("Where to?", text: $vm.queryFragment)
					.frame(height: 50)
					.padding(.leading)
					.background(Color(.systemGray4))
					.cornerRadius(10)
			}
		}
	}
	
	
	
}
