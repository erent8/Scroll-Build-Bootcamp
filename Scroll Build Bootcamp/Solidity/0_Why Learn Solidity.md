* Solidity, Scroll gibi Ethereum Virtual Machine (EVM) tabanlı blockchain için özel olarak tasarlanmıştır.
* Blockchain üzerinde akıllı sözleşme geliştirme için özel olarak tasarlandığından, genel amaçlı programlama dillerinden daha kısıtlı olduğunu ve öğrenme eğrisini düşürdüğünü göreceksiniz.

### _Solidity Nedir?_

Solidity, EVM tabanlı blok zincirlerde akıllı sözleşmeler oluşturmak için kullanılan ana dildir.
Solidity ile blok zincirini, merkezi olmayan uygulamalar (dApp'ler) oluşturmaktan kendi kripto para birimlerinizi çıkarmaya kadar hemen hemen her şeyi yapacak şekilde programlayabilirsiniz.

### _Neden Solidity için Sağlamlığı Öğrenmelisiniz?_

Scroll, Ethereum için 2. katman çözümüdür. Solidity'yi öğrenerek kendi akıllı sözleşmelerinizi ve belki de merkezi olmayan uygulamalarınızı (dApp'ler) oluşturabilirsiniz. Ayrıca Solidity'yi öğrenerek blockchainlerin nasıl çalıştığını, onlarla neler yapılabileceğini ve Scroll gibi 2. katman çözümleri de dahil olmak üzere herhangi bir EVM tabanlı zincirin nasıl kullanılacağını daha iyi anlayacaksınız.

### _Solidity'de Sözdizimi ve Yorumlar_

Solidity'nin sözdizimi size biraz JavaScript'i hatırlatabilir, ancak kendine has bir tadı vardır. Güçlü bir şekilde yazılmıştır, yani ne tür verilerle (sayılar, dizeler veya daha karmaşık yapılar gibi) çalıştığınız konusunda net olmanız gerekir. 

```solidity
// This is a comment - it's for you, not the computer.

pragma solidity ^0.8.0;

contract MyFirstContract {

    // Variables

    uint myNumber = 100;

    // Functions

    function getMyNumber() public view returns (uint) {

        return myNumber;

    }

}
```
### _Solidity Temelleri_

Solidity'de sözleşmeler etrafında inşa edilir. Eğer aşina iseniz, sözleşmeyi nesne yönelimli programlamada bir sınıf olarak düşünün. Bir sözleşme, bir hesabın bakiyesi gibi verileri tutabilir ve bu verileri okumak veya değiştirmek için işlevler içerir. Solidity'nin güzelliği, mantığı kodlamanıza olanak sağlamasıdır

Blockchain üzerinde çalışan bu anlaşmaları ve işlemleri kurcalamaya dayanıklı ve otomatik hale getiriyor.

### _Yorum Yazma_

Daha önce de gördüğünüz gibi, kodunuzu okunabilir kılmak için yorumlar çok önemlidir. Solidity'de iki tür yorum vardır:

1. // ile başlayan tek satırlık açıklamalar.
2.  /* ve */ arasına alınmış çok satırlı açıklamalar.
Kodunuzun arkasındaki "neden"i açıklamak için yorumları özgürce kullanın. Bu sadece onu başkaları için anlaşılır kılmakla ilgili değil; gelecekte siz de takdir edeceksiniz, en azından ben takdir ettim 🙂.

### _Solidity'de Pragma ve Sürüm Oluşturma_

Her Solidity dosyasının üstünde bir pragma çizgisi göreceksiniz. Bu sihirli büyülerle ilgili değil; 'pragma' derleyiciye kodunuzun Solidity'nin hangi sürümü için yazıldığını söyler. Solidity hala gelişmektedir ve yeni sürümler, eski kodları bozabilecek değişiklikler getirebilir. Sürümü belirtmek, sözleşmenizin beklendiği gibi davranmasını sağlar.

##### Pragmayı iş başında görelim:

```solidity
 ^0,8,0;
```
Bu satır, sözleşmenin Solidity 0.8.0 sürümü ve daha yeni küçük sürümlerle uyumlu olduğunu ancak 0.9.0 gibi önemli değişiklikler getirebilecek yeni bir ana sürümle uyumlu olmadığını belirtir.

Ve işte karşınızda: Solidity dünyasına ilk adımlar! Solidity'nin ne olduğundan ve neden öğrenilmesi gereken bir beceri olduğundan söz dizimine, yorumlara ve sürüm oluşturmaya kadar temel konuları ele aldık. Bir sonraki derste değişkenler ve veri türleri hakkında bilgi edineceksiniz.

### _Kaynak_ RiseIn/Scroll Bootcamp Documentation
    https://www.risein.com/
