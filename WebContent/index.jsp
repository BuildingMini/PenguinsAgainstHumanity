<?xml version="1.0" encoding="UTF-8" ?>
<%--
Copyright (c) 2012-2018, Andy Janata
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted
provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this list of conditions
  and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of
  conditions and the following disclaimer in the documentation and/or other materials provided
  with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY
WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--%>
<%--
Index page. This is currently entirely static HTML, but may eventually require some server-side code
to, for instance, display the number of connected players.

@author Andy Janata (ajanata@socialgamer.net)
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>PelicanCAH</title>
    <jsp:include page="analytics.jsp"/>
    <link rel="stylesheet" type="text/css" href="cah.css" media="screen"/>
</head>
<body>
<h1>
Pelican CAH
</h1>
  <h3>Based on <a href="https://github.com/devgianlu/PretendYoureXyzzy">Pretend you're Xyzzy</a></h3>
<p>
  The offical CAH page of the <a href="https://pelican.gq/">Pelican Villa</a> discord server.</strong>
</p>


<p>
    <input type="button" value="I have read the above; Take me to the game!"
           onclick="window.location='game.jsp';"/>
</p>
<p>
    PelicanCAH is a cards against humanity clone based on Pretend You're Xyzzy which is a Cards Against Humanity clone, which is available at
    <a href="http://www.cardsagainsthumanity.com/">cardsagainsthumanity.com</a>, where you can buy it
    or download and print it out yourself. It is distributed under a
    <a href="http://creativecommons.org/licenses/by-nc-sa/3.0/">Creative Commons - Attribution -
        Noncommercial - Share Alike license</a>. This web version is in no way endorsed or sponsored by
    cardsagainsthumanity.com. You may download the source code to this version from
    <a href="https://github.com/sk1pp3rFTW/PelicanCAH">GitHub</a>. For full license
    information, including information about included libraries, see the
    <a href="license.html">full license information</a>.
</p>
</body>
</html>
