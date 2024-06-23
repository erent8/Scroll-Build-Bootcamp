# Noir: Gizlilik Programcısının Dostu

Noir'ü sıfır bilgi devreleri için özel olarak tasarlanmış bir dil olarak düşünün. Geleneksel olarak, bu devreleri oluşturmak biraz... biraz da kriptograflar için beyin cerrahisi yapmak gibiydi. Noir bunu değiştiriyor. "Hey, bazı detayları ortaya çıkarmadan bir şey bildiğimi kanıtlamak istiyorum" demenin daha akışkan bir yolunu sunuyor.

## Neden Noir? Çünkü Gizlilik Baş Ağrısı Olmamalı

Noir'ün temel amacı, ZKPs'yi erişilebilir hale getirmektir. Daha fazla geliştiricinin özel ticaret veya oyunlar gibi harika şeyler inşa etmesine izin vermektir, bu oyunlarda gizli stratejiniz gerçekten gizlidir. Sanal bir kulübe giriş için yaşınızı göstermeden yaşınızı kanıtlamak gibi bir şey düşünün!

## Noir Uygulamada: Kullanım Alanları

Peki, Noir'ü nerede kullanabilirsiniz? DeFi'yi düşünün - herkesin cüzdan bakiyesini görmeksizin ticaret yapmak. Ya da kredi puanınızın bir kredi için yeterince iyi olduğunu kanıtlamak isteyin, tüm finansal geçmiyinizi vermeden. Ve hey, oyuncular, kartlarınıza göz atmaksızın hile yapamayan bir poker oyunu nasıl olurdu? İşte Noir'ün gücü!

## Noir'le Yakından Tanışacaklar Kimler?

Eğer gizlilik konusunda heyecanlı bir blockchain geliştiricisiyseniz veya ZKPs hakkında çok meraklıysanız, Noir sizin giriş noktanızdır. Bu devrim niteliğindeki teknolojiyi daha fazla insan için kullanılabilir hale getirmekle ilgilidir.

## Köprü: Aztec Sözleşmeleri

Tamam, hızlı bir teknik bilgi: Noir kodu doğrudan blockchain üzerinde yaşamaz çünkü blockchain kendisi şeyleri gizli tutmada harika değildir. Bunun yerine, Aztec Sözleşmesi olarak derlenir. Bir Aztec Sözleşmesini, güvenli bir zarf olarak düşünün. İçine Noir devrenizi koyarsınız, bu da kanıtlamaya çalıştığınızı açıklar. Zarf aynı zamanda bu kanıtı doğrulamak için gereken tüm araçları da içerir. Bu şekilde, tüm paketi (Aztec Sözleşmesi) blockchain'e gönderebilir ve kimse zarfın (Noir kodunuzun) orijinal içeriğini görmeden kanıtı kontrol edebilir.

## Noir ile İletişim: Solidity Doğrulayıcıları

Günlük uygulamanızda bu Aztec Sözleşmelerini nasıl kullanırsınız? İşte burada Solidity Doğrulayıcıları devreye girer. Onlar, Noir devreleri dünyası ile normal Solidity kodunuz arasındaki küçük çevirmenler gibi davranırlar. Mesela, kullanıcının oyununuzda oynamak için yeterli jetonu olduğunu kanıtlayan bir Noir devreniz varsa, Solidity Doğrulayıcısı o kanıtı kullanıcının kodunuzdan alır ve doğrulamak için kontrol eder. Bu, doğrulayıcıya "Hey, bu kanıta güvenebilir miyiz? Gerçekten bu kullanıcının yeterli jetona sahip olduğunu gösteriyor mu?" diye sormak gibidir. Eğer doğrulayıcı evet derse, o zaman kullanıcının oyununuza girmesi güvenli olduğunu bilirsiniz.

### Örnek Bir Doğrulayıcı

```solidity
/**
* @notice Bir Ultra Plonk kanıtını doğrulayın
* @param-proof - Serileştirilmiş kanıt
* @param _publicInputs - Halka açık girişlerin bir dizisi
* @return Kanıt geçerli ise true, aksi halde revert
*/
function verify(bytes calldata -proof, bytes32[] calldata -publicInputs) external view returns (bool) {
LoadVerificationKey (N_LOC, OMEGA_INVERSE_LOC) ;
}
