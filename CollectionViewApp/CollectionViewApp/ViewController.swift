//
//  ViewController.swift
//  CollectionViewApp
//
//  Created by Chetanjeev Singh Bains on 11/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView : UICollectionView!
    
    
    var arrimg : [UIImage] = [
        UIImage(named: "watch1")!,
        UIImage(named: "watch2")!,
        UIImage(named: "watch3")!,
        UIImage(named: "watch4")!,
        UIImage(named: "watch5")!,
        UIImage(named: "watch6")!,
        UIImage(named: "watch7")!,
        UIImage(named: "watch8")!,
        UIImage(named: "watch9")!,
        UIImage(named: "watch10")!,
    ]
    
    

    var arrlbl = ["Wincero","Rado","Titan","Fastrack","Rolex","Tissot","Chaps","Fossil","Raga","HMT"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }


}

extension ViewController : UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You Tapped Me")
    }
}
extension ViewController : UICollectionViewDataSource{
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrlbl.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        
        cell.imageView.image = arrimg[indexPath.row]
        cell.lbl.text = arrlbl[indexPath.row]
        
        return cell
    }
}

// Mark:- Margin and Padding between cells

extension ViewController : UICollectionViewDelegateFlowLayout{}
