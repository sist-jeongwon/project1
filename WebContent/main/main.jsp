<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>SSAMZO</title>

<!-- Favicon 크롬 탭에 뜨는 아이콘 모양. 삭제해도 괜찮음 -->
<link rel="icon" href="#">

<style>
/* Master Stylesheet - 1.0 */
/* :: 1.0 Import Fonts */
@import url("https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700");
/* :: 2.0 Import All CSS */
@import url(../style/css/bootstrap.min.css);
@import url(../style/css/classy-nav.css);
@import url(../style/css/owl.carousel.min.css);
@import url(../style/css/animate.css);
@import url(../style/css/magnific-popup.css);
@import url(../style/css/font-awesome.min.css);
@import url(../style/css/nice-select.css);
/* :: 3.0 Base CSS */
* {
  margin: 0;
  padding: 0; }

body {
  font-family: "Montserrat", sans-serif;
  font-size: 14px; }

h1,
h2,
h3,
h4,
h5,
h6 {
  font-family: "Montserrat", sans-serif;
  color: #272727;
  line-height: 1.3;
  font-weight: 600; }

p {
  font-family: "Montserrat", sans-serif;
  color: #7a7a7a;
  font-size: 14px;
  line-height: 2;
  font-weight: 500; }

a,
a:hover,
a:focus {
  -webkit-transition-duration: 500ms;
  transition-duration: 500ms;
  text-decoration: none;
  outline: 0 solid transparent;
  color: #000000;
  font-weight: 600;
  font-size: 16px;
  font-family: "Montserrat", sans-serif; }

ul,
ol {
  margin: 0; }
  ul li,
  ol li {
    list-style: none; }

img {
  height: auto;
  max-width: 100%; }

/* :: 3.1.0 Spacing */
.mt-15 {
  margin-top: 15px !important; }

.mt-30 {
  margin-top: 30px !important; }

.mt-50 {
  margin-top: 50px !important; }

.mt-70 {
  margin-top: 70px !important; }

.mt-100 {
  margin-top: 100px !important; }

.mb-15 {
  margin-bottom: 15px !important; }

.mb-30 {
  margin-bottom: 30px !important; }

.mb-50 {
  margin-bottom: 50px !important; }

.mb-70 {
  margin-bottom: 70px !important; }

.mb-100 {
  margin-bottom: 100px !important; }

.ml-15 {
  margin-left: 15px !important; }

.ml-30 {
  margin-left: 30px !important; }

.ml-50 {
  margin-left: 50px !important; }

.mr-15 {
  margin-right: 15px !important; }

.mr-30 {
  margin-right: 30px !important; }

.mr-50 {
  margin-right: 50px !important; }

.pb-70 {
  padding-bottom: 70px !important; }

/* :: 3.2.0 Height */
.height-400 {
  height: 400px !important; }

.height-500 {
  height: 500px !important; }

.height-600 {
  height: 600px !important; }

.height-700 {
  height: 700px !important; }

.height-800 {
  height: 800px !important; }

/* :: 3.3.0 Section Padding */
.section-padding-100 {
  padding-top: 100px;
  padding-bottom: 100px; }

.section-padding-100-0 {
  padding-top: 100px;
  padding-bottom: 0; }

.section-padding-0-100 {
  padding-top: 0;
  padding-bottom: 100px; }

.section-padding-100-70 {
  padding-top: 100px;
  padding-bottom: 70px; }

/* :: 3.4.0 Preloader */
.preloader {
  background-color: #b0c364;
  width: 100%;
  height: 100%;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 99999; }

h3 {
  position: relative;
  margin: 0 auto;
  top: 0;
  text-transform: uppercase;
  font-weight: 400;
  width: 100vw;
  text-align: center;
  font-size: 3vh;
  color: #ffffff;
  opacity: 0.75;
  animation: pulse 2.5s linear infinite; }

#cooking {
  position: relative;
  margin: 0 auto;
  top: 0;
  width: 50vh;
  height: 50vh;
  overflow: hidden; }
  #cooking .bubble {
    position: absolute;
    border-radius: 100%;
    box-shadow: 0 0 0.25vh #2b2b2b;
    opacity: 0; }
  #cooking .bubble:nth-child(1) {
    margin-top: 2.5vh;
    left: 58%;
    width: 2.5vh;
    height: 2.5vh;
    background-color: #232323;
    animation: bubble 2s cubic-bezier(0.53, 0.16, 0.39, 0.96) infinite; }
  #cooking .bubble:nth-child(2) {
    margin-top: 3vh;
    left: 52%;
    width: 2vh;
    height: 2vh;
    background-color: #1b1b1b;
    animation: bubble 2s ease-in-out .35s infinite; }
  #cooking .bubble:nth-child(3) {
    margin-top: 1.8vh;
    left: 50%;
    width: 1.5vh;
    height: 1.5vh;
    background-color: #111111;
    animation: bubble 1.5s cubic-bezier(0.53, 0.16, 0.39, 0.96) 0.55s infinite; }
  #cooking .bubble:nth-child(4) {
    margin-top: 2.7vh;
    left: 56%;
    width: 1.2vh;
    height: 1.2vh;
    background-color: #090909;
    animation: bubble 1.8s cubic-bezier(0.53, 0.16, 0.39, 0.96) 0.9s infinite; }
  #cooking .bubble:nth-child(5) {
    margin-top: 2.7vh;
    left: 63%;
    width: 1.1vh;
    height: 1.1vh;
    background-color: #020202;
    animation: bubble 1.6s ease-in-out 1s infinite; }
  #cooking #area {
    position: absolute;
    bottom: 0;
    right: 0;
    width: 50%;
    height: 50%;
    background-color: transparent;
    transform-origin: 15% 60%;
    animation: flip 2.1s ease-in-out infinite; }
    #cooking #area #sides {
      position: absolute;
      width: 100%;
      height: 100%;
      transform-origin: 15% 60%;
      animation: switchSide 2.1s ease-in-out infinite; }
      #cooking #area #sides #handle {
        position: absolute;
        bottom: 18%;
        right: 80%;
        width: 35%;
        height: 20%;
        background-color: transparent;
        border-top: 1vh solid #111111;
        border-left: 1vh solid transparent;
        border-radius: 100%;
        transform: rotate(20deg) rotateX(0deg) scale(1.3, 0.9); }
      #cooking #area #sides #pan {
        position: absolute;
        bottom: 20%;
        right: 30%;
        width: 50%;
        height: 8%;
        background-color: #111111;
        border-radius: 0 0 1.4em 1.4em;
        transform-origin: -15% 0; }
    #cooking #area #pancake {
      position: absolute;
      top: 24%;
      width: 100%;
      height: 100%;
      transform: rotateX(85deg);
      animation: jump 2.1s ease-in-out infinite; }
      #cooking #area #pancake #pastry {
        position: absolute;
        bottom: 26%;
        right: 37%;
        width: 40%;
        height: 45%;
        background-color: #111111;
        box-shadow: 0 0 3px 0 #111111;
        border-radius: 100%;
        transform-origin: -20% 0;
        animation: fly 2.1s ease-in-out infinite; }

