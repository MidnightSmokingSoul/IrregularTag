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
        let tagView1 = XHTagView(frame: CGRect(x: 0, y: 150, width: view.frame.width, height: 25))
        tagView1.direction = .vertical //展示方向
        tagView1.titleBtnH = 25 //标签的高度
        tagView1.titleColor = .white //字体颜色
        tagView1.titleFont = UIFont.systemFont(ofSize: 12) //文字字体
        tagView1.padding = 15 //标签离背景左右间距
        tagView1.minimumInteritemSpacing = 15 //标签之间间距
        tagView1.bgColor = .blue //标签背景颜色
        tagView1.tagInsets = UIEdgeInsets(top: 2, left: 4, bottom: 2, right: 4) //文字离标签间距
        tagView1.radius = 5 //标签圆角
        tagView1.didSelectTagCallback { index in //标签点击回调
            print("index: \(index)")
        }
        view.addSubview(tagView1)
        tagView1.tags = tags //给标签数组赋值
        
        
        //上下排列 不可滑动
        let tagView2 = XHTagView(frame: CGRect(x: 0, y: 300, width: view.frame.width, height: 30))
        
        //XHTagView的宽度 如果使用SnapKit布局 必须给定
//        tagView2.tagViewW = view.frame.width
        
        tagView2.direction = .horizontal //展示方向
        tagView2.titleBtnH = 25 //标签的高度
        tagView2.titleColor = .black //字体颜色
        tagView2.titleFont = UIFont.systemFont(ofSize: 12) //文字字体
        tagView2.padding = 25 //标签离背景左右间距
        tagView2.minimumInteritemSpacing = 15 //标签之间左右间距
        tagView2.minimumLineSpacing = 10 //标签之间上下间距
        tagView2.bgColor = .orange //标签背景颜色
        tagView2.tagInsets = UIEdgeInsets(top: 2, left: 4, bottom: 2, right: 4) //文字离标签间距
        tagView2.radius = 5 //标签圆角
        tagView2.didSelectTagCallback { index in //标签点击回调
            print("index: \(index)")
        }
        view.addSubview(tagView2)
        tagView2.tags = tags //给标签数组赋值
        
        //给view设置高度为标签总高度
        tagView2.frame.size.height = tagView2.viewH
        
    }


}

