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

* uint i = 0;: Bu for döngüsünün başlatma kısmıdır. Bir değişken i bildirilir ve 0 olarak başlatılır. Bu değişken, dizideki öğelere erişim için dizin görevi görür.
  
* i < data.length;: Bu for döngüsünün koşul kısmıdır. Döngü, dizi verilerinin uzunluğundan küçük olduğu sürece çalışmaya devam edecektir. i veri uzunluğuna eşit veya ondan büyük olduğunda döngü duracaktır.
  
* i++: Bu for döngüsünün artış kısmıdır. Döngünün her yinelemesinden sonra i'nin değeri 1 artırılır. Bu, dizini dizideki bir sonraki öğeye taşır.
  
* toplam += veri[i];: Döngünün içinde dizi verilerinin i'inci elemanı toplama eklenir. Bu işlem dizideki her eleman için tekrarlanır.
Döngü dizideki tüm öğeler için yürütüldükten sonra işlev toplam toplamı döndürür.


### _Döngüler_ 

While döngüleri, belirtilen koşul doğru kaldığı sürece bir kod bloğunu çalıştırmaya devam eder. Döngü başlamadan önce gereken yineleme sayısı bilinmediğinde kullanışlıdırlar.

#### _Söz Dizimi ve Örnek_

function decrement(uint initial) public pure returns (uint) {

```solidity
    while (initial &gt; 0) {

        initial--;

    }

    return initial;

}
```

* while (başlangıç ​​> 0): Bu while döngüsünün koşuludur. Döngü, başlangıç ​​değişkeni 0'dan büyük olduğu sürece çalışmaya devam edecektir.
  
* başlangıç--;: Bu, döngünün her yinelemesinde yürütülen kod bloğudur. Her yinelemede başlangıç ​​değişkenini 1 azaltır.

    Döngü, başlangıç ​​değeri 0'dan büyük olmayana kadar başlangıç ​​değerini çalıştırmaya ve azaltmaya devam edecektir. Bu noktada döngü sona erer ve program, döngüyü takip eden herhangi bir kodla devam eder.

Özetle, bu döngü etkin bir şekilde başlangıç ​​değerinden 0'a doğru geri sayar.

### En İyi Uygulamalar ve Hususlar

Karmaşıklığı En Aza İndirin: Sözleşme kodunu basit ve bakımı kolay tutmak için derinlemesine iç içe geçmiş döngülerden ve koşul ifadelerinden kaçının.
Sonsuz Döngülere Karşı Koruma: Sağlanan tüm gazı tüketebilecek ve işlemlerin başarısız olmasına neden olabilecek sonsuz yürütmeyi önlemek için döngülerin her zaman bir kesme koşuluna sahip olduğundan emin olun.
Verimli Gaz Kullanımı: Özellikle döngülerde, her yinelemeyle ilişkili gaz maliyetlerine dikkat edin. Mümkün olan yerlerde yürütmeyi en aza indirmek için koşulları ve molaları akıllıca kullanın.

### _Ara Ver ve Devam_
Ara Ver ve Devam Et'i kullanma Hem for hem de while döngülerinde, döngüden tamamen çıkmak için break komutunu kullanarak akışı daha fazla kontrol edebilir veya geçerli döngü yinelemesinin geri kalanını atlayıp bir sonrakine başlamaya devam edebilirsiniz.

```solidity

function findFirstEven(uint\[\] memory data) public pure returns (uint) {

    for (uint i = 0; i &lt; data.length; i++) {

        if (data\[i\] % 2 == 0) {

            return data\[i\];  // Return the first even number

        }

    }

    return 0;  // Return 0 if no even number is found

}
```

Eğer başka bir dilde kontrol akışı ve koşul cümleleri kullandıysanız, görebileceğiniz gibi Solidity'nin bu konuda pek bir farkı yok.
