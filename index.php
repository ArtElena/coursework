<?php include($_SERVER['DOCUMENT_ROOT'].'/kursova/include/config.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LUX</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Exo+2&family=Montserrat:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/jquery.fancybox.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<header class="header">
    <article class="container">
        <div class="header__inner">
        <a href="index.php" class="logo">
            <img class="logo__link" src="./img/logo.svg" alt="logo">
        </a>
        <nav class="menu">
            <button class="menu__btn"></button>
            <ul class="menu__list">
                <li class="menu__item"><a  class="menu__list-link" href="#services">Послуги</a></li>
                <li class="menu__item"><a  class="menu__list-link" href="#about">Про компанію</a></li>
                <li class="menu__item"><a  class="menu__list-link" href="#contact">Контакти</a></li>
            </ul>
        </nav>
        <a class="phone" href="tel:380636111985" >+38 (063) 611 19 85 </a>
        </div>
    </article>
</header>
<section class="top">
    <article class="container " style="height: 100%; display: flex;">
        <div class="top__inner">
            <h1 class="top__title">Незалежні анонімні перевірки від професійних аудиторів</h1>
            <p class="top__text">Хороший сервіс - це додаткові продажі, зростання середнього чека і гарантований прибуток в довгостроковій перспективі</p>
            <p class="top__text" style="font-weight: bold;">Не витрачайте час даремно - ми подбаємо про репутацію Вашої компанії!</p>
            <a class="contact__btn" href="#contact" style="display: inline-block;">Залишити заявку</a>
        </div>
    </article>
</section>
<section id="about" class="about">
    <article class="container">
        <div class="about__inner">

        <?php
            $query = mysqli_query($sql, "SELECT * FROM about");
            if ($query)
            {
                    
                while ($row = mysqli_fetch_row($query)){
                    echo "<div class='about__item'><img class='about__item-icon' src='./img/$row[1]' alt='$row[2]'><h3 class='about__item-title'>$row[3]</h3><p class='about__item-text'>$row[4]</p></div>";
                }
                mysqli_free_result($query);
            }
        ?>
        </div>
    </article>
</section>
<section class="direction">
    <article class="container">
        <div class="direction__item">
            <div class="direction__item-content">
                <h2 class="direction__item-title">Збільште ефективність роботи співробітників за допомогою перевірених даних</h2>
                <p class="direction__item-text">Об'єктивно оцінити роботу співробітників допомагає таємний клієнт, який фіксує отримані дані, на підставі яких наша компанія формує докладний звіт, в якому відображає результат перевірки і дає докладні рекомендації, як збільшити ефективність роботи компанії.</p>
            </div>
            <img class="direction__item-img" src="./img/company.jpg" alt="Company analytics">
        </div>
        <div class="direction__item">
            <img class="direction__item-img" src="./img/deal.jpg" alt="Company analytics">
            <div class="direction__item-content">
                <h2 class="direction__item-title">"LUX" - ваш надійний партнер в підвищенні якості обслуговування і збільшення доходів</h2>
                <p class="direction__item-text">Ми працюємо з банками, охоронними підприємствами, ресторанами, кафе швидкого обслуговування, магазинами побутової техніки та електроніки, будівельними фірмами, фітнес-центрами, салонами краси і багатьма іншими сферами бізнесу.</p>
            </div>
        </div>
    </article>
</section>
<section id="services" class="services">
    <article class="container">
        <div class="services__inner">
            <h2 class="services__title">Послуги</h2>
            <p class="services__text">Ми надаємо широкий спектр послуг в сфері контролю персоналу, стану торгового місця, аналізу рівня обслуговування. Основні напрямки, з якими ми працюємо: </p>
            <?php
                $query = mysqli_query($sql, "SELECT * FROM services");
                if ($query)
                {
                    
                    while ($row = mysqli_fetch_row($query)){
                        echo "<div class='services__item'><h3 class='services__item-title'>$row[1]</h3><p class='services__item-text'>$row[2]</p></div>";
                    }
                    mysqli_free_result($query);
                }
            ?>
        </div>
    </article>
</section>

<section class="workers">
    <article class="container">
        <h3 class="workers__title">Наші співробітники</h3>
        <div class="workers__slider">

        <?php
            $query = mysqli_query($sql, "SELECT * FROM workers");
            if ($query)
            {   
                while ($row = mysqli_fetch_row($query)){
                    echo "<div class='workers__item'><img class='workers__item-icon' src='./img/$row[1]' alt='$row[2]'><p class='workers__item-title'>$row[3] $row[4] <br/> $row[5]</p><p class='workers__item-text'>$row[6]</p></div>";
                }
                mysqli_free_result($query);
            }
        ?>
        </div>
    </article>
</section>
<section id="contact" class="contact">
    <article class="container">
        <h3 class="contact__content-title">Контакти</h3>
        <p class="contact__content-text">Якщо у вас виникають питання, то виможете звернутись до нас за адресою або залишити заявку на консультацію </p>
          <div class="contact__inner">
            <div class="contact__content">
              <div class="map-responsive">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d858.6712886980183!2d24.02199565998449!3d49.84045535625721!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473add717532cff9%3A0x1ea627f45b408179!2z0JvRjNCy0L7QstGB0LrQuNC5INC90LDRhtC40L7QvdCw0LvRjNC90YvQuSDRg9C90LjQstC10YDRgdC40YLQtdGCINC40LzQtdC90Lgg0JjQstCw0L3QsCDQpNGA0LDQvdC60L4!5e0!3m2!1sru!2sua!4v1621456347521!5m2!1sru!2sua"  allowfullscreen="" loading="lazy"></iframe>
              </div>
            </div>
            <form id ="contact_form" class="contact__form" action=" " method="post">
                <input required class="contact__input" type="text" name = "name" placeholder="Ім'я">
                <input required class="contact__input" type="text" name = "phone" placeholder="Телефон">
                <select required class="contact__input" name = "service">
                    <option> Оберіть послугу </option>
                <?php
                    $query = mysqli_query($sql, "SELECT * FROM services");
                    if ($query)
                    {   
                        while ($row = mysqli_fetch_row($query)) {
                            echo "<option value='$row[0]'> $row[1]</option>";
                        }
                    }
                ?>
                </select>
                <button class="contact__btn aj__send" type="button" name="Submit">Залишити заявку</button>
                <p class="response"></p>
            </form>
        </div>
    </article>
</section>
<footer class="footer">
    <article class="container">
        <div class="footer__inner">
        <a href="#" class="logo">
            <img class="logo__link" src="./img/logo.svg" alt="logo">
        </a>
        <nav class="menu">
            <ul class="menu__list">
            <li class="menu__item"><a class="menu__list-link" href="#services">Послуги</a></li>
            <li class="menu__item"><a class="menu__list-link" href="#about">Про компанію</a></li>
            <li class="menu__item"><a class="menu__list-link" href="#contact">Контакти</a></li>
            </ul>
        </nav>
        <a class="phone" href="tel:380636111985" >+38 (063) 611 19 85 </a>
        </div>
        <ul class="footer__social">
        <li class="footer__social-item">
            <a class="footer__social-link" href="https://www.facebook.com/profile.php?id=100009043472753" target="_blank">
            <img class="footer__social-img" src="./img/facebook.png" alt="facebooklogo">
            </a>
        </li>
        <li class="footer__social-item">
            <a class="footer__social-link" href="https://instagram.com/_helen_art?utm_medium=copy_link" target="_blank">
            <img class="footer__social-img" src="./img/instagram.png" alt="instagramlogo">
            </a>
        </li>
        <li class="footer__social-item">
            <a class="footer__social-link" href="https://linkedin.com/in/elena-artamonova-8803a820a" target="_blank">
            <img class="footer__social-img" src="./img/linkedin.png" alt="linkedinlogo">
            </a>
        </li>
        </ul>
    </article>
</footer>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/jquery.fancybox.min.js"></script>
<script src="js/main.js"></script>   
</body>
</html>