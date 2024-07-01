    https://www.risein.com/

  ***************************************************************************************************
Solidity serimize tekrar hoş geldiniz! Bugün değişkenler ve veri türleri dünyasına daha derinlemesine dalıyoruz. Değişkenleri, tıpkı bir atölyedeki çeşitli kutular gibi, her biri belirli araçları veya malzemeleri tutacak şekilde tasarlanmış, farklı türdeki verileri depoladığınız kaplar olarak düşünün. Solidity'de bu "kutular" kesin olarak etiketlenmiştir çünkü dilin verimli çalışabilmesi için içeride ne olduğunu anlaması gerekir. Gelin bu konteynerleri inceleyelim ve bunları akıllı sözleşmelerinizde nasıl kullanabileceğinizi görelim.


### _Değişkenler Nelerdir?_

Solidity'deki değişkenler, verileri depolamak için kullanılan yer tutuculardır. Sayılar, metinler veya daha karmaşık yapılar gibi değerleri tutabilirler. Bir değişkeni bildirmek, kutunuzda ne tür veri depolamayı beklediğinizi bildirmeye ve ardından onu adlandırmaya benzer.

### _Veri tipleri_

Solidity, programınızın ihtiyaçlarını karşılamak için çeşitli veri türleri sağlar. Temel türlerini inceleyelim ve ardından daha karmaşık yapılara geçelim.

* uint: "işaretsiz tamsayı" anlamına gelir. Çeşitli boyutlarda negatif olmayan tam sayıları temsil eder. Boyutu uint8, uint16, uint32 olarak ve uint256'ya kadar belirtebilirsiniz; varsayılan değer uint256'dır; bu, türü sağlamazsanız otomatik olarak uint256 olacağı anlamına gelir
* (uint -> uint256). Her adım depolayabileceği maksimum sayıyı artırır.

 ----------------------------------------------

```solidity
uint8 smallNumber = 255;

uint largeNumber = 123456789;
```
* uint: "işaretsiz tamsayı" anlamına gelir. Çeşitli boyutlarda negatif olmayan tam sayıları temsil eder. Boyutu uint8, uint16, uint32 olarak ve uint256'ya kadar belirtebilirsiniz; varsayılan değer uint256'dır; bu, türü sağlamazsanız otomatik olarak uint256 olacağı anlamına gelir (uint -> uint256). Her adım depolayabileceği maksimum sayıyı artırır.

----------------------------------------------
```solidity

int mediumNumber = -12345;

int256 bigNumber = -123456789012345;
```
* int: Represents integers that can be both positive and negative. Like uint, int also comes in various sizes from int8 to int256.

----------------------------------------------
```solidity
bool isRegistered = true;

```
* bool: Basit bir doğru/yanlış veri türü. Bu, kodunuzdaki bir açma/kapama düğmesi gibidir.

----------------------------------------------
```solidity
address userAddress = 0xAb390...;

```
* address: This type is used to store addresses. Each address corresponds to an account or contract on the blockchain.

----------------------------------------------
```solidity
string name = "RiseIn/Scroll";

```
* string: Used to store sequences of characters, useful for names, descriptions, or any other textual content.
----------------------------------------------
```solidity
bytes32 hash = "abc123...";

bytes memory data = "Dynamic length bytes";
```
* byte : Solidity, ham bayt verilerini depolamak için bayt türleri sunar. Türler bayt1'den bayt32'ye kadar değişir. Ayrıca isteğe bağlı uzunluktaki veriler için dinamik bir bayt türü de vardır.
----------------------------------------------
```solidity
struct Person {

      string name;

      uint age;

  }

  Person public alice = Person("Eren", 23);

```

* structs: Birden fazla değişkeni bir arada gruplayan daha karmaşık veri türleri oluşturmanıza olanak tanır.

----------------------------------------------

```solidity
enum State { Waiting, Ready, Active }

State public currentState = State.Waiting;

```
* enums: önceden tanımlanmış küçük bir değer kümesinden birine sahip olması gereken bir değişkeni tanımlamanıza yardımcı olur. Bunlar durumları veya seçimleri takip etmek için kullanışlıdır.

----------------------------------------------

* Declaring Variables
```solidity
pragma solidity ^0.8.0;

contract MyContract {

    uint public count = 10;

    bool private isActive = false;

    address public ownerAddress;

    string private greeting = "Hello";

    struct Book {

        string title;

        string author;

        uint year;

    }

    Book public book;

    enum Phase { Init, Running, Stopped }

    Phase public currentPhase = Phase.Init;

    function setBook(string memory *title, string memory* author, uint \_year) public {

        book = Book(\_title, *author,* year);

    }

    function changePhase(Phase \_newPhase) public {

        currentPhase = \_newPhase;

    }

}

```
Bu değişkenleri bir Solidity sözleşmesinde nasıl bildireceğiniz yukarıda açıklanmıştır:

###### İşlevler konusunda endişelenmeyin. Sadece kitabın ve currentPhase'in işlevlerde nasıl oluşturulduğuna odaklanın. Kursta daha sonra işlevlere daha fazla odaklanacağız.


















Kaynak:


      https://www.risein.com/
