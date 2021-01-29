<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href='/styles/main.css'>
    <link rel=" stylesheet" type="text/css" href='/bootstrap/css/bootstrap.main.css'>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Monoton&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Indie+Flower&display=swap" rel="stylesheet">
    <title><?= $title; ?></title>
</head>

<body>
    <header class="topnav">
        <div class="topnav-nav">
            <a class="logo-01" href="#">BREADS</a>
            <div class="mobile-toggle">
                <span></span>
                <span></span>
                <span></span>
            </div>
            <nav class="nav-top">
                <ul>
                    <li class="nav-item active">
                        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/pages/about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/pages/contact">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/breads">Breads</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/orang">Daftar</a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark " id="navbar">
        <div class="container">
            <a class="navbar-brand-01" href="#">Breads</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <div class="col-sm-12">
                    <ul class="navbar-nav navbar-header">
                        <li class="nav-item active">
                            <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item-01">
                            <a class="nav-link" href="/pages/about">About</a>
                        </li>
                        <li class="nav-item-02">
                            <a class="nav-link" href="/pages/contact">Contact</a>
                        </li>
                        <li class="nav-item-03">
                            <a class="nav-link" href="/breads">Breads</a>
                        </li>
                        <li class="nav-item-04">
                            <a class="nav-link" href="/orang">Daftar</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <header class="section section-header">
        <div class="section-content-header"></div>
        <div class="row">
            <div class="col-lg-12">
                <div class="container">
                    <div class="row">
                        <div class="section-detail-header">
                            <div class="col-lg-6">

                                <div class="title">
                                    <p class="judul">Cuman disini Roti yang rasanya bikin kangen</p>
                                    <hr style="background-color: white;">
                                    <p class="artikel">Dijamin makyussss!!</p>
                                    <a href="/breads" class="btn btn-header" style="font-size: 20px; font-weight:lighter; 
                                    border-radius:50px; width:150px; background-color:tomato; color:white;">Letss Go</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </header>
    <main>
        <section class="section-gallery">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-8">
                        <div class="title-gallery">
                            <h2 class="text-center">Gallery</h2>
                        </div>
                        <div class="section-header-gallery">
                            <div class="column">
                                <img src="/images/bg-01.jfif" style="width:100%" onclick="openModal();currentSlide(1)" class="hover-shadow cursor">
                            </div>
                            <div class="column">
                                <img src="/images/bg-02.jfif" style="width:100%" onclick="openModal();currentSlide(2)" class="hover-shadow cursor">
                            </div>
                            <div class="column">
                                <img src="/images/bg-03.jfif" style="width:100%" onclick="openModal();currentSlide(3)" class="hover-shadow cursor">
                            </div>
                            <div class="column">
                                <img src="/images/bg-04.jfif" style="width:100%" onclick="openModal();currentSlide(4)" class="hover-shadow cursor">
                            </div>
                        </div>
                    </div>
                </div>

                <div id="myModal" class="modal">
                    <span class="close cursor" onclick="closeModal()">&times;</span>
                    <div class="modal-content">
                        <div class="mySlides">
                            <div class="numbertext">1 / 4</div>
                            <img src="/images/bg-01.jfif" style="width:100%">
                        </div>
                        <div class="mySlides">
                            <div class="numbertext">2 / 4</div>
                            <img src="/images/bg-02.jfif" style="width:100%">
                        </div>

                        <div class="mySlides">
                            <div class="numbertext">3 / 4</div>
                            <img src="/images/bg-03.jfif" style="width:100%">
                        </div>

                        <div class="mySlides">
                            <div class="numbertext">4 / 4</div>
                            <img src="/images/bg-04.jfif" style="width:100%">
                        </div>

                        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                        <a class="next" onclick="plusSlides(1)">&#10095;</a>

                        <div class="caption-container">
                            <p id="caption"></p>
                        </div>

                        <div class="col-lg-12">
                            <div class="column">
                                <img class="demo cursor" src="/images/bg-01.jfif" style="width:100%" onclick="currentSlide(1)" alt="">
                            </div>
                            <div class="column">
                                <img class="demo cursor" src="/images/bg-02.jfif" style="width:100%" onclick="currentSlide(2)" alt="">
                            </div>
                            <div class="column">
                                <img class="demo cursor" src="/images/bg-03.jfif" style="width:100%" onclick="currentSlide(3)" alt="">
                            </div>
                            <div class="column">
                                <img class="demo cursor" src="/images/bg-04.jfif" style="width:100%" onclick="currentSlide(4)" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section-content-image">
            <div class="container">
                <div class="row">
                    <div class="artikel-01">
                        <div class="col-lg-12 col-md-8">
                            <img class="" src="/images/bg-02.jfif" width="55%" alt="">
                            <div dir="ltr" class=" float-right col-lg-4">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                    Rem vero, molestias, similique minus nesciunt harum quas
                                    vitae doloremque necessitatibus sit velit quos expedita
                                    illum possimus animi odio dicta obcaecati corrupti!</p>

                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                    Rem vero, molestias, similique minus nesciunt harum quas
                                    vitae doloremque necessitatibus sit velit quos expedita
                                    illum possimus animi odio dicta obcaecati corrupti!</p>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                    Rem vero, molestias, similique minus nesciunt harum quas
                                    vitae doloremque necessitatibus sit velit quos expedita
                                    illum possimus animi odio dicta obcaecati corrupti!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section-content-01">
            <div class="container">
                <div class="row">
                    <div class="artikel-01">
                        <div class="col-lg-12 col-md-8">
                            <img class="" src="/images/bg-04.jfif" width="50%" alt="">
                            <div dir="ltr" class=" float-left col-lg-4">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                    Rem vero, molestias, similique minus nesciunt harum quas
                                    vitae doloremque necessitatibus sit velit quos expedita
                                    illum possimus animi odio dicta obcaecati corrupti!</p>

                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                    Rem vero, molestias, similique minus nesciunt harum quas
                                    vitae doloremque necessitatibus sit velit quos expedita
                                    illum possimus animi odio dicta obcaecati corrupti!</p>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                    Rem vero, molestias, similique minus nesciunt harum quas
                                    vitae doloremque necessitatibus sit velit quos expedita
                                    illum possimus animi odio dicta obcaecati corrupti!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col">
                    <p>
                        &copy; Copyright 2021 . Pulang Pergi . All Rights Reserved .
                    </p>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    <script>
        function previewImg() {

            const sampul = document.querySelector('#sampul');
            const sampulLabel = document.querySelector('.custom-file-label');
            const imgPreview = document.querySelector('.img-preview');
            sampulLabel.textContent = sampul.files[0].name;
            const fileSampul = new FileReader();
            fileSampul.readAsDataURL(sampul.files[0]);
            fileSampul.onload = function(e) {
                imgPreview.src = e.target.result;
            }
        }
    </script>
    <script>
        $(window).scroll(function() {

            if ($(window).scrollTop() > 20) {
                $('.topnav').addClass('sticky');
            } else {
                $('.topnav').removeClass('sticky');
            }
        });

        // Mobile Navigation
        $('.mobile-toggle').click(function() {
            if ($('.topnav').hasClass('open-nav')) {
                $('.topnav').removeClass('open-nav');
            } else {
                $('.topnav').addClass('open-nav');
            }
        });

        $('.topnav li a').click(function() {
            if ($('.topnav').hasClass('open-nav')) {
                $('.navigation').removeClass('open-nav');
                $('.topnav').removeClass('open-nav');
            }
        });

        // navigation scroll lijepo radi materem
        $('nav a').click(function(event) {
            var id = $(this).attr("href");
            var offset = 70;
            var target = $(id).offset().top - offset;
            $('html, body').animate({
                scrollTop: target
            }, 500);
            event.preventDefault();
        });
    </script>
    <script>
        function openModal() {
            document.getElementById("myModal").style.display = "block";
        }

        function closeModal() {
            document.getElementById("myModal").style.display = "none";
        }

        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("demo");
            var captionText = document.getElementById("caption");
            if (n > slides.length) {
                slideIndex = 1
            }
            if (n < 1) {
                slideIndex = slides.length
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            captionText.innerHTML = dots[slideIndex - 1].alt;
        }
    </script>
</body>

</html>