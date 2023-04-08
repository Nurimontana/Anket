<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    
</head>
<body>


   
    <?php
    include_once("ayarlar.php"); // ayarlar.php dosyasını çağırdık
    $db = new PDO("mysql:host=$sunucu;dbname=$vt;charset=utf8", $kadi, $ksifre);
    $sorgu = "SELECT * FROM sorular";
    $anket = $db->prepare($sorgu);
    $sorgu2 = "SELECT COUNT(*) FROM sorular";
    $sorusayisi = $db->query($sorgu2)->fetchColumn(); // toplamda kaç soru olduğunu bulur ve sorusayisi değişkenine atar
    $anket->execute();  
    // yukardaki 4 satır ile veri tabanını bağladık
    #********************************************************************************
    ?>
<form action="" method= "post">
    <?php
     foreach ($anket as $sorular ) {
        $j = 0;
        $id = $sorular["id"];
        $soru = $sorular["soru"];
        
        
         echo "<div class=\"alert alert-success\" role=\"alert\">"; 
        echo "<span class='text-primary'>$id. ".$soru."</span>";
        echo"<br>";
        echo "<input type='radio' name='question" . $sorular['id'] . "' value='1'> Kesinlikle Katılmıyorum <br>";
        echo "<input type='radio' name='question" . $sorular['id'] . "' value='2'> Katılmıyorum            <br>";
        echo "<input type='radio' name='question" . $sorular['id'] . "' value='3'> Az Katılmıyorum         <br>";
        echo "<input type='radio' name='question" . $sorular['id'] . "' value='4'> Kararsızım              <br>";
        echo "<input type='radio' name='question" . $sorular['id'] . "' value='5'> Az Katılıyorum          <br>";
        echo "<input type='radio' name='question" . $sorular['id'] . "' value='6'> Katılıyorum             <br>";
        echo "<input type='radio' name='question" . $sorular['id'] . "' value='7'> Kesinlikle Katılıyorum  <br><br>";
        echo "</div>"
     
     // value değeri vermemizin amacı ise puanlama durumunda hangi radio butonunun seçildiğini anlamaktır.
// foreach ile tablodaki soruları, id'leri ve radio butonlarını ekrana yazdırdık.
#********************************************************************************

?>
<?php
if (isset($_POST['gönder'])) {
    $a = 1;
    $toplamPuan = 0;
    $ilkSoruGrubu = 0;
    $ikinciSoruGrubu = 0;
    $ücüncüSoruGrubu = 0;
    $dördüncüSoruGrubu = 0;
    while ($a <= $soruSayisi) {
        $cevap = $_POST["question" . $a];
        if ($a <= 5) {
            $ilkSoruGrubu += $cevap;
        } elseif ($a <= 10) {
            $ikinciSoruGrubu += $cevap;
        } elseif ($a <= 15) {
            $ücüncüSoruGrubu += $cevap;
        } elseif ($a <= 20) {
            $dördüncüSoruGrubu += $cevap;
        }
        $toplamPuan += $cevap;
        $a++;
    }

    // kullanıcının seçtiği radio butonunun value değerini cevap değişkenine atadık.
    // ve cevap değişkenini her seferinde toplamPuan ile toplayarak kullanıcının toplam puanını elde ettik.
    // soruları beşer gruplara ayırdık ve her soruyu kendi arasında grupladık if yardımıyla.
    $genelCevap = " ";
    $cevap1 = " ";
    $cevap2 = " ";
    $cevap3 = " ";
    $cevap4 = " ";

    if ($toplamPuan <= 45) {
        //bu if ile toplam zeka puanın 3 parçaya böldük yüksek,orta ve düşük.
        $genelcevap = "toplam puanınız 45 ile 0 arasında";
        echo "<br>";
        if ($ilkSoruGrubu < 20) {
            //ilk 5 sorunun cevabına göre zeka türünü belirliyoruz.
            $cevap1 = "ilk zekanızın gelişmesi gerekiyor";
        } else {
            $cevap1 = "ilk zekanız yüksek";
        }
        //************************************************
        if ($ikinciSoruGrubu < 20) {
            //ikinci 5 sorunun cevabına göre zeka türünü belirliyoruz.
            $cevap2 = "ikinci zekanızın gelişmesi gerekiyor";
        } else {
            $cevap2 = "ikinci zekanız yüksek";
        }
        //************************************************
        if ($ücüncüSoruGrubu < 20) {
            //üçüncü 5 sorunun cevabına göre zeka türünü belirliyoruz.
            $cevap3 = "üçüncü zekanızın gelişmesi gerekiyor";
        } else {
            $cevap3 = "üçüncü zekanız yüksek";
        }
        //************************************************
        if ($dördüncüSoruGrubu < 20) {
            //dördüncü 5 sorunun cevabına göre zeka türünü belirliyoruz.
            $cevap4 = "dördüncü zekanızın gelişmesi gerekiyor";
        } else {
            $cevap4 = "dördüncü zekanız yüksek";
        }
        //************************************************
    } elseif ($toplamPuan <= 90) {
        $genelcevap = "toplam puanınız 90 ile 45 arasında";
    
        if ($ilkSoruGrubu < 20) {
            //ilk 5 sorunun cevabına göre zeka türünü belirliyoruz.
            $cevap1 = "ilk zekanızın gelişmesi gerekiyor";
        } else {
            $cevap1 = "ilk zekanız yüksek";
        }
        //************************************************
        if ($ikinciSoruGrubu < 20) {
            //ikinci 5 sorunun cevabına göre zeka türünü belirliyoruz.
            $cevap2 = "ikinci zekanızın gelişmesi gerekiyor";
        } else {
            $cevap2 = "ikinci zekanız yüksek";
        }
        //************************************************
        if ($ücüncüSoruGrubu < 20) {
            //üçüncü 5 sorunun cevabına göre zeka türünü belirliyoruz.
            $cevap3 = "üçüncü zekanızın gelişmes";
          if ($dördüncüSoruGrubu <20) { //dördüncü 5 sorunun cevabına göre zeka türünü belirliyoruz.
                $cevap4="dördüncü zekanızın gelişmesi gerekiyor";
                }else {
                $cevap4="dördüncü zekanız yüksek";
                }
        
             //************************************************
         }else {
            $genelcevap= "toplam puanınız 140 ile 90 arasında";
             if ($ilkSoruGrubu<20) { //ilk 5 sorunun cevabına göre zeka türünü belirliyoruz.
                $cevap1="ilk zekanızın gelişmesi gerekiyor";
                }else {
                $cevap1="ilk zekanız yüksek";
                }
                //************************************************
                if ($ikinciSoruGrubu<20) { //ikinci 5 sorunun cevabına göre zeka türünü belirliyoruz.
                    $cevap2="ikinci zekanızın gelişmesi gerekiyor";
                }else {
                    $cevap2="ikinci zekanız yüksek";
                }
             //************************************************
             if ($ücüncüSoruGrubu<20) { //üçüncü 5 sorunun cevabına göre zeka türünü belirliyoruz.
                $cevap3="üçüncü zekanızın gelişmesi gerekiyor";
                }else {
                $cevap3="üçüncü zekanız yüksek";
                }
             //************************************************
             if ($dördüncüSoruGrubu<20) { //dördüncü 5 sorunun cevabına göre zeka türünü belirliyoruz.
                $cevap4="dördüncü zekanızın gelişmesi gerekiyor";
                }else {
                $cevap4="dördüncü zekanız yüksek";
                }
             //************************************************
         }
        
         $toplamcevap = $genelcevap . " ," . $cevap1 . " ," . $cevap2 . " ," . $cevap3 . " ," . $cevap4; // kullanıcının yorumlarını tek bir değişkende topluyoruz
         //*****************************************************
         $cevapeklesorgu = "INSERT INTO cevaplartablosu (cevap) VALUES(?)";
         $tablo = $db->prepare($cevapeklesorgu);
         $tablo->execute(array($toplamcevap));
         // toplamcevap değişkenini veritabanına kayıt ettik
         //*****************************************************
         echo "<div class=\"alert alert-success\" role=\"alert\">
                 $toplamcevap
                 </div>";
        }
    }}
         // butonun tıklandığında yapılacak işlemleri kontrol eden if'in kapatma parantezi.
         ?>
         <input class="btn btn-primary" type="submit" name="gönder" id="" value="gönder">
         </form>
         </center>
         </body>
         </html>
         