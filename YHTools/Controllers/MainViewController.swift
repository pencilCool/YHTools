//
//  ViewController.swift
//  YHTools
//
//  Created by tangyuhua on 2017/4/7.
//  Copyright © 2017年 tangyuhua. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    fileprivate let reuseIdentifier = "MainCellReusableIdentifier"
    fileprivate var toolsField = [String]();
    override func viewDidLoad() {
        super.viewDidLoad()
        toolsField.append("Flashlight")
        
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Flashlight" {
           // let vc = segue.destination as! FlashlightViewController
            
        }
    }


}

extension MainViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return toolsField.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MainViewCell
        cell.toolFieldName.text = toolsField[indexPath.row]
        
        return cell
    }
}

extension MainViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: toolsField[indexPath.row], sender: self)
    }
}
