# Circom: Gizlilik Devrelerini Oluşturma

Noir, yüksek seviyeli bir sıfır bilgi kanıt diliyken, Circom doğrudan devrelerle ilgilenir. Bu, gizlilik güçlü uygulamalarınızın tellerine ve mantık kapılarına inmek gibidir. ZKPs karmaşık olabilir ve Circom size bunları gerçekleştirmek için ince ayarlı kontrolü sağlar.

## Neden Circom? İnce Ayarlı Kontrol

Bazen gerçekten özelleştirilmiş bir şey inşa etmek için elinizi kirletmeniz gerekir. Circom, hesaplamaların sıfır bilgi kanıtı içinde nasıl yapıldığını tam olarak tanımlamanıza izin verir. Birinin yaşını kanıtlamak için benzersiz bir yol mu istiyorsunuz? Karmaşık bir hesaplamanın verimli bir şekilde kanıtlanmasını mı istiyorsunuz? Circom bunu mümkün kılar.

## Circom'da Eylem: Sınırsız Olasılıklar

Circom nerede parlıyor? Sıradan şüphelilerin ötesine bakalım! Online bir oyunda rastgele bir sistemin adil olduğunu kanıtlamak, bilimsel araştırmalar için doğrulanabilir hesaplamalar, dijital bir sanat eserinin kökenini kanıtlamak isteyebilirsiniz ama sanatçının kimliğini açıklamadan. Circom bunları mümkün kılan araçtır!

## Circom ile Devre Yapan Kimler Olmalı?

Eğer hassas kontrol isteyen bir geliştiriciyseniz ve ZKPs'nin daha vahşi kıyılarından heyecan duyuyorsanız, Circom sizin oyun alanınızdır. Devrelerin düşük seviyeli çalışmalarını daha iyi anlamak biraz zaman alabilir, ancak ödül büyüktür.

## Derleme Akışı: Circom'dan ZKPs'ye

Hatırlanması gereken önemli bir şey: Circom devreleri doğrudan blockchain üzerinde çalışmaz. Bunun yerine, birkaç adımda derlenir:

1. Devre Tanımı: Kanıt kavramınızı Circom'da yazarsınız.
2. R1CS (Rank-1 Constraint System): Bu, devrenizi matematiksel olarak temsil eden ve ZkSNARKs için temel olan bir sistemdir.
3. Kurulum: Kanıtlarınızı üretmek ve doğrulamak için gereken 'anahtarları' oluşturur.
4. Tanık Üretici: Gerçek dünya verilerini alır ve bunları kanıt içinde devrenizin kullanabileceği bir formata çevirir.

## Circom'un Dili ve Kütüphaneleri

Circom benzersiz bir sözdizimine sahiptir ve bu, geleneksel kod yazmaktan ziyade donanımı tanımlamaya daha yakın hissettirebilir. Endişelenmeyin, kaynaklar ve kütüphaneler bolca mevcuttur! Devrelerinizi oluştururken sinyaller, bileşenler ve şablonlar kavramlarıyla çalışacaksınız.

## Basit Bir Circom Devresi

```solidity
template Çarpan() {

   signal input a;

   signal input b;

   signal output out;

   out &lt;== a \* b;  

}
```
Bu basit devre, iki sayıyı çarparak belirli bir sonuç verdiğini bildiğinizi kanıtlar. Bu tür temel yapı bloklarından neler inşa edebileceğinizi hayal edin!

Circom ile İnşa Etmek: Araç Kutusu
Circom tek başına bir araç değildir. Tipik bir iş akışı şöyle görünür:

Circom: Devre
Derleyici: Devreleri matematik dostu R1CS formatına çevirir.
SNARK Kurulumu: Kanıtlarınızı üretmek ve doğrulamak için prover ve verifier anahtarları oluşturur.
Zk-SNARK Kütüphaneleri: Uygulamanızda kanıt üretme ve doğrulama için snarkJS gibi kütüphaneler.

Bu basit devre, iki sayıyı çarparak belirli bir sonuç verdiğini bildiğinizi kanıtlar. Bu tür temel yapı bloklarından neler inşa edebileceğinizi hayal edin!

## Circom ile İnşa Etmek:
#### Araç Kutusu
Circom tek başına bir araç değildir. Tipik bir iş akışı şöyle görünür:

## Circom: Devre
#### Derleyici:
Devreleri matematik dostu R1CS formatına çevirir.
SNARK Kurulumu: Kanıtlarınızı üretmek ve doğrulamak için prover ve verifier anahtarları oluşturur.
## Zk-SNARK Kütüphaneleri:
Uygulamanızda kanıt üretme ve doğrulama için snarkJS gibi kütüphaneler.
