//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by 김아영 on 2022/12/23.
//

import Foundation
import SwiftUI

// Identifiable은 데이터를 리스트에 쉽게 바인딩
// ObservedObject는 메모를 편집할 때, 뷰를 자동으로 업데이트 할 때

class Memo: Identifiable, ObservedObject {
    let id: UUID
    @Published var content: String // Published 특성은 새로운 값을 저장할 때마다 바인딩 되어 있는 UI가 자동으로 업데이트 됨.
    let insertDate: Date // 날짜를 저장하는 속성
    
    init(content: String, insertDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
