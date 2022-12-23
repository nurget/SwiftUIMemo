//
//  MemoStore.swift
//  SwiftUIMemo
//
//  Created by 김아영 on 2022/12/23.
//

// 메모 목록을 저장하는 클래스

import Foundation

class MemoStore: ObservableObject {
    @Published var list: [Memo]
    
    init() {
        list = [
            Memo(content: "Hello", insertDate: Date.now),
            Memo(content: "Awesome", insertDate: Date.now.addingTimeInterval(3600 * -24)),
            Memo(content: "SwiftUI", insertDate: Date.now.addingTimeInterval(3600 * -48))
        ]
    }
    
    // 입력한 메모를 파라미터로 받은 후 list 배열에 저장.
    func insert(memo: String) {
        list.insert(Memo(content: memo), at: 0) // 새로운 메모는 항상 0번 인덱스 추가
    }
    // 파라미터로 메모와 편집된 내용을 받음.
    func update(memo: Memo?, content: String) {
        guard let memo = memo else {
            return
        }
        memo.content = content
    }
    func delete(memo: Memo) {
        // 메모 인스턴스가 전달되면 배열에서 바로 삭제
        list.removeAll { $0.id == memo.id }
    }
    
    func delete(set: IndexSet) {
        for index in set {
            list.remove(at: index)
        }
    }
}
