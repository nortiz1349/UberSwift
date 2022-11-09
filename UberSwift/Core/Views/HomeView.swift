//
//  HomeView.swift
//  UberSwift
//
//  Created by Nortiz M1 on 2022/11/09.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
			.ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
