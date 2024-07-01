Solidity'deki kontrol akış mekanizmaları, herhangi bir programlama dilinde olduğu gibi, kodun yürütülmesini yönlendirir. Karar vermede ("if-else" ifadeleri) ve tekrarlanan görevleri yerine getirmede ("for" ve while döngüleri) çok önemlidirler. Bu ders, akıllı sözleşmelerdeki karmaşık mantığı yönetmek için Solidity'de nasıl etkili bir şekilde uygulanabileceklerine odaklanarak bu kavramları ayrıntılı olarak açıklayacaktır.

#### Bazı temel bilgilerle başlayalım,

### If-Else İfadeleri

If-else ifadeleri, bir programın belirli koşullara bağlı olarak farklı kod bölümlerini çalıştırmasına olanak tanır. Bu koşullar doğru veya yanlış olarak değerlendirilir ve yürütme akışı buna göre yönlendirilir.

Bir örnekle sözdizimine bakalım.

```solidity

function feeCalculator(uint amount) public pure returns (uint) {

    if (amount &lt; 500) {

        return 10;  // Flat fee for small transactions

    } else if (amount &lt; 2000) {

        return amount \* 2 / 100;  // 2% fee

    } else {

        return amount \* 15 / 1000;  // 1.5% fee for larger transactions

    }

}
```

* if (miktar < 500): Bu, kontrol edilen ilk durumdur. Tutar 500'den az ise bu bloğun içindeki kod çalıştırılır. Bu durumda fonksiyon 10 sabit ücret döndürecektir. Bu blok çalıştırıldıktan sonra fonksiyon sona erer ve başka kod çalıştırılmaz.
  
* else if (tutar < 2000): İlk koşul sağlanmıyorsa program bu koşulu kontrol eder. Tutar 500 veya daha fazla ancak 2000'den az ise bu blok içindeki kod çalıştırılır. İşlev, tutarın %2'si tutarında bir ücret hesaplar ve bu değeri döndürür.

* else: Eğer if ve else if koşulları karşılanmıyorsa, else bloğunun içindeki kod çalıştırılır. Bu, miktarın 2000 veya daha fazla olduğu anlamına gelir. İşlev, tutarın %1,5'i tutarında bir ücret hesaplar ve bu değeri döndürür.



##### if-else ifadesi, fonksiyonun miktar değerine bağlı olarak farklı kod bloklarını yürütmesine olanak tanır, böylece farklı giriş aralıkları için farklı davranışlar sağlanır.

### Döngüler için

For döngüleri Solidity'de bir ifade bloğunu belirli sayıda tekrarlamak için kullanılır. Genellikle döngü başlamadan önce yineleme sayısı bilindiğinde kullanılırlar.

Söz Dizimi ve Örnek
```solidity
function sumArray(uint\[\] memory data) public pure returns (uint sum) {

    for (uint i = 0; i &lt; data.length; i++) {

        sum += data\[i\];

    }

    return sum;

}
```
devam edecek.