@keyframes jump {
  0% {
    top: 24%;
    transform: rotateX(85deg); }
  25% {
    top: 10%;
    transform: rotateX(0deg); }
  50% {
    top: 30%;
    transform: rotateX(85deg); }
  75% {
    transform: rotateX(0deg); }
  100% {
    transform: rotateX(85deg); } }
@keyframes flip {
  0% {
    transform: rotate(0deg); }
  5% {
    transform: rotate(-27deg); }
  30%,
    50% {
    transform: rotate(0deg); }
  55% {
    transform: rotate(27deg); }
  83.3% {
    transform: rotate(0deg); }
  100% {
    transform: rotate(0deg); } }
@keyframes switchSide {
  0% {
    transform: rotateY(0deg); }
  50% {
    transform: rotateY(180deg); }
  100% {
    transform: rotateY(0deg); } }
@keyframes fly {
  0% {
    bottom: 26%;
    transform: rotate(0deg); }
  10% {
    bottom: 40%; }
  50% {
    bottom: 26%;
    transform: rotate(-190deg); }
  80% {
    bottom: 40%; }
  100% {
    bottom: 26%;
    transform: rotate(0deg); } }
@keyframes bubble {
  0% {
    transform: scale(0.15, 0.15);
    top: 80%;
    opacity: 0; }
  50% {
    transform: scale(1.1, 1.1);
    opacity: 1; }
  100% {
    transform: scale(0.33, 0.33);
    top: 60%;
    opacity: 0; } }
@keyframes pulse {
  0% {
    opacity: 0.05; }
  50% {
    opacity: 1; }
  100% {
    opacity: 0.05; } }
