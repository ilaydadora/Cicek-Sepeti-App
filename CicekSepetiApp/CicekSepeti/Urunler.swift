//
//  Urunler.swift
//  CicekSepeti
//
//  Created by İlayda Metin on 23.08.2022.
//

import Foundation


class Urunler {
    var urunId : Int?
    var urunAd : String?
    var urunFiyat : String?
    var urunTeslimat : String?
    var taksitFiyat : String?
    var urunResim : String?
    
    init(urunAd: String, urunFiyat: String, urunTeslimat: String, taksitFiyat: String,urunResim : String, urunId : Int) {
        
        
        self.urunId = urunId
        self.urunAd = urunAd
        self.urunFiyat = urunFiyat
        self.urunTeslimat = urunTeslimat
        self.taksitFiyat = taksitFiyat
        self.urunResim = urunResim
        
    }
    
}
