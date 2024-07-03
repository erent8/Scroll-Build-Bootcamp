### _Solidity'de Miras_
Solidity'de Miras, daha az kod yazmanıza, kodunuzu daha temiz hale getirmenize ve daha iyi yönetmenize yardımcı olabilir. Kulağa iyi geliyor değil mi? 😀 Hadi, kolay açıklamalar ve örneklerle detaylara dalalım.

### _Solidity'de Miras Nedir?_
Solidity'de Miras, diğer programlama dillerinden bildiğiniz gibi, bir sözleşmeden diğerine nitelik ve davranışları aktarmanın bir yoludur. Bunu, bir çocuk sözleşmesinin bir ebeveyn sözleşmesinden özellikleri miras aldığı bir aile ağacı gibi düşünebilirsiniz.

### _Neden Miras Kullanmalı?_
* Yeniden Kullanılabilirlik: Bir ebeveyn sözleşmede kodu bir kez yazın ve birden fazla çocuk sözleşmede yeniden kullanın.
* Basitlik: Birçok kod seti yerine bir kod setini yönetin ve güncelleyin.
* Organizasyon: Projenizdeki ilişkileri ve hiyerarşileri anlamaya yardımcı olan açıkça yapılandırılmış kod.
#### Solidity Kalıtımında Anahtar Kavramlar
### 1. _Tekli Miras_
Temel bilgilerle başlayalım. İşte bir ebeveyn sözleşmeden miras alan bir çocuk sözleşmenin nasıl oluşturulacağı.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Parent {
    uint public money = 100;

    function getMoney() public view returns(uint) {
        return money;
    }
}

contract Child is Parent {
    uint public spendingAmount = 10;

    function spendMoney() public {
        money -= spendingAmount; // Parent'ten miras alınan money'i doğrudan kullanın
    }
}
```
Bu örnekte, Child, Parent'ten miras alır. Parent'ten money ve getMoney()'e erişebilir.

### 2. _Çoklu Kalıtım_
Solidity, bir sözleşmenin birden fazla ebeveyn sözleşmeden miras alabileceği çoklu kalıtımı da destekler.

```solidity
contract A {
    function foo() public pure returns (string memory) {
        return "A";
    }
}

contract B {
    function bar() public pure returns (string memory) {
        return "B";
    }
}

contract C is A, B {
    function fooBar() public pure returns (string memory) {
        return string(abi.encodePacked(foo(), bar()));
    }
}
```


Burada, C sözleşmesi hem A hem de B'den miras alır ve A'dan foo() ve B'den bar() işlevlerini kullanabilir.

### 3. _Constructor Kalıtımı_
Bir ebeveyn sözleşmesinin bir constructor'ı varsa, bu çocuk sözleşmede uygun şekilde ele alınmalıdır.

```solidity

contract Parent {
    uint public num;

    constructor(uint _num) {
        num = _num;
    }
}

contract Child is Parent {
    constructor(uint num) Parent(num) {} // Parent'in constructor'ına argümanları iletmek
}
```
### 4. _İşlevleri Geçersiz Kılma_
Çocuk sözleşmeler, override anahtar kelimesini kullanarak ebeveyn sözleşmelerin işlevlerini geçersiz kılabilir.

```solidity
contract Parent {
    function greet() public pure virtual returns (string memory) {
        return "Hello from Parent!";
    }
}

contract Child is Parent {
    function greet() public pure override returns (string memory) {
        return "Hello from Child!";
    }
}
```
### _Pratik İpuçları_
* Görünürlük Önemlidir: private işlevler ve durum değişkenleri türetilmiş sözleşmeler tarafından erişilemezken, internal olanlar erişilebilir.
* Gaz Verimliliği: Kalıtım, sözleşmelerinizi düzenli hale getirebilirken, her eklenen karmaşıklığın sözleşmenizi dağıtmak ve etkileşimde bulunmak için daha fazla gaz anlamına gelebileceğini unutmayın. Mümkün olduğunda optimize edin.
* Test Etme: Özellikle işlevler birbirini geçersiz kıldığında, beklenen davranışları sağlamak için miras alınan sözleşmeleri her zaman kapsamlı bir şekilde test edin.
********************************
Unutmayın, bunda iyi olmanın en iyi yolu denemek ve inşa etmektir. Bu yüzden bazı sözleşmeler oluşturun, bazı özellikleri miras alın ve birkaç işlevi geçersiz kılın