/* :: 3.5.0 Miscellaneous */
.tooltip-inner {
  background-color: #b0c364; }

.tooltip .arrow::before {
  border-bottom-color: #b0c364; }

.bg-img {
  background-position: center center;
  background-size: cover;
  background-repeat: no-repeat; }

.bg-white {
  background-color: #ffffff !important; }

.bg-dark {
  background-color: #000000 !important; }

.bg-transparent {
  background-color: transparent !important; }

.bg-gray {
  background-color: #f0f4f8; }

.font-bold {
  font-weight: 700; }

.font-light {
  font-weight: 300; }

.bg-overlay {
  position: relative;
  z-index: 2;
  background-position: center center;
  background-size: cover; }
  .bg-overlay::after {
    background-color: rgba(ff, ff, ff, 0.69);
    position: absolute;
    z-index: -1;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    content: ""; }

.bg-fixed {
  background-attachment: fixed !important; }

/* :: 3.6.0 ScrollUp */
#scrollUp {
  background-color: #000000;
  border-radius: 0;
  bottom: 50px;
  color: #ffffff;
  font-size: 24px;
  height: 40px;
  line-height: 37px;
  right: 50px;
  text-align: center;
  width: 40px;
  border-radius: 50%;
  -webkit-transition-duration: 500ms;
  transition-duration: 500ms;
  box-shadow: 0 1px 5px 2px rgba(0, 0, 0, 0.15); }
  #scrollUp:hover, #scrollUp:focus {
    background-color: #b0c364;
    color: #ffffff; }

/* :: 3.7.0 bueno Button */
.bueno-btn {
  background-color: #b0c364;
  -webkit-transition-duration: 500ms;
  transition-duration: 500ms;
  position: relative;
  z-index: 1;
  display: inline-block;
  min-width: 160px;
  height: 50px;
  color: #ffffff;
  border-radius: 0;
  padding: 0 30px;
  font-size: 14px;
  line-height: 50px;
  font-weight: 500;
  text-transform: capitalize; }
  .bueno-btn:hover, .bueno-btn:focus {
    font-size: 14px;
    font-weight: 500;
    background-color: #000000;
    color: #ffffff; }

/* :: 4.0 Header Area CSS */
.header-area {
  position: relative;
  z-index: 1000;
  width: 100%; }
  .header-area .top-header-area {
    position: relative;
    z-index: 1;
    width: 100%;
    height: 95px; }
    @media only screen and (min-width: 768px) and (max-width: 991px) {
      .header-area .top-header-area {
        height: 80px; } }
    @media only screen and (max-width: 767px) {
      .header-area .top-header-area {
        height: 120px; } }
    @media only screen and (min-width: 576px) and (max-width: 767px) {
      .header-area .top-header-area {
        height: 75px; } }
    .header-area .top-header-area .top-social-info {
      position: relative;
      z-index: 1; }
      .header-area .top-header-area .top-social-info a {
        color: #ffffff;
        font-size: 14px;
        padding: 0 15px; }
        @media only screen and (min-width: 576px) and (max-width: 767px) {
          .header-area .top-header-area .top-social-info a {
            padding: 0 10px; } }
    .header-area .top-header-area .top-search-area {
      position: relative;
      z-index: 1; }
      .header-area .top-header-area .top-search-area form {
        position: relative;
        z-index: 1; }
        .header-area .top-header-area .top-search-area form input {
          width: 100%;
          height: 50px;
          background-color: transparent;
          border: none;
          color: #000000;
          border-bottom: 2px solid #817773;
          font-size: 14px;
          padding: 0 15px; }
        .header-area .top-header-area .top-search-area form button {
          position: absolute;
          top: 0;
          right: 0;
          height: 50px;
          z-index: 10;
          background-color: transparent;
          border: none;
          color: #817773;
          cursor: pointer; }
  .header-area .logo-area {
    position: relative;
    z-index: 1;
    padding: 50px 30px;
    text-align: center; }
    @media only screen and (min-width: 992px) and (max-width: 1199px) {
      .header-area .logo-area {
        padding: 30px; } }
    @media only screen and (min-width: 768px) and (max-width: 991px) {
      .header-area .logo-area {
        padding: 30px; } }
    @media only screen and (max-width: 767px) {
      .header-area .logo-area {
        padding: 30px 15px; } }
    .header-area .logo-area a {
      display: inline-block; }
      @media only screen and (min-width: 768px) and (max-width: 991px) {
        .header-area .logo-area a {
          max-width: 150px; } }
      @media only screen and (max-width: 767px) {
        .header-area .logo-area a {
          max-width: 150px; } }
  .header-area .bueno-main-menu {
    position: relative;
    width: 100%;
    height: 70px; }
    .header-area .bueno-main-menu #toggler {
      position: relative;
      z-index: 1;
      cursor: pointer; }
    .header-area .bueno-main-menu .classy-navbar {
      height: 70px;
      padding: 0; }
      .header-area .bueno-main-menu .classy-navbar .nav-brand {
        max-width: 160px;
        margin-right: 30px; }
      .header-area .bueno-main-menu .classy-navbar .classynav ul li a {
        font-weight: 600;
        text-transform: capitalize;
        font-size: 15px;
        padding: 0 10px;
        color: #404040; }
        .header-area .bueno-main-menu .classy-navbar .classynav ul li a:hover, .header-area .bueno-main-menu .classy-navbar .classynav ul li a:focus {
          color: #b0c364; }
      .header-area .bueno-main-menu .classy-navbar .classynav ul li ul li a {
        color: #404040;
        font-size: 14px;
        padding: 0 20px; }
    .header-area .bueno-main-menu .login-area {
      position: relative;
      z-index: 1;
      margin-left: 100px; }
      @media only screen and (min-width: 768px) and (max-width: 991px) {
        .header-area .bueno-main-menu .login-area {
          margin-left: 10px;
          margin-top: 15px; } }
      @media only screen and (max-width: 767px) {
        .header-area .bueno-main-menu .login-area {
          margin-left: 10px;
          margin-top: 15px; } }
      .header-area .bueno-main-menu .login-area a {
        display: inline-block;
        font-weight: 500;
        color: #7a7a7a;
        font-size: 16px; }
        .header-area .bueno-main-menu .login-area a:hover, .header-area .bueno-main-menu .login-area a:focus {
          color: #b0c364; }
  .header-area .is-sticky .bueno-main-menu {
    z-index: 9999;
    box-shadow: 0 5px 50px 0 rgba(0, 0, 0, 0.2); }

/* :: 5.0 Hero Area CSS */
.single-slide {
  position: relative;
  z-index: 1; }
  .single-slide::after {
    background-color: rgba(0, 0, 0, 0.5);
    position: absolute;
    z-index: 5;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    content: ""; }
  .single-slide .blog-content-bg {
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms;
    background-color: #ffffff;
    position: absolute;
    width: 320px;
    height: 360px;
    z-index: 100;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    visibility: hidden;
    opacity: 0; }
    @media only screen and (min-width: 992px) and (max-width: 1199px) {
      .single-slide .blog-content-bg {
        width: 260px;
        height: 320px; } }
    @media only screen and (min-width: 768px) and (max-width: 991px) {
      .single-slide .blog-content-bg {
        width: 280px;
        height: 320px; } }
    @media only screen and (max-width: 767px) {
      .single-slide .blog-content-bg {
        width: 250px;
        height: 280px; } }
    @media only screen and (min-width: 480px) and (max-width: 767px) {
      .single-slide .blog-content-bg {
        width: 320px;
        height: 360px; } }
    .single-slide .blog-content-bg::after {
      position: absolute;
      z-index: 5;
      top: 25px;
      left: 25px;
      width: calc(100% - 50px);
      height: calc(100% - 50px);
      border: 2px solid #b0c364;
      content: "";
      -webkit-transition-duration: 500ms;
      transition-duration: 500ms; }
    .single-slide .blog-content-bg .blog-content {
      -webkit-transition-duration: 500ms;
      transition-duration: 500ms;
      background-color: #ffffff;
      position: absolute;
      z-index: 100;
      width: calc(100% - 58px);
      text-align: center;
      top: 50%;
      left: 50%;
      -webkit-transform: translate(-50%, -50%);
      transform: translate(-50%, -50%); }
      .single-slide .blog-content-bg .blog-content .post-tag {
        font-size: 12px;
        font-weight: 600;
        color: #b0c364;
        text-transform: uppercase;
        margin-bottom: 5px;
        display: block;
        -webkit-transition-duration: 500ms;
        transition-duration: 500ms; }
      .single-slide .blog-content-bg .blog-content .post-title {
        display: block;
        font-size: 30px;
        margin-bottom: 30px;
        -webkit-transition-duration: 500ms;
        transition-duration: 500ms; }
        @media only screen and (min-width: 992px) and (max-width: 1199px) {
          .single-slide .blog-content-bg .blog-content .post-title {
            font-size: 18px; } }
        @media only screen and (min-width: 768px) and (max-width: 991px) {
          .single-slide .blog-content-bg .blog-content .post-title {
            font-size: 18px; } }
        @media only screen and (max-width: 767px) {
          .single-slide .blog-content-bg .blog-content .post-title {
            font-size: 18px; } }
      .single-slide .blog-content-bg .blog-content .post-meta a {
        -webkit-transition-duration: 500ms;
        transition-duration: 500ms;
        position: relative;
        z-index: 1;
        display: inline-block;
        color: #7a7a7a;
        font-size: 12px;
        font-weight: 600;
        text-transform: uppercase; }
        @media only screen and (min-width: 992px) and (max-width: 1199px) {
          .single-slide .blog-content-bg .blog-content .post-meta a {
            font-size: 10px; } }
        @media only screen and (min-width: 768px) and (max-width: 991px) {
          .single-slide .blog-content-bg .blog-content .post-meta a {
            font-size: 10px; } }
        @media only screen and (max-width: 767px) {
          .single-slide .blog-content-bg .blog-content .post-meta a {
            font-size: 10px; } }
        .single-slide .blog-content-bg .blog-content .post-meta a:first-child {
          margin-right: 20px; }
          .single-slide .blog-content-bg .blog-content .post-meta a:first-child::after {
            position: absolute;
            z-index: 5;
            top: 0;
            right: -14px;
            content: "/"; }
  .single-slide:hover .blog-content-bg, .single-slide:focus .blog-content-bg {
    background-color: #b0c364; }
    .single-slide:hover .blog-content-bg::after, .single-slide:focus .blog-content-bg::after {
      border-color: #ffffff; }
    .single-slide:hover .blog-content-bg .blog-content, .single-slide:focus .blog-content-bg .blog-content {
      background-color: #b0c364; }
      .single-slide:hover .blog-content-bg .blog-content .post-tag,
      .single-slide:hover .blog-content-bg .blog-content .post-title,
      .single-slide:hover .blog-content-bg .blog-content .post-meta a, .single-slide:focus .blog-content-bg .blog-content .post-tag,
      .single-slide:focus .blog-content-bg .blog-content .post-title,
      .single-slide:focus .blog-content-bg .blog-content .post-meta a {
        color: #ffffff; }

.hero-area {
  position: relative;
  z-index: 1;
  padding: 0 30px; }
  @media only screen and (max-width: 767px) {
    .hero-area {
      padding: 0 15px; } }
  .hero-area .owl-item.center .single-slide::after {
    display: none; }
  .hero-area .owl-item.center .single-slide .blog-content-bg {
    visibility: visible;
    opacity: 1; }
  .hero-area .owl-prev,
  .hero-area .owl-next {
    position: absolute;
    width: 85px;
    height: 40px;
    top: 50%;
    margin-top: -20px;
    font-size: 12px;
    font-weight: 600;
    color: #ffffff;
    text-transform: uppercase;
    background-color: #b0c364;
    left: 0;
    text-align: center;
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms;
    line-height: 40px; }
    @media only screen and (max-width: 767px) {
      .hero-area .owl-prev,
      .hero-area .owl-next {
        width: 50px;
        font-size: 10px;
        height: 30px;
        margin-top: -15px;
        line-height: 30px; } }
    .hero-area .owl-prev:hover,
    .hero-area .owl-next:hover {
      background-color: #000000;
      color: #ffffff; }
  .hero-area .owl-next {
    left: auto;
    right: 0; }

/* :: 6.0 Catagory Area CSS */
.single-post-catagory {
  position: relative;
  z-index: 1;
  -webkit-transition-duration: 500ms;
  transition-duration: 500ms; }
  .single-post-catagory .catagory-content-bg {
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms;
    background-color: #ffffff;
    position: absolute;
    width: calc(100% - 60px);
    height: 128px;
    z-index: 100;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%); }
    .single-post-catagory .catagory-content-bg::after {
      position: absolute;
      z-index: 5;
      top: 15px;
      left: 15px;
      width: calc(100% - 30px);
      height: calc(100% - 30px);
      border: 2px solid #b0c364;
      content: "";
      -webkit-transition-duration: 500ms;
      transition-duration: 500ms; }
    .single-post-catagory .catagory-content-bg .catagory-content {
      -webkit-transition-duration: 500ms;
      transition-duration: 500ms;
      background-color: #ffffff;
      position: absolute;
      z-index: 100;
      width: calc(100% - 58px);
      text-align: center;
      top: 50%;
      left: 50%;
      -webkit-transform: translate(-50%, -50%);
      transform: translate(-50%, -50%); }
      .single-post-catagory .catagory-content-bg .catagory-content .post-tag {
        font-size: 12px;
        font-weight: 600;
        color: #b0c364;
        text-transform: uppercase;
        margin-bottom: 5px;
        display: block;
        -webkit-transition-duration: 500ms;
        transition-duration: 500ms; }
      .single-post-catagory .catagory-content-bg .catagory-content .post-title {
        display: block;
        font-size: 24px;
        margin-bottom: 0;
        line-height: 1.1;
        -webkit-transition-duration: 500ms;
        transition-duration: 500ms; }
        @media only screen and (min-width: 992px) and (max-width: 1199px) {
          .single-post-catagory .catagory-content-bg .catagory-content .post-title {
            font-size: 18px; } }
        @media only screen and (min-width: 768px) and (max-width: 991px) {
          .single-post-catagory .catagory-content-bg .catagory-content .post-title {
            font-size: 18px; } }
        @media only screen and (max-width: 767px) {
          .single-post-catagory .catagory-content-bg .catagory-content .post-title {
            font-size: 18px; } }
  .single-post-catagory:hover, .single-post-catagory:focus {
    box-shadow: 0 5px 70px 0 rgba(0, 0, 0, 0.25); }
    .single-post-catagory:hover .catagory-content-bg, .single-post-catagory:focus .catagory-content-bg {
      background-color: #b0c364; }
      .single-post-catagory:hover .catagory-content-bg::after, .single-post-catagory:focus .catagory-content-bg::after {
        border-color: #ffffff; }
      .single-post-catagory:hover .catagory-content-bg .catagory-content, .single-post-catagory:focus .catagory-content-bg .catagory-content {
        background-color: #b0c364; }
        .single-post-catagory:hover .catagory-content-bg .catagory-content .post-tag,
        .single-post-catagory:hover .catagory-content-bg .catagory-content .post-title, .single-post-catagory:focus .catagory-content-bg .catagory-content .post-tag,
        .single-post-catagory:focus .catagory-content-bg .catagory-content .post-title {
          color: #ffffff; }

.big-post-content {
  position: relative;
  z-index: 1; }
  .big-post-content p {
    margin-bottom: 30px; }
    @media only screen and (min-width: 992px) and (max-width: 1199px) {
      .big-post-content p {
        font-size: 13px; } }
    @media only screen and (min-width: 768px) and (max-width: 991px) {
      .big-post-content p {
        font-size: 12px; } }
  .big-post-content .post-tag {
    font-size: 12px;
    font-weight: 600;
    color: #b0c364;
    text-transform: uppercase;
    margin-bottom: 15px;
    display: block;
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms; }
  .big-post-content .post-title {
    display: block;
    font-size: 24px;
    margin-bottom: 15px;
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms; }
    @media only screen and (min-width: 768px) and (max-width: 991px) {
      .big-post-content .post-title {
        font-size: 18px; } }
    @media only screen and (max-width: 767px) {
      .big-post-content .post-title {
        font-size: 18px; } }
    .big-post-content .post-title:hover, .big-post-content .post-title:focus {
      color: #b0c364; }
  .big-post-content .post-meta {
    position: relative;
    z-index: 1;
    margin-bottom: 30px; }
    .big-post-content .post-meta a {
      -webkit-transition-duration: 500ms;
      transition-duration: 500ms;
      position: relative;
      z-index: 1;
      display: inline-block;
      color: #7a7a7a;
      font-size: 12px;
      font-weight: 600;
      text-transform: uppercase; }
      .big-post-content .post-meta a:first-child {
        margin-right: 20px; }
        .big-post-content .post-meta a:first-child::after {
          position: absolute;
          z-index: 5;
          top: 0;
          right: -14px;
          content: "/"; }

/* :: 7.0 Search Area CSS */
.bueno-search-area {
  position: relative;
  z-index: 1; }
  .bueno-search-area .form-group {
    margin-bottom: 0; }
    .bueno-search-area .form-group:focus {
      box-shadow: none; }
    .bueno-search-area .form-group .form-control:focus {
      box-shadow: none; }
  .bueno-search-area .nice-select {
    border-radius: 0;
    border: 1px solid #dadfe5;
    float: none;
    font-size: 14px;
    height: 50px;
    line-height: 50px;
    width: 100%;
    padding: 0 20px; }
    .bueno-search-area .nice-select .current {
      color: #7a7a7a;
      font-size: 12px;
      text-transform: uppercase;
      font-weight: 600; }
    .bueno-search-area .nice-select .list {
      border-radius: 0;
      width: 100%;
      border-top: 2px solid #b0c364;
      margin-top: 0; }
      .bueno-search-area .nice-select .list li {
        color: #7a7a7a;
        font-size: 12px;
        text-transform: uppercase;
        font-weight: 600; }

.pagination .page-item .page-link {
  background-color: #eaeff1;
  width: 33px;
  height: 33px;
  line-height: 33px;
  font-size: 12px;
  color: #7a7a7a;
  text-transform: uppercase;
  text-align: center;
  display: inline-block;
  border-radius: 0;
  padding: 0;
  margin-right: 5px;
  border: none; }
  .pagination .page-item .page-link:hover, .pagination .page-item .page-link:focus {
    background-color: #b0c364;
    color: #ffffff; }
.pagination .page-item.active .page-link {
  background-color: #b0c364;
  color: #ffffff; }

/* :: 8.0 Footer Area CSS */
.footer-area {
  position: relative;
  z-index: 1;
  padding: 50px 0; }
  .footer-area .copywrite-text {
    font-size: 12px;
    margin-bottom: 0;
    color: #666666;
    font-weight: 400; }
    .footer-area .copywrite-text a {
      color: #666666;
      font-size: 12px;
      font-weight: 400; }
      .footer-area .copywrite-text a:hover, .footer-area .copywrite-text a:focus {
        color: #b0c364; }
  .footer-area .footer-nav {
    position: relative;
    z-index: 1;
    display: block; }
    .footer-area .footer-nav ul {
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -ms-grid-row-align: center;
      align-items: center;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      justify-content: center; }
      @media only screen and (max-width: 767px) {
        .footer-area .footer-nav ul {
          -webkit-box-pack: start;
          -ms-flex-pack: start;
          justify-content: flex-start;
          margin-top: 30px; } }
      @media only screen and (min-width: 576px) and (max-width: 767px) {
        .footer-area .footer-nav ul {
          margin-top: 0; } }
    .footer-area .footer-nav li a {
      position: relative;
      z-index: 1;
      color: #666666;
      font-size: 12px;
      margin: 0 10px;
      font-weight: 400;
      padding: 0 5px; }
      @media only screen and (max-width: 767px) {
        .footer-area .footer-nav li a {
          padding: 0 2px;
          margin: 0 3px; } }
      .footer-area .footer-nav li a::after {
        -webkit-transition-duration: 500ms;
        transition-duration: 500ms;
        width: 100%;
        height: 3px;
        background-color: #b0c364;
        bottom: -8px;
        left: 0;
        right: 0;
        z-index: -1;
        position: absolute;
        content: '';
        visibility: hidden;
        opacity: 0; }
      .footer-area .footer-nav li a:hover, .footer-area .footer-nav li a:focus {
        color: #b0c364; }
    .footer-area .footer-nav li.active a::after, .footer-area .footer-nav li:hover a::after {
      visibility: visible;
      opacity: 1; }

/* :: 9.0 Instagram Feed Area */
.instagram-feed-area {
  position: relative;
  z-index: 1; }

.single-instagram {
  position: relative;
  z-index: 1;
  -webkit-box-flex: 0;
  -ms-flex: 0 0 20%;
  flex: 0 0 10%;
  max-width: 100%;
  width: 100%;
  overflow: hidden; }
  @media only screen and (max-width: 767px) {
    .single-instagram {
      -webkit-box-flex: 0;
      -ms-flex: 0 0 33.33333%;
      flex: 0 0 33.33333%;
      max-width: 33.33333%;
      width: 33.33333%; } }
  @media only screen and (min-width: 576px) and (max-width: 767px) {
    .single-instagram {
      -webkit-box-flex: 0;
      -ms-flex: 0 0 20%;
      flex: 0 0 20%;
      max-width: 100%;
      width: 100%; } }
  .single-instagram img {
    width: 100%;
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms; }
  .single-instagram::after {
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    background-color: rgba(0, 0, 0, 0.75);
    z-index: 5;
    position: absolute;
    content: '';
    visibility: hidden;
    opacity: 0; }
    @media only screen and (min-width: 768px) and (max-width: 991px) {
      .single-instagram .img-zoom {
        width: 40px;
        height: 40px;
        line-height: 40px;
        font-size: 18px;
        margin-left: -20px; } }
    @media only screen and (max-width: 767px) {
      .single-instagram .img-zoom {
        width: 40px;
        height: 40px;
        line-height: 40px;
        font-size: 18px;
        margin-left: -20px; } }
  .single-instagram:hover::after {
    visibility: visible;
    opacity: 1; }
  .single-instagram:hover img {
    -webkit-transform: scale(1.1);
    transform: scale(1.1); }
  .single-instagram:hover .img-zoom {
    visibility: visible;
    opacity: 1;
    margin-top: -31px; }
    @media only screen and (min-width: 768px) and (max-width: 991px) {
      .single-instagram:hover .img-zoom {
        margin-top: -20px; } }
    @media only screen and (max-width: 767px) {
      .single-instagram:hover .img-zoom {
        margin-top: -20px; } }

.mfp-image-holder .mfp-close,
.mfp-iframe-holder .mfp-close {
  color: #ffffff;
  right: 0;
  text-align: center;
  padding-right: 0;
  top: 40px;
  width: 36px;
  height: 36px;
  background-color: #b0c364;
  line-height: 36px; }

.mfp-bottom-bar {
  margin-top: 0;
  top: auto;
  bottom: 55px;
  left: 0;
  width: 100%;
  cursor: auto;
  background-color: transparent;
  padding: 0 15px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  -webkit-box-align: center;
  -ms-flex-align: center;
  -ms-grid-row-align: center;
  align-items: center; }
  .mfp-bottom-bar .mfp-title {
    line-height: normal;
    color: #ffffff;
    padding-right: 0;
    background-color: #b0c364;
    padding: 8px 20px;
    border-radius: 30px;
    font-size: 10px;
    font-weight: 700; }
  .mfp-bottom-bar .mfp-counter {
    color: #ffffff;
    position: relative;
    line-height: normal;
    background-color: #b0c364;
    padding: 8px 20px;
    border-radius: 50px;
    font-size: 10px;
    font-weight: 700; }

/* :: 10.0 Blog Area CSS */
.single-blog-post {
  position: relative;
  z-index: 1;
  -webkit-transition-duration: 500ms;
  transition-duration: 500ms; }
  .single-blog-post.style-1 .blog-thumbnail {
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms;
    position: relative;
    z-index: 1;
    -webkit-box-flex: 0;
    -ms-flex: 0 0 40%;
    flex: 0 0 40%;
    max-width: 40%;
    width: 40%; }
    .single-blog-post.style-1 .blog-thumbnail img {
      -webkit-transition-duration: 500ms;
      transition-duration: 500ms;
      width: 100%; }
  .single-blog-post.style-1 .blog-content {
    position: relative;
    z-index: 1;
    -webkit-box-flex: 0;
    -ms-flex: 0 0 60%;
    flex: 0 0 60%;
    max-width: 60%;
    width: 60%;
    padding-left: 30px; }
    @media only screen and (max-width: 767px) {
      .single-blog-post.style-1 .blog-content {
        padding-left: 15px; } }
    .single-blog-post.style-1 .blog-content p {
      margin-bottom: 30px; }
    .single-blog-post.style-1 .blog-content .post-tag {
      font-size: 12px;
      font-weight: 600;
      color: #b0c364;
      text-transform: uppercase;
      margin-bottom: 15px;
      display: block;
      -webkit-transition-duration: 500ms;
      transition-duration: 500ms; }
    .single-blog-post.style-1 .blog-content .post-title {
      display: block;
      font-size: 24px;
      margin-bottom: 15px;
      -webkit-transition-duration: 500ms;
      transition-duration: 500ms; }
      @media only screen and (min-width: 992px) and (max-width: 1199px) {
        .single-blog-post.style-1 .blog-content .post-title {
          font-size: 18px; } }
      @media only screen and (min-width: 768px) and (max-width: 991px) {
        .single-blog-post.style-1 .blog-content .post-title {
          font-size: 18px; } }
      @media only screen and (max-width: 767px) {
        .single-blog-post.style-1 .blog-content .post-title {
          font-size: 18px; } }
      .single-blog-post.style-1 .blog-content .post-title:hover, .single-blog-post.style-1 .blog-content .post-title:focus {
        color: #b0c364; }
    .single-blog-post.style-1 .blog-content .post-meta {
      position: relative;
      z-index: 1;
      margin-bottom: 30px; }
      .single-blog-post.style-1 .blog-content .post-meta a {
        -webkit-transition-duration: 500ms;
        transition-duration: 500ms;
        position: relative;
        z-index: 1;
        display: inline-block;
        color: #7a7a7a;
        font-size: 12px;
        font-weight: 600;
        text-transform: uppercase; }
        .single-blog-post.style-1 .blog-content .post-meta a:first-child {
          margin-right: 20px; }
          .single-blog-post.style-1 .blog-content .post-meta a:first-child::after {
            position: absolute;
            z-index: 5;
            top: 0;
            right: -14px;
            content: "/"; }

.post-details-content {
  position: relative;
  z-index: 1; }
  .post-details-content .blog-thumbnail {
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms;
    position: relative;
    z-index: 1; }
    .post-details-content .blog-thumbnail img {
      width: 100%; }
  .post-details-content .blog-content {
    position: relative;
    z-index: 1; }
    .post-details-content .blog-content .post-tag {
      font-size: 12px;
      font-weight: 600;
      color: #b0c364;
      text-transform: uppercase;
      margin-bottom: 15px;
      display: block;
      -webkit-transition-duration: 500ms;
      transition-duration: 500ms; }
    .post-details-content .blog-content .post-title {
      display: block;
      font-size: 24px;
      margin-bottom: 15px;
      -webkit-transition-duration: 500ms;
      transition-duration: 500ms; }
      @media only screen and (max-width: 767px) {
        .post-details-content .blog-content .post-title {
          font-size: 18px; } }
    .post-details-content .blog-content .post-meta {
      position: relative;
      z-index: 1;
      margin-bottom: 30px; }
      .post-details-content .blog-content .post-meta a {
        -webkit-transition-duration: 500ms;
        transition-duration: 500ms;
        position: relative;
        z-index: 1;
        display: inline-block;
        color: #7a7a7a;
        font-size: 12px;
        font-weight: 600;
        text-transform: uppercase; }
        .post-details-content .blog-content .post-meta a:first-child {
          margin-right: 20px; }
          .post-details-content .blog-content .post-meta a:first-child::after {
            position: absolute;
            z-index: 5;
            top: 0;
            right: -14px;
            content: "/"; }

.sidebar-area {
  position: relative;
  z-index: 1; }
  @media only screen and (min-width: 768px) and (max-width: 991px) {
    .sidebar-area {
      margin-top: 70px; } }
  @media only screen and (max-width: 767px) {
    .sidebar-area {
      margin-top: 70px; } }

.single-widget-area {
  position: relative;
  z-index: 1; }
  .single-widget-area.add-widget img {
    width: 100%; }
  .single-widget-area.post-widget .single-post-area {
    position: relative;
    z-index: 1;
    margin-bottom: 20px; }
    .single-widget-area.post-widget .single-post-area:last-child {
      margin-bottom: 0; }
    .single-widget-area.post-widget .single-post-area .blog-thumbnail {
      -webkit-transition-duration: 500ms;
      transition-duration: 500ms;
      position: relative;
      z-index: 1;
      -webkit-box-flex: 0;
      -ms-flex: 0 0 30%;
      flex: 0 0 30%;
      max-width: 30%;
      width: 30%; }
      .single-widget-area.post-widget .single-post-area .blog-thumbnail img {
        -webkit-transition-duration: 500ms;
        transition-duration: 500ms;
        width: 100%; }
    .single-widget-area.post-widget .single-post-area .blog-content {
      position: relative;
      z-index: 1;
      -webkit-box-flex: 0;
      -ms-flex: 0 0 70%;
      flex: 0 0 70%;
      max-width: 70%;
      width: 70%;
      padding-left: 20px; }
      .single-widget-area.post-widget .single-post-area .blog-content .post-title {
        display: block;
        font-size: 14px;
        margin-bottom: 5px;
        -webkit-transition-duration: 500ms;
        transition-duration: 500ms; }
        .single-widget-area.post-widget .single-post-area .blog-content .post-title:hover, .single-widget-area.post-widget .single-post-area .blog-content .post-title:focus {
          color: #b0c364; }
      .single-widget-area.post-widget .single-post-area .blog-content .post-meta {
        position: relative;
        z-index: 1;
        margin-bottom: 0; }
        .single-widget-area.post-widget .single-post-area .blog-content .post-meta a {
          -webkit-transition-duration: 500ms;
          transition-duration: 500ms;
          position: relative;
          z-index: 1;
          display: inline-block;
          color: #7a7a7a;
          font-size: 9px;
          font-weight: 600;
          text-transform: uppercase; }
          .single-widget-area.post-widget .single-post-area .blog-content .post-meta a:first-child {
            margin-right: 20px; }
            .single-widget-area.post-widget .single-post-area .blog-content .post-meta a:first-child::after {
              position: absolute;
              z-index: 5;
              top: 0;
              right: -14px;
              content: "/"; }
  .single-widget-area.author-widget .background-pattern {
    position: relative;
    z-index: 1;
    padding: 50px 30px 0;
    text-align: center; }
    .single-widget-area.author-widget .background-pattern .author-thumbnail {
      width: 180px;
      height: 180px;
      border-radius: 50%;
      margin: 0 auto 30px; }
      .single-widget-area.author-widget .background-pattern .author-thumbnail img {
        border-radius: 50%; }
    .single-widget-area.author-widget .background-pattern p {
      font-size: 14px;
      margin-bottom: 0;
      padding-bottom: 25px; }
      .single-widget-area.author-widget .background-pattern p span {
        color: #272727; }
  .single-widget-area.author-widget .social-info {
    position: relative;
    z-index: 1;
    width: 100%;
    height: 50px;
    background-color: #b0c364;
    text-align: center; }
    .single-widget-area.author-widget .social-info a {
      display: inline-block;
      padding: 0 15px;
      color: #ffffff;
      line-height: 50px;
      font-size: 14px; }
  .single-widget-area.newsletter-widget {
    background-color: #eaeff1;
    padding: 30px;
    position: relative;
    z-index: 1; }
    .single-widget-area.newsletter-widget h6 {
      font-size: 14px;
      margin-bottom: 30px;
      text-align: center; }
    .single-widget-area.newsletter-widget form input {
      width: 100%;
      height: 50px;
      background-color: #ffffff;
      border: 1px solid #dadfe5;
      border-bottom: 2px solid #b0c364;
      font-size: 12px;
      font-weight: 600;
      margin-bottom: 20px;
      text-transform: uppercase;
      padding: 0 20px; }
    .single-widget-area.newsletter-widget p {
      font-style: italic;
      margin-top: 15px;
      font-size: 11px;
      margin-bottom: 0; }

.comment_area {
  border-bottom: 1px solid #eaeaea;
  padding-bottom: 50px; }
  .comment_area .comment-content .comment-author {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 51px;
    flex: 0 0 51px;
    min-width: 51px;
    margin-right: 20px;
    height: 51px;
    border-radius: 50%; }
    @media only screen and (max-width: 767px) {
      .comment_area .comment-content .comment-author {
        margin-right: 15px; } }
  .comment_area .comment-content .comment-meta {
    margin-bottom: 30px; }
    .comment_area .comment-content .comment-meta .post-author,
    .comment_area .comment-content .comment-meta .post-date,
    .comment_area .comment-content .comment-meta .reply {
      position: relative;
      z-index: 1;
      margin-bottom: 5px;
      display: inline-block;
      font-size: 14px;
      color: #272727;
      margin-right: 30px; }
      @media only screen and (max-width: 767px) {
        .comment_area .comment-content .comment-meta .post-author,
        .comment_area .comment-content .comment-meta .post-date,
        .comment_area .comment-content .comment-meta .reply {
          font-size: 12px;
          margin-right: 15px; } }
      .comment_area .comment-content .comment-meta .post-author::after,
      .comment_area .comment-content .comment-meta .post-date::after,
      .comment_area .comment-content .comment-meta .reply::after {
        position: absolute;
        top: 0;
        right: -16px;
        content: '|';
        z-index: 1; }
        @media only screen and (max-width: 767px) {
          .comment_area .comment-content .comment-meta .post-author::after,
          .comment_area .comment-content .comment-meta .post-date::after,
          .comment_area .comment-content .comment-meta .reply::after {
            right: -8px; } }
      .comment_area .comment-content .comment-meta .post-author:hover,
      .comment_area .comment-content .comment-meta .post-date:hover,
      .comment_area .comment-content .comment-meta .reply:hover {
        color: #b0c364; }
    .comment_area .comment-content .comment-meta .reply {
      margin-right: 0; }
      .comment_area .comment-content .comment-meta .reply::after {
        display: none; }
    .comment_area .comment-content .comment-meta p {
      margin-bottom: 15px;
      font-size: 14px;
      line-height: 2;
      font-weight: 500; }
  .comment_area .single_comment_area {
    margin-bottom: 30px; }
    .comment_area .single_comment_area:last-of-type {
      margin-bottom: 0; }
  .comment_area .children .single_comment_area {
    margin-left: 50px;
    margin-top: 30px; }

/* :: 11.0 Ingredients Area CSS */
.recipe-info {
  position: relative;
  z-index: 1;
  background-color: #b0c364;
  padding: 50px 20px;
  margin-bottom: 30px; }
  .recipe-info h5 {
    color: #ffffff;
    margin-bottom: 50px;
    font-size: 18px;
    padding-left: 30px; }
  .recipe-info .info-data {
    position: relative;
    z-index: 1; }
    .recipe-info .info-data li {
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -ms-grid-row-align: center;
      align-items: center;
      padding: 10px 30px;
      border-bottom: 2px solid #a3b65a;
      font-size: 16px;
      font-weight: 600; }
      .recipe-info .info-data li:last-child {
        border-bottom: none; }
      .recipe-info .info-data li span {
        color: #ffffff;
        padding-left: 15px; }

.ingredients {
  position: relative;
  z-index: 1;
  background-color: #ebf4f6;
  padding: 50px 20px; }
  .ingredients h5 {
    color: #272727;
    margin-bottom: 50px;
    font-size: 18px;
    padding-left: 30px; }
  .ingredients .custom-control {
    padding-left: 2.5rem;
    margin-bottom: 20px;
    min-height: 35px;
    position: relative;
    z-index: 1;
    border-bottom: 2px solid #d6e1e4;
    padding-bottom: 20px; }
    .ingredients .custom-control .custom-control-label {
      position: relative;
      z-index: 1;
      margin-bottom: 0;
      padding-top: 3px;
      font-size: 14px;
      font-weight: 500;
      color: #8b8b8b;
      padding-left: 10px; }
      .ingredients .custom-control .custom-control-label::before {
        width: 22px;
        height: 22px;
        border: 1px solid;
        border-color: #d6e1e4;
        background-color: #ffffff;
        border-radius: 0; }
      .ingredients .custom-control .custom-control-label::after {
        top: 5px;
        left: -23px;
        width: 20px;
        height: 20px; }
  .ingredients .custom-checkbox .custom-control-input:checked ~ .custom-control-label::before {
    background-color: #b0c364; }

/* :: 12.0 Treading Post Area */
.treading-post-area {
  position: fixed;
  z-index: 9999;
  width: 480px;
  height: 100%;
  background-color: #dadfe5;
  right: -700px;
  top: 0;
  box-shadow: 0 0 50px 0 rgba(0, 0, 0, 0.2);
  padding: 50px;
  overflow-x: hidden;
  overflow-y: scroll;
  -webkit-transition-duration: 800ms;
  transition-duration: 800ms; }
  @media only screen and (max-width: 767px) {
    .treading-post-area {
      width: 320px;
      padding: 30px; } }
  .treading-post-area .close-icon {
    position: absolute;
    top: 30px;
    right: 30px;
    z-index: 100;
    font-size: 20px;
    cursor: pointer; }
    .treading-post-area .close-icon:hover, .treading-post-area .close-icon:focus {
      color: #b0c364; }
  .treading-post-area h4 {
    margin-bottom: 50px; }
    @media only screen and (max-width: 767px) {
      .treading-post-area h4 {
        font-size: 16px; } }
  @media only screen and (max-width: 767px) {
    .treading-post-area .single-blog-post.style-1 .blog-content {
      padding-left: 15px; } }
  .treading-post-area .single-blog-post.style-1 .blog-content .post-title {
    font-size: 16px; }
    @media only screen and (max-width: 767px) {
      .treading-post-area .single-blog-post.style-1 .blog-content .post-title {
        font-size: 14px; } }
  .treading-post-area.on {
    right: 0; }

/* :: 13.0 Contact Area CSS */
.contact-content {
  position: relative;
  z-index: 2; }
  .contact-content .contact-social-info a {
    display: inline-block;
    margin-right: 20px;
    font-size: 14px;
    color: #000000; }
    .contact-content .contact-social-info a:hover, .contact-content .contact-social-info a:focus {
      color: #b0c364; }
  .contact-content .single-contact-info {
    position: relative;
    margin-bottom: 20px; }
    .contact-content .single-contact-info:last-child {
      margin-bottom: 0; }
    .contact-content .single-contact-info p {
      font-size: 15px;
      margin-bottom: 0; }
    .contact-content .single-contact-info .icon {
      -webkit-box-flex: 0;
      -ms-flex: 0 0 25px;
      flex: 0 0 25px;
      max-width: 25px;
      width: 25px; }

.contact-form-area .form-control {
  position: relative;
  z-index: 2;
  height: 54px;
  width: 100%;
  background-color: #ffffff;
  font-size: 12px;
  margin-bottom: 15px;
  border: 1px solid #dadfe5;
  border-bottom: 2px solid #dadfe5;
  border-radius: 0;
  padding: 15px 30px;
  font-weight: 500;
  color: #aeaeae;
  -webkit-transition-duration: 500ms;
  transition-duration: 500ms; }
  .contact-form-area .form-control:focus {
    box-shadow: none;
    border-bottom-color: #b0c364; }
.contact-form-area textarea.form-control {
  height: 190px; }

.map-area {
  position: relative;
  z-index: 2; }
  @media only screen and (min-width: 768px) and (max-width: 991px) {
    .map-area {
      margin-top: 50px; } }
  @media only screen and (max-width: 767px) {
    .map-area {
      margin-top: 50px; } }
  .map-area iframe {
    width: 100%;
    height: 400px;
    border: none;
    margin-bottom: 0; }
    @media only screen and (max-width: 767px) {
      .map-area iframe {
        height: 300px; } }

/* ====== The End ====== */

/*# sourceMappingURL=style.css.map */
</style>
</head>
<body>


	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="../style/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="../style/js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="../style/js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="../style/js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="../style/js/active.js"></script>

	<%-- preloader가 들어가는 위치 --%>
	<jsp:include page="../main/preloader.jsp"></jsp:include>
	
	<%-- header가 들어가는 위치 --%>
	<jsp:include page="../main/header.jsp"></jsp:include>

	<div class="container-fluid">
		<!-- 화면 변경이 되는 부분  -->
		<jsp:include page="${main_jsp }"></jsp:include>
	</div>
	<%-- footer가 들어가는 위치 --%>
	<jsp:include page="../main/footer.jsp"></jsp:include>
	<script>
		$(document).ready(
				function() {
					// Add smooth scrolling to all links in navbar + footer link
					$(".navbar a, footer a[href='#myPage']").on('click',
							function(event) {
								// Make sure this.hash has a value before overriding default behavior
								if (this.hash !== "") {
									// Prevent default anchor click behavior
									event.preventDefault();

									// Store hash
									var hash = this.hash;

									// Using jQuery's animate() method to add smooth page scroll
									// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
									$('html, body').animate({
										scrollTop : $(hash).offset().top
									}, 900, function() {

										// Add hash (#) to URL when done scrolling (default click behavior)
										window.location.hash = hash;
									});
								} // End if
							});

					$(window).scroll(function() {
						$(".slideanim").each(function() {
							var pos = $(this).offset().top;

							var winTop = $(window).scrollTop();
							if (pos < winTop + 600) {
								$(this).addClass("slide");
							}
						});
					});

				})
	</script>
</body>
</html>