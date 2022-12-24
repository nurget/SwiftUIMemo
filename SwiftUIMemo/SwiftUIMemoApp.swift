//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by 김아영 on 2022/12/23.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    @StateObject var store = MemoStore() // 메모 저장소를 속성으로 저장
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store) // mainListView, 이어지는 뷰에서 동일한 객체를 쉽게 사용 가능
        }
    }
}
