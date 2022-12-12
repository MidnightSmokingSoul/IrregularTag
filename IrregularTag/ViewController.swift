//
//  ViewController.swift
//  IrregularTag
//
//  Created by mac on 2022/12/12.
//

import UIKit

class ViewController: UIViewController {

    let tags = ["這是", "個真實的", "故事", "每當朋友抱怨著", "婚姻", "如何讓", "彼此受傷", "折磨", "美好殆盡", "夢想幻滅", "我", "就回憶起", "一段往事"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //左右排列 可滑动
        let tag1 = XHTagView(frame: CGRect(x: 0, y: 150, width: view.frame.width, height: 25))
        tag1.direction = .vertical //展示方向
        tag1.titleBtnH = 25 //标签的高度
        tag1.titleColor = .white //字体颜色
        tag1.titleFont = UIFont.systemFont(ofSize: 12) //文字字体
        tag1.padding = 15 //标签离背景左右间距
        tag1.minimumInteritemSpacing = 15 //标签之间间距
        tag1.bgColor = .blue //标签背景颜色
        tag1.tagInsets = UIEdgeInsets(top: 2, left: 4, bottom: 2, right: 4) //文字离标签间距
        tag1.radius = 5 //标签圆角
        tag1.didSelectTagCallback { index in //标签点击回调
            print("index: \(index)")
        }
        view.addSubview(tag1)
        tag1.tags = tags //给标签数组赋值
        
        
        //上下排列 不可滑动
        let tag2 = XHTagView(frame: CGRect(x: 0, y: 300, width: view.frame.width, height: 30))
        
        //XHTagView的宽度 如果使用SnapKit布局 必须给定
//        tag2.tagViewW = view.frame.width
        
        tag2.direction = .horizontal //展示方向
        tag2.titleBtnH = 25 //标签的高度
        tag2.titleColor = .black //字体颜色
        tag2.titleFont = UIFont.systemFont(ofSize: 12) //文字字体
        tag2.padding = 25 //标签离背景左右间距
        tag2.minimumInteritemSpacing = 15 //标签之间左右间距
        tag2.minimumLineSpacing = 10 //标签之间上下间距
        tag2.bgColor = .orange //标签背景颜色
        tag2.tagInsets = UIEdgeInsets(top: 2, left: 4, bottom: 2, right: 4) //文字离标签间距
        tag2.radius = 5 //标签圆角
        tag2.didSelectTagCallback { index in //标签点击回调
            print("index: \(index)")
        }
        view.addSubview(tag2)
        tag2.tags = tags //给标签数组赋值
        
        //给view设置高度为标签总高度
        tag2.frame.size.height = tag2.viewH
        
    }


}

