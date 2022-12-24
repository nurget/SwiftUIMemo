//
//  MemoCell.swift
//  SwiftUIMemo
//
//  Created by 김아영 on 2022/12/24.
//

import SwiftUI

struct MemoCell: View {
    @ObservedObject var memo: Memo // 메모가 업데이트 되는 시점마다 뷰가 새롭게 업데이트 됨, 항상 최신 데이터를 표시할 수 있음.
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(memo.content)
                .font(.body)
                .lineLimit(1)
            
            Text(memo.insertDate, style: .date)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

struct MemoCell_Previews: PreviewProvider {
    static var previews: some View {
        MemoCell(memo: Memo(content: "Test"))
    }
}
