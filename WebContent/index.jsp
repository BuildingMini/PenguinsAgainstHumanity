<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>PelicanCAH</title>
    <link href="https://fonts.googleapis.com/css?family=Slabo+27px|Source+Sans+Pro" rel="stylesheet">
    <style>
    body {
      min-height: 640px;
      background: #ffffff;
      color: #000000;
      font-size: 16px;
      margin: 0;
      font-family: 'Source Sans Pro', sans-serif;
    }
    #title {
      font-family: 'Slabo 27px', serif;
      color: #000000;
      text-align: center;
      font-size: 100px;
      margin-bottom: 0px;
      margin-top: 60px;
      outline: none;
    }
    #subtitle {
      text-align: center;
      font-size: 40px;
      margin-top: 0px;
    }
    #footer {
      text-align: center;
      position: absolute;
      bottom: 20px;
      margin-left: 20px;
      margin-right: 20px;
    }
    a {
      color: #8be9fd;
      text-decoration: none;
    }
    #wrapper {
      text-align: center;
      margin-top: 150px;
    }
    #button {
      color: #ffb86c;
      font-size: 2em;
      text-align: center;
      padding: 5px 5px;
      cursor: pointer;
      border: none;
      outline: none;
      background-color: #ffffff00;
    }
    </style>
    </head>
    <body>
    <p id="title">
      PelicanCAH
    </p>
    <p id="subtitle">A Cards Against Humanity clone.</p>
    <div id="wrapper">
      <input id="button" type="button" value="Lets Play!" onclick="window.location='game.jsp';">
    </div>
    <p id="footer">
      PelicanCAH is a Cards Against Humanity clone, which is available at
      <a href="http://www.cardsagainsthumanity.com/">cardsagainsthumanity.com</a>, where you can buy it
      or download and print it out yourself. It is based off of <a href="https://github.com/ajanata/PretendYoureXyzzy">Pretend You're Xyzzy</a>
      and is distributed under a
      <a href="http://creativecommons.org/licenses/by-nc-sa/3.0/">Creative Commons - Attribution -
      Noncommercial - Share Alike license</a>. You may download the source code to this version from
      <a href="https://github.com/Benji-Collins/CardsAgainstOriginality">GitHub</a>. For full license
      information, including information about included libraries, see the
      <a href="license.html">full license information</a>.
    </p>
    </body>
    </html>
