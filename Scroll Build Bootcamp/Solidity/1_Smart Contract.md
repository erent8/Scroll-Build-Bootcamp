```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Counter {
    // Data
    uint public count;

    // Constructor
    constructor() {
        count = 1;
    }
    // Query Functions
    function getCount() public view returns(uint256) {
        return count;
    } 

    // Execute Functions
    function increment() public {
        count++;
    }
    function decrement() public {
        count--;
    }
}
```

### _Buradaki kodlar ne işe yarar?_


#### _1. SPDX Lisans Tanımı:_
```solidity
// SPDX-License-Identifier: MIT
```
Bu, sözleşmenin hangi lisansla yayınlandığını belirtir. "MIT" lisansı, yaygın ve açık kaynaklı bir lisans türüdür.
#### _2. Solidity Derleyici Versiyonu:_
```solidity
pragma solidity ^0.8.25;
```
pragma ifadesi, hangi Solidity derleyici sürümünün kullanılacağını belirtir. Bu durumda, 0.8.25 sürümü veya daha yüksek, ancak 0.9.0'dan düşük sürümlerle uyumludur.

#### _3. Sözleşme Tanımı:_
```solidity
contract Counter {
```
contract anahtar kelimesi ile Counter adlı bir sözleşme (contract) tanımlanır.
#### _4. Veri (State Variables):_
```solidity
    // Data
    uint public count;
```
uint (unsigned integer), negatif olmayan bir tamsayı veri tipidir.
public anahtar kelimesi, count değişkeninin herkes tarafından okunabilir olduğunu belirtir. Solidity, public değişkenler için otomatik olarak bir getter fonksiyonu oluşturur.
count, sayacın değerini tutar.

#### _5. Yapıcı Fonksiyon (Constructor):_
```solidity
    // Constructor
    constructor() {
        count = 1;
    }
```
constructor fonksiyonu, sözleşme ilk dağıtıldığında bir kez çalıştırılır.
Bu yapıcı fonksiyon, count değişkenini başlangıçta 1 olarak ayarlar.
#### _6. Sorgulama Fonksiyonu (Query Functions):_
```solidity
    // Query Functions
    function getCount() public view returns(uint256) {
        return count;
    }
```
* public: Bu fonksiyonun herkes tarafından çağrılabileceğini belirtir.

* view: Bu fonksiyonun blockchain'deki durumu değiştirmeyeceğini belirtir, yani sadece veri okur.
returns(uint256): Bu fonksiyonun bir uint256 değeri döndüreceğini belirtir.
getCount fonksiyonu, count değişkeninin mevcut değerini döndürür.
#### _7. Yürütme Fonksiyonları (Execute Functions):_
```solidity

    // Execute Functions
    function increment() public {
        count++;
    }

    function decrement() public {
        count--;
    }
```
* increment: Sayaç değerini bir artırır.
* decrement: Sayaç değerini bir azaltır.
* public: Bu fonksiyonların herkes tarafından çağrılabileceğini belirtir.
Bu fonksiyonlar, blockchain'deki durumu değiştirdikleri için gas ücreti gerektirir.
#### Genel İşleyiş:

* Dağıtım (Deployment): Sözleşme dağıtıldığında, constructor çalıştırılır ve count değişkeni 1 olarak ayarlanır.
* Değer Okuma (Query): getCount fonksiyonu ile count değerini okuyabilirsiniz.
* Değer Artırma (Increment): increment fonksiyonunu çağırarak count değerini bir artırabilirsiniz.
* Değer Azaltma (Decrement): decrement fonksiyonunu çağırarak count değerini bir azaltabilirsiniz.
* Bu, temel bir sayaç sözleşmesidir ve Solidity'nin temel yapı taşlarını kullanarak nasıl çalıştığını anlamak için iyi bir örnektir.
