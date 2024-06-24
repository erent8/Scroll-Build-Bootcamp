# Solidity Programlama Diline Hoş Geldiniz

Bu dersin bu bölümünde, Ethereum Virtual Machine (EVM) tabanlı blockchain'ler için özel olarak tasarlanmış Solidity programlama dilini öğreneceksiniz. Solidity, blockchain üzerinde akıllı sözleşmeler geliştirmek için özel olarak tasarlandığı için genel amaçlı programlama dillerine göre daha sınırlıdır, bu da öğrenme eğrisini düşürür.

## Solidity Nedir?

Solidity, EVM tabanlı blockchain'ler üzerinde akıllı sözleşmeler oluşturmak için kullanılan ana dildir. Solidity ile merkezi olmayan uygulamalar (dApps) oluşturmak, kendi kripto paralarınızı çıkarmak ve blockchain'i hemen hemen her şey için programlamak mümkündür.

## Scroll İçin Neden Solidity Öğrenmelisiniz?

Scroll, Ethereum için bir katman 2 çözümüdür. Solidity öğrenerek, kendi akıllı sözleşmelerinizi ve hatta merkezi olmayan uygulamalarınızı (dApps) oluşturabilirsiniz. Ayrıca, Solidity öğrenerek, blockchain'lerin nasıl çalıştığını, neler yapılabileceğini ve katman 2 çözümler de dahil olmak üzere herhangi bir EVM tabanlı zinciri nasıl kullanabileceğinizi daha iyi anlayabilirsiniz.

## Solidity Söz Dizimi ve Yorumlar

Solidity'nin söz dizimi size biraz JavaScript'i hatırlatabilir, ancak kendi tadıyla. Solidity güçlü bir şekilde türlenmiştir, yani hangi tür veriyle (sayılar, dizeler veya daha karmaşık yapılar gibi) çalıştığınızı açıkça belirtmeniz gerekir. Önceki derste videoda biraz Solidity görmüştünüz, ancak işte size küçük bir örnek:

```solidity
// Bu bir yorumdur - bu yorum size veya kodu okuyan başkalarına yöneliktir.

pragma solidity ^0.8.0;

contract MyFirstContract {

    // Değişkenler

    uint myNumber = 100;

    // Fonksiyonlar

    function getMyNumber() public view returns (uint) {
        return myNumber;
    }
}
```
Bu örnekte, // bir yorumu başlatır, bu not sizin veya kodu okuyan başkalarının yararınadır. Yorumlar Solidity derleyicisi tarafından göz ardı edilir, bu yüzden tamamen sizin yararınıza yöneliklerdir.

Solidity'nin Temelleri
Solidity, sözleşmeler etrafında inşa edilmiştir. Sözleşmeyi, nesne yönelimli programlamada bir sınıf gibi düşünebilirsiniz. Bir sözleşme, bir hesabın bakiyesi gibi verileri tutabilir ve bu verileri okumak veya değiştirmek için fonksiyonlar içerebilir. Solidity'nin güzelliği, bu mantığı blockchain üzerinde çalışacak şekilde kodlamanıza olanak tanımasıdır, bu da anlaşmaları ve işlemleri kurcalanamaz ve otomatik hale getirir.

Yorum Yazma
Daha önce gördüğünüz gibi, yorumlar kodunuzu okunabilir kılmak için çok önemlidir. Solidity'de iki tür yorum vardır:

// ile başlayan tek satırlık yorumlar.
/* ve */ arasında yer alan çok satırlı yorumlar.
Yorumları kodunuzun "neden" olduğunu açıklamak için bolca kullanın. Bu sadece başkalarına kodunuzu anlamalarında yardımcı olmakla kalmaz; gelecekte siz de bunu takdir edeceksiniz, en azından ben öyle yaptım 🙂.

Solidity'de Pragma ve Sürümleme
Her Solidity dosyasının üst kısmında bir pragma satırı görürsünüz. Bu, sihirli büyülerle ilgili değil—pragma, derleyiciye kodunuzun hangi Solidity sürümü için yazıldığını söyler. Solidity hala evrim geçiriyor ve yeni sürümler eski kodları bozabilecek değişiklikler getirebilir. Sürümü belirtmek, sözleşmenizin beklenildiği gibi davranmasını sağlar.

Pragma'nın nasıl çalıştığını görelim:

solidity
```solidity
pragma solidity ^0.8.0;
Bu satır, sözleşmenin 0.8.0 ve daha yeni küçük sürümlerle uyumlu olduğunu, ancak 0.9.0 gibi büyük bir yeni sürümle uyumlu olmadığını belirtir, çünkü bu büyük sürüm bozucu değişiklikler getirebilir.
