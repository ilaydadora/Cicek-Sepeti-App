//
//  ViewController.swift
//  CicekSepeti
//
//  Created by İlayda Metin on 22.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var urunlerListesi = [Urunler]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var ResimCollectionView: UICollectionView!
    
    var resimListesi = [Resim]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource =  self
        tableView.delegate = self
        ResimCollectionView.delegate = self
        ResimCollectionView.dataSource = self
        
        let u1 = Urunler(urunAd:"ViaBonte-The River of Flowers", urunFiyat: "169,00 TL", urunTeslimat: "Aynı Gün Teslimat ", taksitFiyat: "58,83 TL'den Başlayan Taksitlerle", urunResim: "viaBonte", urunId: 1)
        
        let u2 = Urunler(urunAd:"Beton Saksı Mini Orkide", urunFiyat: "149,00 TL", urunTeslimat:"Aynı Gün Teslimat ", taksitFiyat: "55,13 TL'den Başlayan Taksitlerle" , urunResim: "miniOrkide", urunId: 2)
        
        let u3 = Urunler(urunAd:"Areka Palmiyesi", urunFiyat: "220,00 TL", urunTeslimat: "2-3 İş Günü", taksitFiyat: "65.50 TL'den Başlayan Taksitlerle", urunResim: "arekaPalmiyesi", urunId: 3)
        
        let u4 = Urunler(urunAd:"Pembe Kutuda 20'li Kırmızı Gül", urunFiyat: "229,90 TL", urunTeslimat: "2 İş Günü", taksitFiyat: "3 Aya Varan Taksitlerle", urunResim: "kirmiziGul", urunId: 4)
        
        let u5 = Urunler(urunAd:"Dağ Palmiyesi-Chamaedore..", urunFiyat: "120,00 TL", urunTeslimat: "Aynı Gün Teslimat", taksitFiyat: "35,00 TL'den Başlayan Taksitlerle", urunResim: "dagPalmiyesi", urunId: 5)
        
        let u6 = Urunler(urunAd:"Çikolatalı Çilek Kutusu", urunFiyat: "450,00 TL", urunTeslimat: "3 İş Günü", taksitFiyat: "6 Aya Varan Taksitlerle", urunResim: "cileklerKutusu", urunId: 6)
        
        let u7 = Urunler(urunAd:"İsimli Kişiye Özel Papatya Kolye", urunFiyat: "69,99 TL", urunTeslimat:"2-3 İş Günü", taksitFiyat: "3 Aya Varan Taksitlerle" , urunResim: "papatyaKolye", urunId: 7)
        
        let u8 = Urunler(urunAd:"Pembe Jelibon Çikolata Rüyası", urunFiyat: "179,90 TL", urunTeslimat:"Aynı Gün Teslimat", taksitFiyat: "50,00 TL'den Başlayan Taksitlerle" , urunResim: "jelibon", urunId: 8)
        
        let u9 = Urunler(urunAd:"120cm Pembe Büyük Peluş Ayı", urunFiyat: "199,99 TL", urunTeslimat:"4 Eylül-8 Eylül", taksitFiyat: "25,00 TL'den Başlayan Taksitlerle" , urunResim: "ayi", urunId: 9)
        
        let u10 = Urunler(urunAd:"Kuş Tasarımlı Ahşap Duvar Saati", urunFiyat: "75,00 TL", urunTeslimat:"5-6 İş Günü", taksitFiyat: "25,00 TL'den Başlayan Taksitlerle" , urunResim: "saat", urunId: 10)
        
        let u11 = Urunler(urunAd:"Beyzatex Kedi Köpek Yatağı Yuvası", urunFiyat: "129,90 TL", urunTeslimat:"2-3 İş Günü", taksitFiyat: "29,90 TL'den Başlayan Taksitlerle" , urunResim: "kediYuvasi", urunId: 11)
        
        let u12 = Urunler(urunAd:"Royal Canin Kitten Yavru Kedi Maması 4 Kg", urunFiyat: "499,90 TL", urunTeslimat:"1-2 İş Günü", taksitFiyat: "99,90 TL'den Başlayan Taksitlerle" , urunResim: "royalCanin", urunId: 12)
        
        let u13 = Urunler(urunAd:"Kayışlı Gezdirme Boyun Göğüs Tasması", urunFiyat: "95,59 TL", urunTeslimat:"1-2 İş Günü", taksitFiyat: "12 Aya Varan Taksitlerle" , urunResim: "kediTasmasi", urunId: 13)
        
        let u14 = Urunler(urunAd:"Bambu Tabaklı Fincan Takımı- 6 Kişilik", urunFiyat: "106,90 TL", urunTeslimat:"2-3 İş Günü", taksitFiyat: "26,90 TL'den Başlayan Taksitlerle" , urunResim: "fincan", urunId: 14)
        
       
        
    
        let r1 = Resim(resimAd: "ayniGunCicek",resimId: 1)
        let r2 = Resim(resimAd: "cokSatanlar",resimId: 2)
        let r3 = Resim(resimAd: "dogumGunu",resimId: 3)
        let r4 = Resim(resimAd: "gununFirsatlari",resimId: 4)
        let r5 = Resim(resimAd: "icMekanBitki",resimId: 5)
        let r6 = Resim(resimAd: "saksiliBitkiler",resimId: 6)
        let r7 = Resim(resimAd: "pelusAyiciklar",resimId: 7)
        let r8 = Resim(resimAd: "ofisHediyesi",resimId: 8)
        let r9 = Resim(resimAd: "kutular",resimId: 9)
        let r10 = Resim(resimAd: "lezzetliCikolatalar",resimId: 10)
        let r11 = Resim(resimAd: "hediyeSetleri",resimId: 11)
        
        
        resimListesi.append(r1)
        resimListesi.append(r2)
        resimListesi.append(r3)
        resimListesi.append(r4)
        resimListesi.append(r5)
        resimListesi.append(r6)
        resimListesi.append(r7)
        resimListesi.append(r8)
        resimListesi.append(r9)
        resimListesi.append(r10)
        resimListesi.append(r11)
       
        
        
        
    
        urunlerListesi.append(u1)
        urunlerListesi.append(u2)
        urunlerListesi.append(u3)
        urunlerListesi.append(u4)
        urunlerListesi.append(u5)
        urunlerListesi.append(u6)
        urunlerListesi.append(u7)
        urunlerListesi.append(u8)
        urunlerListesi.append(u9)
        urunlerListesi.append(u10)
        urunlerListesi.append(u11)
        urunlerListesi.append(u12)
        urunlerListesi.append(u13)
        urunlerListesi.append(u14)
       
        
        }

    }
   


extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return urunlerListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let urun =  urunlerListesi[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "urunHucre", for: indexPath) as! TableViewCell
        cell.urunAdi.text = urun.urunAd!
        cell.cicekImage.image = UIImage(named: urun.urunResim!)
        cell.urunFiyat.text = String(urun.urunFiyat!)
        cell.urunTeslimat.text = urun.urunTeslimat!
        cell.taksitFiyat.text = String(urun.taksitFiyat!)
        
        return cell
        
        
    }

}
extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case ResimCollectionView :
        return resimListesi.count
        default :
            return 0
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case ResimCollectionView :
        let resim = resimListesi[indexPath.row]
        let cell = ResimCollectionView.dequeueReusableCell(withReuseIdentifier: "hucreCollection", for: indexPath) as! ResimCollectionViewCell
            cell.resim.image = UIImage(named: resim.resimAd!)
            return cell
            
        default :
          return UICollectionViewCell()
            
            
     }
}


}
