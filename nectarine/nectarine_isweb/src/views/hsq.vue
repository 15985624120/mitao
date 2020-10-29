<template>
    <div class="demo-husky body">
        <div class="snow"></div>
            <div class="container">
                <header class="header" >
                    <h1 >选择风格颜色</h1>
                    <nav class="demos">
                    <a class="current-demo" href="javascript:;" title="Alex the CSS Husky"><img src="../assets/xz/link-husky.png" alt="Alex the Husky" class="border-hsq"/></a>
                    <a href="hli" title="Felix the CSS/SVG Fox"><img src="../assets/xz/link-fox.png" alt="Felix the Fox" class="border-hl"/></a>			
                    </nav>
                    <p class="info">当前为棕色系风格<br/>旁边有粉色少女风格哦！ <br/>(确认风格请点击动物哦！亲)</p>
                </header>
                <div class="content content--husky">
                    <div class="mountain"></div>
                <div class="mountain"></div>
                <div class="husky">
                    <div class="husky-mane">
                        <div class="husky-coat"></div>
                    </div>
                    <div class="husky-body">
                        <div class="husky-head">
                            <div class="husky-ear"></div>
                            <div class="husky-ear"></div>
                            <div class="husky-face">
                                <div class="husky-eye"></div>
                                <div class="husky-eye"></div>
                                <div class="husky-nose"></div>
                                <div class="husky-mouth">
                                    <div class="husky-lips"></div>
                                    <div class="husky-tongue"></div>
                                </div>
                            </div>
                        </div>
                        <div class="husky-torso"></div>
                    </div>
                    <div class="husky-legs">
                        <div class="husky-front-legs">
                            <div class="husky-leg"></div>
                            <div class="husky-leg"></div>
                        </div>
                        <div class="husky-hind-leg">					</div>
                    </div>
                    <div class="husky-tail">
                        <div class="husky-tail">
                            <div class="husky-tail">
                                <div class="husky-tail">
                                    <div class="husky-tail">
                                        <div class="husky-tail">
                                            <div class="husky-tail"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" style="display:none">
                    <defs>
                        <filter id="squiggly-0">
                            <feTurbulence id="turbulence" baseFrequency="0.02" numOctaves="3" result="noise" seed="0" />
                            <feDisplacementMap id="displacement" in="SourceGraphic" in2="noise" scale="2" />
                        </filter>
                        <filter id="squiggly-1">
                            <feTurbulence id="turbulence" baseFrequency="0.02" numOctaves="3" result="noise" seed="1" />
                            <feDisplacementMap in="SourceGraphic" in2="noise" scale="3" />
                        </filter>
                        <filter id="squiggly-2">
                            <feTurbulence id="turbulence" baseFrequency="0.02" numOctaves="3" result="noise" seed="2" />
                            <feDisplacementMap in="SourceGraphic" in2="noise" scale="2" />
                        </filter>
                        <filter id="squiggly-3">
                            <feTurbulence id="turbulence" baseFrequency="0.02" numOctaves="3" result="noise" seed="3" />
                            <feDisplacementMap in="SourceGraphic" in2="noise" scale="3" />
                        </filter>
                        <filter id="squiggly-4">
                            <feTurbulence id="turbulence" baseFrequency="0.02" numOctaves="3" result="noise" seed="4" />
                            <feDisplacementMap in="SourceGraphic" in2="noise" scale="1" />
                        </filter>
                    </defs>
                </svg>
            </div><!-- /content -->
        </div><!-- /container -->
        <button id="btn" @click="add"></button>

    </div>
</template>

<style scoped>
    article,aside,details,figcaption,figure,footer,header,hgroup,main,nav,section,summary{display:block;}audio,canvas,video{display:inline-block;}audio:not([controls]){display:none;height:0;}[hidden]{display:none;}html{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%;}body{margin:0;}a:focus{outline:thin dotted;}a:active,a:hover{outline:0;}h1{font-size:2em;margin:0.67em 0;}abbr[title]{border-bottom:1px dotted;}b,strong{font-weight:bold;}dfn{font-style:italic;}hr{-moz-box-sizing:content-box;box-sizing:content-box;height:0;}mark{background:#ff0;color:#000;}code,kbd,pre,samp{font-family:monospace,serif;font-size:1em;}pre{white-space:pre-wrap;}q{quotes:"\201C" "\201D" "\2018" "\2019";}small{font-size:80%;}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline;}sup{top:-0.5em;}sub{bottom:-0.25em;}img{border:0;}svg:not(:root){overflow:hidden;}figure{margin:0;}fieldset{border:1px solid #c0c0c0;margin:0 2px;padding:0.35em 0.625em 0.75em;}legend{border:0;padding:0;}button,input,select,textarea{font-family:inherit;font-size:100%;margin:0;}button,input{line-height:normal;}button,select{text-transform:none;}button,html input[type="button"],input[type="reset"],input[type="submit"]{-webkit-appearance:button;cursor:pointer;}button[disabled],html input[disabled]{cursor:default;}input[type="checkbox"],input[type="radio"]{box-sizing:border-box;padding:0;}input[type="search"]{-webkit-appearance:textfield;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box;}input[type="search"]::-webkit-search-cancel-button,input[type="search"]::-webkit-search-decoration{-webkit-appearance:none;}button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0;}textarea{overflow:auto;vertical-align:top;}table{border-collapse:collapse;border-spacing:0;}
    *, *::after, *::before { -webkit-box-sizing: border-box; box-sizing: border-box; }
.body {
	font-family: Avenir, 'Helvetica Neue', 'Lato', 'Segoe UI', Helvetica, Arial, sans-serif;
	color: #444;
	background: #c4a68e;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	overflow:hidden;
}
.demo-husky{
  position: relative;
}
.demo-husky #btn{
  position: absolute;
  bottom: 7%;
  left: 35%;
  width: 132px;
  height: 187px;
  border-radius: 102px 0 0 0;
  border:2px solid red;
  outline: none;
  opacity: 0;
}
.border-hsq[data-v-2487987a]{
    border: 5px solid #9b7159;
}
.border-hl[data-v-2487987a]{
    border: 5px solid #ff6699;
}
a {
	outline: none;
	color: #fff;
	text-decoration: none;
}

a:hover, a:focus {
	color: #2C2F36;
	outline: none;
}

.info {
	display: none;
	max-width: 300px;
	font-weight: bold;
    color: #c4a68e;
	background: #9b7159;
	border-radius: 15px;
	padding: 1em;
	margin: 1em auto;
}

.hidden {
	position: absolute;
	overflow: hidden;
	width: 0;
	height: 0;
	pointer-events: none;
}

.container {
	overflow: hidden;
	width: 100vw;
	height: 100vh;
}

.bgcolor-1 { background: #f0efee; }
.bgcolor-2 { background: #f9f9f9; }
.bgcolor-3 { background: #e8e8e8; }/*light grey*/
.bgcolor-4 { background: #2f3238; color: #fff; }/*Dark grey*/
.bgcolor-5 { background: #df6659; color: #521e18; }/*pink1*/
.bgcolor-6 { background: #2fa8ec; }/*sky blue*/
.bgcolor-7 { background: #d0d6d6; }/*White tea*/
.bgcolor-8 { background: #3d4444; color: #fff; }/*Dark grey2*/
.bgcolor-9 { background: #ef3f52; color: #fff;}/*pink2*/
.bgcolor-10{ background: #64448f; color: #fff;}/*Violet*/
.bgcolor-11{ background: #3755ad; color: #fff;}/*dark blue*/
.bgcolor-12{ background: #3498DB; color: #fff;}/*light blue*/
.bgcolor-20{ background: #494A5F;color: #D5D6E2;}
/* Header */
.header{
	padding: 2em 1em 4em;
	text-align: center;
	z-index: 100;
}
.header h1 {
	margin: 0.5em 0 0;
	letter-spacing: -1px;
	font-size: 4em;
	line-height: 1;
	font-family: 'Freckle Face', cursive;
	font-weight: 400;
	color: #fff;
}

/* Top Navigation Style */
.links {
	position: relative;
	display: inline-block;
	text-align: center;
	white-space: nowrap;
}

.links::after {
	position: absolute;
	top: 0;
	left: 50%;
	width: 1px;
	height: 100%;
	background: rgba(0,0,0,0.1);
	content: '';
	-webkit-transform: rotate3d(0,0,1,22.5deg);
	transform: rotate3d(0,0,1,22.5deg);
}

.icon {
	display: inline-block;
	margin: 0.5em;
	padding: 0em 0;
	width: 1.5em;
	text-decoration: none;
}

.icon span {
	display: none;
}

.icon:before {
	margin: 0 5px;
	text-transform: none;
	font-weight: normal;
	font-style: normal;
	font-variant: normal;
	font-family: 'icomoon';
	line-height: 1;
	-webkit-font-smoothing: antialiased;
}

.demos {
	margin: 2em 0 0;
}

.demos a {
	display: inline-block;
	margin: 0 0.5em;
	font-weight: bold;
}

.demos a img {
	display: block;
	border-radius: 50%;
	border: 5px solid #fff;
	opacity: 0.9;
}

.demos a:focus img,
.demos a:hover img {
	opacity: 1;
}

.demos a.current-demo img {
	opacity: 0.5;
}

/* icomoon */
.icon-home-outline:before {
	content: "\e5000";
}

.icon-arrow-forward-outline:before {
	content: "\e5001";
}
.content {
	padding: 3em 0;
}

@media screen and (max-width: 40em) {
	.header h1 {
		font-size: 2.8em;
	}
	.info {
		display: block;
	}
}
@-webkit-keyframes husky-head {
  0% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  6.66667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  20% {
    -webkit-transform: rotate(-14deg);
    transform: rotate(-14deg);
  }
  40% {
    -webkit-transform: rotate(-7deg);
    transform: rotate(-7deg);
  }
  46.66667% {
    -webkit-transform: rotate(-14deg);
    transform: rotate(-14deg);
  }
  60% {
    -webkit-transform: rotate(-7deg);
    transform: rotate(-7deg);
  }
  73.33333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  80% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
}
@keyframes husky-head {
  0% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  6.66667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  20% {
    -webkit-transform: rotate(-14deg);
    transform: rotate(-14deg);
  }
  40% {
    -webkit-transform: rotate(-7deg);
    transform: rotate(-7deg);
  }
  46.66667% {
    -webkit-transform: rotate(-14deg);
    transform: rotate(-14deg);
  }
  60% {
    -webkit-transform: rotate(-7deg);
    transform: rotate(-7deg);
  }
  73.33333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  80% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
}
@-webkit-keyframes husky-mouth {
  0% {
    -webkit-transform: translateX(0);
    transform: translateX(0);
  }
  6.66667% {
    -webkit-transform: translateX(0);
    transform: translateX(0);
  }
  13.33333% {
    -webkit-transform: translateX(35%);
    transform: translateX(35%);
  }
  20% {
    -webkit-transform: translateX(35%);
    transform: translateX(35%);
  }
  26.66667% {
    -webkit-transform: translateX(35%);
    transform: translateX(35%);
  }
  33.33333% {
    -webkit-transform: translateX(0) translateY(-5%);
    transform: translateX(0) translateY(-5%);
  }
}
@keyframes husky-mouth {
  0% {
    -webkit-transform: translateX(0);
    transform: translateX(0);
  }
  6.66667% {
    -webkit-transform: translateX(0);
    transform: translateX(0);
  }
  13.33333% {
    -webkit-transform: translateX(35%);
    transform: translateX(35%);
  }
  20% {
    -webkit-transform: translateX(35%);
    transform: translateX(35%);
  }
  26.66667% {
    -webkit-transform: translateX(35%);
    transform: translateX(35%);
  }
  33.33333% {
    -webkit-transform: translateX(0) translateY(-5%);
    transform: translateX(0) translateY(-5%);
  }
}
@-webkit-keyframes husky-nose {
  0% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  6.66667% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  13.33333% {
    -webkit-transform: translateX(100%);
    transform: translateX(100%);
  }
  26.66667% {
    -webkit-transform: translateX(100%);
    transform: translateX(100%);
  }
  33.33333% {
    -webkit-transform: translateX(0) translateY(-15%);
    transform: translateX(0) translateY(-15%);
  }
}
@keyframes husky-nose {
  0% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  6.66667% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  13.33333% {
    -webkit-transform: translateX(100%);
    transform: translateX(100%);
  }
  26.66667% {
    -webkit-transform: translateX(100%);
    transform: translateX(100%);
  }
  33.33333% {
    -webkit-transform: translateX(0) translateY(-15%);
    transform: translateX(0) translateY(-15%);
  }
}
@-webkit-keyframes husky-body {
  0% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  6.66667% {
    -webkit-transform: translateY(3%);
    transform: translateY(3%);
  }
  13.33333% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  20% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  26.66667% {
    -webkit-transform: translateY(2%);
    transform: translateY(2%);
  }
  33.33333% {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
}
@keyframes husky-body {
  0% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  6.66667% {
    -webkit-transform: translateY(3%);
    transform: translateY(3%);
  }
  13.33333% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  20% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  26.66667% {
    -webkit-transform: translateY(2%);
    transform: translateY(2%);
  }
  33.33333% {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
}
@-webkit-keyframes husky-mane {
  0% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  6.66667% {
    -webkit-transform: translateY(5%);
    transform: translateY(5%);
  }
  13.33333% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  20% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  26.66667% {
    -webkit-transform: translateY(3%);
    transform: translateY(3%);
  }
  33.33333% {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
}
@keyframes husky-mane {
  0% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  6.66667% {
    -webkit-transform: translateY(5%);
    transform: translateY(5%);
  }
  13.33333% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  20% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  26.66667% {
    -webkit-transform: translateY(3%);
    transform: translateY(3%);
  }
  33.33333% {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
}
@-webkit-keyframes husky-face {
  0% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  6.66667% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  13.33333% {
    -webkit-transform: translateX(15%);
    transform: translateX(15%);
  }
  20% {
    -webkit-transform: translateX(15%) translateY(0);
    transform: translateX(15%) translateY(0);
  }
  26.66667% {
    -webkit-transform: translateX(15%) translateY(0);
    transform: translateX(15%) translateY(0);
  }
  33.33333% {
    -webkit-transform: translateX(0) translateY(-15%);
    transform: translateX(0) translateY(-15%);
  }
  40% {
    -webkit-transform: translateX(0) translateY(-15%);
    transform: translateX(0) translateY(-15%);
  }
  46.66667% {
    -webkit-transform: translateX(0) translateY(0);
    transform: translateX(0) translateY(0);
  }
}
@keyframes husky-face {
  0% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  6.66667% {
    -webkit-transform: translate(0);
    transform: translate(0);
  }
  13.33333% {
    -webkit-transform: translateX(15%);
    transform: translateX(15%);
  }
  20% {
    -webkit-transform: translateX(15%) translateY(0);
    transform: translateX(15%) translateY(0);
  }
  26.66667% {
    -webkit-transform: translateX(15%) translateY(0);
    transform: translateX(15%) translateY(0);
  }
  33.33333% {
    -webkit-transform: translateX(0) translateY(-15%);
    transform: translateX(0) translateY(-15%);
  }
  40% {
    -webkit-transform: translateX(0) translateY(-15%);
    transform: translateX(0) translateY(-15%);
  }
  46.66667% {
    -webkit-transform: translateX(0) translateY(0);
    transform: translateX(0) translateY(0);
  }
}
@-webkit-keyframes husky-left-eye {
  2.66667% {
    -webkit-transform: scaleY(1);
    transform: scaleY(1);
  }
  3.33333% {
    -webkit-transform: scaleY(0.3);
    transform: scaleY(0.3);
  }
  4% {
    -webkit-transform: scaleY(1);
    transform: scaleY(1);
  }
  6.66667% {
    -webkit-transform: translateX(0);
    transform: translateX(0);
  }
  9.33333% {
    -webkit-transform: scaleY(1) translateX(75%);
    transform: scaleY(1) translateX(75%);
  }
  10% {
    -webkit-transform: scaleY(0.3) translateX(75%);
    transform: scaleY(0.3) translateX(75%);
  }
  10.66667% {
    -webkit-transform: scaleY(1) translateX(75%);
    transform: scaleY(1) translateX(75%);
  }
  13.33333% {
    -webkit-transform: translateX(150%);
    transform: translateX(150%);
  }
  22% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  22.66667% {
    -webkit-transform: scaleY(0.3) translateX(150%);
    transform: scaleY(0.3) translateX(150%);
  }
  23.33333% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  25.33333% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  26% {
    -webkit-transform: scaleY(0.3) translateX(150%);
    transform: scaleY(0.3) translateX(150%);
  }
  26.66667% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  33.33333% {
    -webkit-transform: translateX(0) translateY(-170%);
    transform: translateX(0) translateY(-170%);
  }
  36.0% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  36.66667% {
    -webkit-transform: scaleY(0.3) translateY(-170%);
    transform: scaleY(0.3) translateY(-170%);
  }
  37.33333% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  38% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  38.66667% {
    -webkit-transform: scaleY(0.3) translateY(-170%);
    transform: scaleY(0.3) translateY(-170%);
  }
  39.33333% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  53.33333% {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
  65.33333% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
  66% {
    -webkit-transform: scaleY(0.3) translateY(0);
    transform: scaleY(0.3) translateY(0);
  }
  66.66667% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
  70% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
  70.66667% {
    -webkit-transform: scaleY(0.3) translateY(0);
    transform: scaleY(0.3) translateY(0);
  }
  71.33333% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
}
@keyframes husky-left-eye {
  2.66667% {
    -webkit-transform: scaleY(1);
    transform: scaleY(1);
  }
  3.33333% {
    -webkit-transform: scaleY(0.3);
    transform: scaleY(0.3);
  }
  4% {
    -webkit-transform: scaleY(1);
    transform: scaleY(1);
  }
  6.66667% {
    -webkit-transform: translateX(0);
    transform: translateX(0);
  }
  9.33333% {
    -webkit-transform: scaleY(1) translateX(75%);
    transform: scaleY(1) translateX(75%);
  }
  10% {
    -webkit-transform: scaleY(0.3) translateX(75%);
    transform: scaleY(0.3) translateX(75%);
  }
  10.66667% {
    -webkit-transform: scaleY(1) translateX(75%);
    transform: scaleY(1) translateX(75%);
  }
  13.33333% {
    -webkit-transform: translateX(150%);
    transform: translateX(150%);
  }
  22% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  22.66667% {
    -webkit-transform: scaleY(0.3) translateX(150%);
    transform: scaleY(0.3) translateX(150%);
  }
  23.33333% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  25.33333% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  26% {
    -webkit-transform: scaleY(0.3) translateX(150%);
    transform: scaleY(0.3) translateX(150%);
  }
  26.66667% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  33.33333% {
    -webkit-transform: translateX(0) translateY(-170%);
    transform: translateX(0) translateY(-170%);
  }
  36.0% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  36.66667% {
    -webkit-transform: scaleY(0.3) translateY(-170%);
    transform: scaleY(0.3) translateY(-170%);
  }
  37.33333% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  38% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  38.66667% {
    -webkit-transform: scaleY(0.3) translateY(-170%);
    transform: scaleY(0.3) translateY(-170%);
  }
  39.33333% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  53.33333% {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
  65.33333% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
  66% {
    -webkit-transform: scaleY(0.3) translateY(0);
    transform: scaleY(0.3) translateY(0);
  }
  66.66667% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
  70% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
  70.66667% {
    -webkit-transform: scaleY(0.3) translateY(0);
    transform: scaleY(0.3) translateY(0);
  }
  71.33333% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
}
@-webkit-keyframes husky-right-eye {
  2.66667% {
    -webkit-transform: scaleY(1);
    transform: scaleY(1);
  }
  3.33333% {
    -webkit-transform: scaleY(0.3);
    transform: scaleY(0.3);
  }
  4% {
    -webkit-transform: scaleY(1);
    transform: scaleY(1);
  }
  6.66667% {
    -webkit-transform: translateX(0);
    transform: translateX(0);
  }
  9.33333% {
    -webkit-transform: scaleY(1) translateX(75%);
    transform: scaleY(1) translateX(75%);
  }
  10% {
    -webkit-transform: scaleY(0.3) translateX(75%);
    transform: scaleY(0.3) translateX(75%);
  }
  10.66667% {
    -webkit-transform: scaleY(1) translateX(75%);
    transform: scaleY(1) translateX(75%);
  }
  13.33333% {
    -webkit-transform: translateX(150%);
    transform: translateX(150%);
  }
  22% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  22.66667% {
    -webkit-transform: scaleY(0.3) translateX(150%);
    transform: scaleY(0.3) translateX(150%);
  }
  23.33333% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  25.33333% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  26% {
    -webkit-transform: scaleY(0.3) translateX(150%);
    transform: scaleY(0.3) translateX(150%);
  }
  26.66667% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  33.33333% {
    -webkit-transform: translateX(0) translateY(-170%);
    transform: translateX(0) translateY(-170%);
  }
  36.0% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  36.66667% {
    -webkit-transform: scaleY(0.3) translateY(-170%);
    transform: scaleY(0.3) translateY(-170%);
  }
  37.33333% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  38% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  38.66667% {
    -webkit-transform: scaleY(0.3) translateY(-170%);
    transform: scaleY(0.3) translateY(-170%);
  }
  39.33333% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  53.33333% {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
  65.33333% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
  66% {
    -webkit-transform: scaleY(0.3) translateY(0);
    transform: scaleY(0.3) translateY(0);
  }
  66.66667% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
  70% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
  70.66667% {
    -webkit-transform: scaleY(0.3) translateY(0);
    transform: scaleY(0.3) translateY(0);
  }
  71.33333% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
}
@keyframes husky-right-eye {
  2.66667% {
    -webkit-transform: scaleY(1);
    transform: scaleY(1);
  }
  3.33333% {
    -webkit-transform: scaleY(0.3);
    transform: scaleY(0.3);
  }
  4% {
    -webkit-transform: scaleY(1);
    transform: scaleY(1);
  }
  6.66667% {
    -webkit-transform: translateX(0);
    transform: translateX(0);
  }
  9.33333% {
    -webkit-transform: scaleY(1) translateX(75%);
    transform: scaleY(1) translateX(75%);
  }
  10% {
    -webkit-transform: scaleY(0.3) translateX(75%);
    transform: scaleY(0.3) translateX(75%);
  }
  10.66667% {
    -webkit-transform: scaleY(1) translateX(75%);
    transform: scaleY(1) translateX(75%);
  }
  13.33333% {
    -webkit-transform: translateX(150%);
    transform: translateX(150%);
  }
  22% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  22.66667% {
    -webkit-transform: scaleY(0.3) translateX(150%);
    transform: scaleY(0.3) translateX(150%);
  }
  23.33333% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  25.33333% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  26% {
    -webkit-transform: scaleY(0.3) translateX(150%);
    transform: scaleY(0.3) translateX(150%);
  }
  26.66667% {
    -webkit-transform: scaleY(1) translateX(150%);
    transform: scaleY(1) translateX(150%);
  }
  33.33333% {
    -webkit-transform: translateX(0) translateY(-170%);
    transform: translateX(0) translateY(-170%);
  }
  36.0% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  36.66667% {
    -webkit-transform: scaleY(0.3) translateY(-170%);
    transform: scaleY(0.3) translateY(-170%);
  }
  37.33333% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  38% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  38.66667% {
    -webkit-transform: scaleY(0.3) translateY(-170%);
    transform: scaleY(0.3) translateY(-170%);
  }
  39.33333% {
    -webkit-transform: scaleY(1) translateY(-170%);
    transform: scaleY(1) translateY(-170%);
  }
  53.33333% {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
  65.33333% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
  66% {
    -webkit-transform: scaleY(0.3) translateY(0);
    transform: scaleY(0.3) translateY(0);
  }
  66.66667% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
  70% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
  70.66667% {
    -webkit-transform: scaleY(0.3) translateY(0);
    transform: scaleY(0.3) translateY(0);
  }
  71.33333% {
    -webkit-transform: scaleY(1) translateY(0);
    transform: scaleY(1) translateY(0);
  }
}
@-webkit-keyframes husky-tongue {
  46.66667% {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
  53.33333% {
    -webkit-transform: translateY(100%) rotate(10deg);
    transform: translateY(100%) rotate(10deg);
  }
  73.33333% {
    -webkit-transform: translateY(100%) rotate(10deg);
    transform: translateY(100%) rotate(10deg);
  }
  80% {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
}
@keyframes husky-tongue {
  46.66667% {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
  53.33333% {
    -webkit-transform: translateY(100%) rotate(10deg);
    transform: translateY(100%) rotate(10deg);
  }
  73.33333% {
    -webkit-transform: translateY(100%) rotate(10deg);
    transform: translateY(100%) rotate(10deg);
  }
  80% {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
}
@-webkit-keyframes husky-mouth-cover-left {
  40% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  60% {
    -webkit-transform: rotate(90deg);
    transform: rotate(90deg);
  }
  73.33333% {
    -webkit-transform: rotate(90deg);
    transform: rotate(90deg);
  }
  86.66667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
}
@keyframes husky-mouth-cover-left {
  40% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  60% {
    -webkit-transform: rotate(90deg);
    transform: rotate(90deg);
  }
  73.33333% {
    -webkit-transform: rotate(90deg);
    transform: rotate(90deg);
  }
  86.66667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
}
@-webkit-keyframes husky-mouth-cover-right {
  40% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  60% {
    -webkit-transform: rotate(-90deg);
    transform: rotate(-90deg);
  }
  73.33333% {
    -webkit-transform: rotate(-90deg);
    transform: rotate(-90deg);
  }
  86.66667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
}
@keyframes husky-mouth-cover-right {
  40% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  60% {
    -webkit-transform: rotate(-90deg);
    transform: rotate(-90deg);
  }
  73.33333% {
    -webkit-transform: rotate(-90deg);
    transform: rotate(-90deg);
  }
  86.66667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
}
@-webkit-keyframes husky-tail {
  6.66667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  10% {
    -webkit-transform: rotate(30deg);
    transform: rotate(30deg);
  }
  13.33333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  20% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  26.66667% {
    -webkit-transform: rotate(30deg);
    transform: rotate(30deg);
  }
  46.66667% {
    -webkit-transform: rotate(30deg);
    transform: rotate(30deg);
  }
  48.33333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  50% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  50.83333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  51.66667% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  52.5% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  53.33333% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  54.16667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  55.0% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  55.83333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  56.66667% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  57.5% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  58.33333% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  59.16667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  60% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  60.83333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  61.66667% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  62.5% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  63.33333% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  64.16667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  65% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  65.83333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  66.66667% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  67.5% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  68.33333% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  69.16667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  70% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  70.83333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  71.66667% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  72.5% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
}
@keyframes husky-tail {
  6.66667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  10% {
    -webkit-transform: rotate(30deg);
    transform: rotate(30deg);
  }
  13.33333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  20% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  26.66667% {
    -webkit-transform: rotate(30deg);
    transform: rotate(30deg);
  }
  46.66667% {
    -webkit-transform: rotate(30deg);
    transform: rotate(30deg);
  }
  48.33333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  50% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  50.83333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  51.66667% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  52.5% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  53.33333% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  54.16667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  55.0% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  55.83333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  56.66667% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  57.5% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  58.33333% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  59.16667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  60% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  60.83333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  61.66667% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  62.5% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  63.33333% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  64.16667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  65% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  65.83333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  66.66667% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  67.5% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  68.33333% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  69.16667% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  70% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  70.83333% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
  71.66667% {
    -webkit-transform: rotate(28deg);
    transform: rotate(28deg);
  }
  72.5% {
    -webkit-transform: rotate(0);
    transform: rotate(0);
  }
}
@-webkit-keyframes husky-left-ear {
  0% {
    -webkit-transform: rotate(6deg);
    transform: rotate(6deg);
  }
  6.66667% {
    -webkit-transform: rotate(6deg);
    transform: rotate(6deg);
  }
  13.33333% {
    -webkit-transform: rotate(15deg);
    transform: rotate(15deg);
  }
  26.66667% {
    -webkit-transform: rotate(15deg);
    transform: rotate(15deg);
  }
  33.33333% {
    -webkit-transform: rotate(30deg);
    transform: rotate(30deg);
  }
  40% {
    -webkit-transform: rotate(30deg);
    transform: rotate(30deg);
  }
  46.66667% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  53.33333% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  60% {
    -webkit-transform: rotate(15deg);
    transform: rotate(15deg);
  }
  80% {
    -webkit-transform: rotate(15deg);
    transform: rotate(15deg);
  }
  93.33333% {
    -webkit-transform: rotate(6deg);
    transform: rotate(6deg);
  }
  100% {
    -webkit-transform: rotateZ(6deg);
    transform: rotateZ(6deg);
  }
}
@keyframes husky-left-ear {
  0% {
    -webkit-transform: rotate(6deg);
    transform: rotate(6deg);
  }
  6.66667% {
    -webkit-transform: rotate(6deg);
    transform: rotate(6deg);
  }
  13.33333% {
    -webkit-transform: rotate(15deg);
    transform: rotate(15deg);
  }
  26.66667% {
    -webkit-transform: rotate(15deg);
    transform: rotate(15deg);
  }
  33.33333% {
    -webkit-transform: rotate(30deg);
    transform: rotate(30deg);
  }
  40% {
    -webkit-transform: rotate(30deg);
    transform: rotate(30deg);
  }
  46.66667% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  53.33333% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  60% {
    -webkit-transform: rotate(15deg);
    transform: rotate(15deg);
  }
  80% {
    -webkit-transform: rotate(15deg);
    transform: rotate(15deg);
  }
  93.33333% {
    -webkit-transform: rotate(6deg);
    transform: rotate(6deg);
  }
  100% {
    -webkit-transform: rotateZ(6deg);
    transform: rotateZ(6deg);
  }
}
@-webkit-keyframes husky-right-ear {
  0% {
    -webkit-transform: rotateZ(-16deg) rotateY(180deg);
    transform: rotateZ(-16deg) rotateY(180deg);
  }
  6.66667% {
    -webkit-transform: rotateZ(-16deg) rotateY(180deg);
    transform: rotateZ(-16deg) rotateY(180deg);
  }
  13.33333% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  26.66667% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  33.33333% {
    -webkit-transform: rotateZ(-30deg) rotateY(180deg);
    transform: rotateZ(-30deg) rotateY(180deg);
  }
  36.66667% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  37.33333% {
    -webkit-transform: rotateZ(-30deg) rotateY(180deg);
    transform: rotateZ(-30deg) rotateY(180deg);
  }
  38% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  40% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  40.66667% {
    -webkit-transform: rotateZ(-30deg) rotateY(180deg);
    transform: rotateZ(-30deg) rotateY(180deg);
  }
  41.33333% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  46.66667% {
    -webkit-transform: rotateZ(-9deg) rotateY(180deg);
    transform: rotateZ(-9deg) rotateY(180deg);
  }
  53.33333% {
    -webkit-transform: rotateZ(-9deg) rotateY(180deg);
    transform: rotateZ(-9deg) rotateY(180deg);
  }
  60% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  60.66667% {
    -webkit-transform: rotateZ(-30deg) rotateY(180deg);
    transform: rotateZ(-30deg) rotateY(180deg);
  }
  61.33333% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  62.66667% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  63.33333% {
    -webkit-transform: rotateZ(-30deg) rotateY(180deg);
    transform: rotateZ(-30deg) rotateY(180deg);
  }
  64% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  80% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  93.33333% {
    -webkit-transform: rotateZ(-16deg) rotateY(180deg);
    transform: rotateZ(-16deg) rotateY(180deg);
  }
  100% {
    -webkit-transform: rotateZ(-16deg) rotateY(180deg);
    transform: rotateZ(-16deg) rotateY(180deg);
  }
}
@keyframes husky-right-ear {
  0% {
    -webkit-transform: rotateZ(-16deg) rotateY(180deg);
    transform: rotateZ(-16deg) rotateY(180deg);
  }
  6.66667% {
    -webkit-transform: rotateZ(-16deg) rotateY(180deg);
    transform: rotateZ(-16deg) rotateY(180deg);
  }
  13.33333% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  26.66667% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  33.33333% {
    -webkit-transform: rotateZ(-30deg) rotateY(180deg);
    transform: rotateZ(-30deg) rotateY(180deg);
  }
  36.66667% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  37.33333% {
    -webkit-transform: rotateZ(-30deg) rotateY(180deg);
    transform: rotateZ(-30deg) rotateY(180deg);
  }
  38% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  40% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  40.66667% {
    -webkit-transform: rotateZ(-30deg) rotateY(180deg);
    transform: rotateZ(-30deg) rotateY(180deg);
  }
  41.33333% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  46.66667% {
    -webkit-transform: rotateZ(-9deg) rotateY(180deg);
    transform: rotateZ(-9deg) rotateY(180deg);
  }
  53.33333% {
    -webkit-transform: rotateZ(-9deg) rotateY(180deg);
    transform: rotateZ(-9deg) rotateY(180deg);
  }
  60% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  60.66667% {
    -webkit-transform: rotateZ(-30deg) rotateY(180deg);
    transform: rotateZ(-30deg) rotateY(180deg);
  }
  61.33333% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  62.66667% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  63.33333% {
    -webkit-transform: rotateZ(-30deg) rotateY(180deg);
    transform: rotateZ(-30deg) rotateY(180deg);
  }
  64% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  80% {
    -webkit-transform: rotateZ(-19deg) rotateY(180deg);
    transform: rotateZ(-19deg) rotateY(180deg);
  }
  93.33333% {
    -webkit-transform: rotateZ(-16deg) rotateY(180deg);
    transform: rotateZ(-16deg) rotateY(180deg);
  }
  100% {
    -webkit-transform: rotateZ(-16deg) rotateY(180deg);
    transform: rotateZ(-16deg) rotateY(180deg);
  }
}
body {
  background-color: #4F8EDB;
}

.htmleaf-header h1 {
  -webkit-animation: squigglevision 0.3s infinite;
  animation: squigglevision 0.3s infinite;
  -webkit-animation-timing-function: cubic-bezier(0, 0, 0.8, 0.9);
  animation-timing-function: cubic-bezier(0, 0, 0.8, 0.9);
}

.content--husky {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
  -webkit-justify-content: flex-end;
  -ms-flex-pack: end;
  justify-content: flex-end;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
  height: 100vh;
  position: absolute;
  pointer-events: none;
  top: 0;
  width: 100%;
  margin: 0;
  padding: 3rem 0;
  -webkit-animation: squigglevision 0.3s infinite;
  animation: squigglevision 0.3s infinite;
  background-image: url("data:image/svg+xml;charset=utf8,%3Csvg%20height%3D%2278%22%20width%3D%22500%22%20viewBox%3D%220%200%20500%2078%22%20xmlns%3D%22http%3A%2F%2Fwww%2Ew3%2Eorg%2F2000%2Fsvg%22%3E%3Cpath%20fill%3D%22%23dbe8f7%22%20d%3D%22M375%2C27c%2D37%2C0%2D82%2E5%2D19%2D125%2D19s%2D88%2C19%2D125%2C19S42%2E5%2C8%2C0%2C8v70h250h250V8C457%2E5%2C8%2C412%2C27%2C375%2C27z%22%2F%3E%3C%2Fsvg%3E");
}
.content--husky *, .content--husky *:before, .content--husky *:after {
  -webkit-animation-timing-function: cubic-bezier(0.645, 0.045, 0.355, 1) !important;
  animation-timing-function: cubic-bezier(0.645, 0.045, 0.355, 1) !important;
}
.content--husky *:before, .content--husky *:after {
  content: '';
  display: block;
  position: absolute;
}
.content--husky, .content--husky:before, .content--husky:after {
  background-repeat: no-repeat;
  background-size: 395vmin;
  background-position: -150vmin calc(100% + 11vmin);
}
.content--husky:before, .content--husky:after {
  background-image: url("data:image/svg+xml;charset=utf8,%3Csvg%20height%3D%2278%22%20width%3D%22500%22%20viewBox%3D%220%200%20500%2078%22%20xmlns%3D%22http%3A%2F%2Fwww%2Ew3%2Eorg%2F2000%2Fsvg%22%3E%3Cpath%20fill%3D%22%23dbe8f7%22%20d%3D%22M375%2C27c%2D37%2C0%2D82%2E5%2D19%2D125%2D19s%2D88%2C19%2D125%2C19S42%2E5%2C8%2C0%2C8v70h250h250V8C457%2E5%2C8%2C412%2C27%2C375%2C27z%22%2F%3E%3Cpolygon%20fill%3D%22rgba%280%2C%200%2C%200%2C%200%2E5%29%22%20points%3D%22256%2E3%2C0%20254%2E7%2C6%2E5%20256%2E1%2C6%2E5%20256%2E1%2C8%2E4%20256%2E3%2C8%2E4%20256%2E5%2C8%2E4%20256%2E5%2C6%2E5%20258%2C6%2E5%22%2F%3E%3Cpolygon%20fill%3D%22rgba%280%2C%200%2C%200%2C%200%2E5%29%22%20points%3D%22252%2E8%2C0%20251%2E2%2C6%2E5%20252%2E6%2C6%2E5%20252%2E6%2C8%2E4%20252%2E8%2C8%2E4%20253%2C8%2E4%20253%2C6%2E5%20254%2E4%2C6%2E5%22%2F%3E%3Cpolygon%20fill%3D%22rgba%280%2C%200%2C%200%2C%200%2E5%29%22%20points%3D%2221%2E4%2C1%2E3%2019%2E7%2C7%2E8%2021%2E2%2C7%2E8%2021%2E2%2C9%2E7%2021%2E4%2C9%2E7%2021%2E6%2C9%2E7%2021%2E6%2C7%2E8%2023%2C7%2E8%22%2F%3E%3C%2Fsvg%3E");
}
.content--husky:before {
  background-position: left bottom;
}
.content--husky:after {
  background-position: -100vmin bottom;
}
@media (max-width: 700px) {
  .content--husky:after {
    background-position: -115vmin bottom;
  }
}
.content--husky:before, .content--husky:after {
  content: '';
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0.5;
  z-index: -1;
}

.husky {
  -webkit-animation: husky-squiggly-anim 0.3s infinite;
  animation: husky-squiggly-anim 0.3s infinite;
  height: 48vmin;
  width: 67.2vmin;
}
@media screen and (max-width: 400px) {
  .husky {
    -webkit-animation: husky-none;
    animation: husky-none;
  }
}
.husky:before {
  width: 70%;
  height: 0.4vmin;
  background: #B9C4D3;
  border-radius: 0.4vmin;
  top: 100%;
  left: 5%;
  z-index: 2;
}
.husky:after {
  width: 100vw;
  left: 50%;
  height: 3rem;
  top: calc(100% + 0.4vmin);
  z-index: 3;
  background: #dbe8f7;
  -webkit-transform: translateX(-50%);
  transform: translateX(-50%);
}

.husky-head {
  -webkit-animation: husky-head 12s none infinite;
  animation: husky-head 12s none infinite;
  position: absolute;
  height: 45%;
  width: 58%;
  left: 34%;
  top: 5%;
  -webkit-transform-origin: bottom center;
  transform-origin: bottom center;
}
.husky-head:before {
  background: #383B44;
  border-top-left-radius: 50% 40%;
  border-top-right-radius: 50% 40%;
  border-bottom-right-radius: 10% 60%;
  height: 100%;
  width: 100%;
}

.husky-face {
  -webkit-animation: husky-face 12s none infinite;
  animation: husky-face 12s none infinite;
  position: absolute;
  width: 98%;
  height: 62%;
  top: 15%;
  left: 2%;
}
.husky-face:before {
  z-index: 1;
  width: 94%;
  height: 70%;
  left: 3%;
  background-color: white;
  bottom: 5%;
  border-top-left-radius: 40% 50%;
  border-top-right-radius: 40% 50%;
  border-bottom-left-radius: 30% 50%;
  border-bottom-right-radius: 30% 40%;
}

.husky-eye {
  -webkit-animation: husky-eyes 12s none infinite;
  animation: husky-eyes 12s none infinite;
  position: absolute;
  width: 30%;
  height: 40%;
  background-color: white;
  right: 45%;
  border-top-left-radius: 55% 50%;
  border-top-right-radius: 45% 50%;
  z-index: 2;
}
.husky-eye:before {
  -webkit-animation: husky-left-eye 12s none infinite;
  animation: husky-left-eye 12s none infinite;
  height: 15%;
  width: 15%;
  border-radius: 100%;
  background: #5D8BC3;
  top: 45%;
  left: 45%;
  -webkit-transform-origin: center center;
  transform-origin: center center;
}
.husky-eye + .husky-eye {
  z-index: 1;
  right: initial;
  left: 48%;
  border-top-right-radius: 55% 50%;
  border-top-left-radius: 45% 50%;
}

.husky-nose {
  -webkit-animation: husky-nose 12s none infinite;
  animation: husky-nose 12s none infinite;
  z-index: 2;
  position: absolute;
  width: 20%;
  height: 20%;
  top: 29%;
  left: 42%;
}
.husky-nose:after {
  background: #383B44;
  height: 100%;
  width: 100%;
  border-top-left-radius: 20% 20%;
  border-top-right-radius: 30% 20%;
  border-bottom-right-radius: 55% 80%;
  border-bottom-left-radius: 50% 80%;
}
.husky-nose:before {
  height: 100%;
  width: 200%;
  background: white;
  top: 50%;
  left: -50%;
  z-index: -1;
  border-radius: 50%;
}

.husky-ear {
  -webkit-animation: husky-left-ear 12s both infinite;
  animation: husky-left-ear 12s both infinite;
  position: absolute;
  top: 3%;
  left: -10%;
  width: 48%;
  height: 30%;
  border-bottom-left-radius: 100% 90%;
  border-top-left-radius: 10%;
  -webkit-transform-origin: 80% center;
  transform-origin: 80% center;
  overflow: hidden;
  background: #383B44;
}
.husky-ear:before {
  width: 70%;
  height: 55%;
  border: 2px solid #383B44;
  background: #DE6465;
  top: 20%;
  left: 15%;
  -webkit-transform-origin: top left;
  transform-origin: top left;
  -webkit-transform: skewX(30deg) rotate(-5deg);
  transform: skewX(30deg) rotate(-5deg);
}
.husky-ear:after {
  width: 70%;
  height: 100%;
  border-top-left-radius: 100%;
  background: #383B44;
  left: 32%;
  -webkit-transform-origin: top left;
  transform-origin: top left;
  -webkit-transform: rotate(-5deg);
  transform: rotate(-5deg);
}
.husky-ear + .husky-ear {
  -webkit-animation: husky-right-ear 12s both infinite;
  animation: husky-right-ear 12s both infinite;
  background-color: #2c2f36;
  left: 15%;
  top: 5%;
  z-index: -1;
  -webkit-transform-origin: right center;
  transform-origin: right center;
}
.husky-ear + .husky-ear:before {
  border-color: #2c2f36;
}
.husky-ear + .husky-ear:after {
  background: #2c2f36;
}

.husky-mouth {
  z-index: 1;
  -webkit-animation: husky-mouth 12s none infinite;
  animation: husky-mouth 12s none infinite;
  position: absolute;
  width: 48%;
  height: 55%;
  bottom: -5%;
  left: 28%;
  overflow: hidden;
}
.husky-mouth:before, .husky-mouth:after {
  -webkit-animation: husky-mouth-cover-left 12s none infinite;
  animation: husky-mouth-cover-left 12s none infinite;
  width: 28%;
  height: 100%;
  background: white;
  top: -50%;
  left: 0;
  z-index: 3;
  -webkit-transform-origin: right top;
  transform-origin: right top;
}
.husky-mouth:after {
  -webkit-animation: husky-mouth-cover-right 12s none infinite;
  animation: husky-mouth-cover-right 12s none infinite;
  left: initial;
  right: 0;
  -webkit-transform-origin: left top;
  transform-origin: left top;
}

.husky-lips {
  z-index: 2;
  height: 35%;
  width: 100%;
}
.husky-lips:before, .husky-lips:after {
  background: white;
  width: calc(50% + 1.5px);
  border-color: #A3ADBB;
  border-width: 0.3vmin;
  border-style: solid;
  height: 100%;
  border-bottom-left-radius: 65% 100%;
  border-bottom-right-radius: 35% 50%;
  border-top-right-radius: 50%;
  border-right-color: transparent;
  border-top-color: transparent;
}
.husky-lips:after {
  -webkit-transform: rotateY(180deg);
  transform: rotateY(180deg);
  left: initial;
  right: 0;
}

@supports (-moz-appearance: none) and (display: contents) {
  .husky-lips:before, .husky-lips:after {
    width: calc(50% + 4px);
  }
}
.husky-tongue {
  -webkit-animation: husky-tongue 12s none infinite;
  animation: husky-tongue 12s none infinite;
  position: absolute;
  height: 100%;
  width: 44%;
  background: #DE6465;
  left: 25%;
  bottom: 100%;
  z-index: 1;
  border-bottom-left-radius: 50% 20%;
  border-bottom-right-radius: 50% 20%;
}

.husky-body {
  -webkit-animation: husky-body 12s none infinite;
  animation: husky-body 12s none infinite;
  width: 45%;
  height: 100%;
  position: absolute;
  left: 25%;
}

.husky-torso {
  position: absolute;
  height: 55%;
  width: 100%;
  bottom: 0;
}
.husky-torso:before {
  background: #383B44;
  height: 100%;
  width: 50%;
  -webkit-transform: translateX(-20%) skewX(-30deg);
  transform: translateX(-20%) skewX(-30deg);
  -webkit-transform-origin: left bottom;
  transform-origin: left bottom;
  border-radius: 0 30% 0 60%;
}
.husky-torso:after {
  background: #383B44;
  height: 100%;
  width: 60%;
  top: 0;
  right: 0;
  border-radius: 10% 40% 60% 0;
}

.husky-mane {
  -webkit-animation: husky-mane 12s none infinite;
  animation: husky-mane 12s none infinite;
  z-index: 2;
  position: absolute;
  width: 31.5%;
  height: 30%;
  top: 44%;
  left: 37%;
}
.husky-mane:before {
  background: white;
  height: 40%;
  width: 100%;
  border-top-left-radius: 10% 50%;
  border-top-right-radius: 20% 100%;
  border-bottom-left-radius: 10% 50%;
}
.husky-mane:after {
  background: white;
  top: 25%;
  height: 76%;
  width: 30%;
  right: 23%;
  border-top-right-radius: 100% 80%;
  -webkit-transform: rotate(47deg);
  transform: rotate(47deg);
  -webkit-transform-origin: bottom right;
  transform-origin: bottom right;
}

.husky-coat {
  position: absolute;
  width: 50%;
  height: 50%;
  background: white;
  -webkit-transform-origin: bottom right;
  transform-origin: bottom right;
  left: 10%;
  top: 21%;
  -webkit-transform: rotate(25deg) skewX(-30deg);
  transform: rotate(25deg) skewX(-30deg);
}

.husky-legs {
  background-color: #383B44;
  position: absolute;
  height: 30%;
  width: 42%;
  left: 23%;
  bottom: 0;
  border-top-left-radius: 20% 37%;
  border-bottom-left-radius: 10% 37%;
  border-top-right-radius: 50%;
  z-index: 1;
}

.husky-front-legs {
  position: absolute;
  width: 55%;
  height: 120%;
  bottom: 0;
  right: -12%;
}
.husky-front-legs:before {
  width: 4%;
  height: 6%;
  background: transparent;
  bottom: 0;
  left: 47%;
  box-shadow: -1.3vmin 0 0 #A3ADBB, -2.8vmin 0 0 #A3ADBB, 1.3vmin 0 0 #383B44, 2.8vmin 0 0 #383B44;
  z-index: 2;
}
.husky-front-legs > .husky-leg {
  width: 51%;
  height: 100%;
  position: absolute;
  bottom: -1px;
  right: 50%;
  overflow: hidden;
}
.husky-front-legs > .husky-leg:before {
  background: #B9C4D3;
  height: 100%;
  width: 100%;
  -webkit-transform: skewY(-30deg) skewX(10deg);
  transform: skewY(-30deg) skewX(10deg);
  -webkit-transform-origin: top right;
  transform-origin: top right;
}
.husky-front-legs > .husky-leg + .husky-leg {
  right: 0;
  -webkit-transform: rotateY(180deg);
  transform: rotateY(180deg);
}
.husky-front-legs > .husky-leg + .husky-leg:before {
  background: #A3ADBB;
}

.husky-hind-leg {
  position: absolute;
  background: #A3ADBB;
  width: 35%;
  height: 25%;
  border-top-left-radius: 35% 100%;
  border-top-right-radius: 40% 100%;
  bottom: 0%;
  right: 45%;
}
.husky-hind-leg:before {
  width: 6%;
  height: 20%;
  background: transparent;
  bottom: 0;
  left: 70%;
  box-shadow: -0.8vmin 0 0 #383B44, 0.8vmin 0 0 #383B44;
}

.husky-tail {
  position: absolute;
  width: 15%;
  height: 6%;
  bottom: 0;
  right: 72%;
  background: #2c2f36;
  z-index: 0;
}
.husky-tail > .husky-tail {
  -webkit-animation: husky-tail 12s none infinite;
  animation: husky-tail 12s none infinite;
  height: 100%;
  width: 3.2vmin;
  right: 26%;
  -webkit-transform-origin: center right;
  transform-origin: center right;
  border-top-left-radius: 50% 50%;
  border-bottom-left-radius: 50% 50%;
  -webkit-transform: rotate(26deg);
  transform: rotate(26deg);
  -webkit-transform: rotate(0deg);
  transform: rotate(0deg);
}
.husky > .husky-tail {
  border-top-left-radius: 10% 50%;
  border-bottom-left-radius: 10% 50%;
}
.husky > .husky-tail > .husky-tail {
  right: 88%;
}

.snow {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 5;
  pointer-events: none;
}
.snow:before, .snow:after {
  content: '';
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  z-index: 10;
  width: 1vmin;
  height: 1vmin;
  background-color: rgba(255, 255, 255, 0.8);
  border-radius: 50%;
  -webkit-animation: snow 5s linear infinite;
  animation: snow 5s linear infinite;
  box-shadow: 3.91111vw 245.8998vh rgba(255, 255, 255, 0.8), 3.91111vw 545.8998vh rgba(255, 255, 255, 0.8), 70.99774vw 180.31036vh rgba(255, 255, 255, 0.8), 70.99774vw 480.31036vh rgba(255, 255, 255, 0.8), 55.78309vw 288.80557vh rgba(255, 255, 255, 0.8), 55.78309vw 588.80557vh rgba(255, 255, 255, 0.8), 86.58933vw 46.27482vh rgba(255, 255, 255, 0.8), 86.58933vw 346.27482vh rgba(255, 255, 255, 0.8), 75.60534vw 120.88882vh rgba(255, 255, 255, 0.8), 75.60534vw 420.88882vh rgba(255, 255, 255, 0.8), 15.67908vw 70.68818vh rgba(255, 255, 255, 0.8), 15.67908vw 370.68818vh rgba(255, 255, 255, 0.8), 64.41027vw 191.70469vh rgba(255, 255, 255, 0.8), 64.41027vw 491.70469vh rgba(255, 255, 255, 0.8), 8.1549vw 72.65432vh rgba(255, 255, 255, 0.8), 8.1549vw 372.65432vh rgba(255, 255, 255, 0.8), 85.97571vw 128.51062vh rgba(255, 255, 255, 0.8), 85.97571vw 428.51062vh rgba(255, 255, 255, 0.8), 91.5837vw 242.98903vh rgba(255, 255, 255, 0.8), 91.5837vw 542.98903vh rgba(255, 255, 255, 0.8), 17.96334vw 292.03883vh rgba(255, 255, 255, 0.8), 17.96334vw 592.03883vh rgba(255, 255, 255, 0.8), 9.65553vw 226.66542vh rgba(255, 255, 255, 0.8), 9.65553vw 526.66542vh rgba(255, 255, 255, 0.8), 16.89644vw 277.85146vh rgba(255, 255, 255, 0.8), 16.89644vw 577.85146vh rgba(255, 255, 255, 0.8), 8.94213vw 35.30263vh rgba(255, 255, 255, 0.8), 8.94213vw 335.30263vh rgba(255, 255, 255, 0.8), 11.52322vw 151.9283vh rgba(255, 255, 255, 0.8), 11.52322vw 451.9283vh rgba(255, 255, 255, 0.8), 45.51635vw 244.93306vh rgba(255, 255, 255, 0.8), 45.51635vw 544.93306vh rgba(255, 255, 255, 0.8), 20.28839vw 121.51719vh rgba(255, 255, 255, 0.8), 20.28839vw 421.51719vh rgba(255, 255, 255, 0.8), 57.11853vw 68.09992vh rgba(255, 255, 255, 0.8), 57.11853vw 368.09992vh rgba(255, 255, 255, 0.8), 51.51051vw 258.40299vh rgba(255, 255, 255, 0.8), 51.51051vw 558.40299vh rgba(255, 255, 255, 0.8), 40.29683vw 172.06081vh rgba(255, 255, 255, 0.8), 40.29683vw 472.06081vh rgba(255, 255, 255, 0.8), 43.32197vw 94.4853vh rgba(255, 255, 255, 0.8), 43.32197vw 394.4853vh rgba(255, 255, 255, 0.8), 23.46838vw 44.06021vh rgba(255, 255, 255, 0.8), 23.46838vw 344.06021vh rgba(255, 255, 255, 0.8), 30.31595vw 158.89818vh rgba(255, 255, 255, 0.8), 30.31595vw 458.89818vh rgba(255, 255, 255, 0.8), 87.68665vw 64.25318vh rgba(255, 255, 255, 0.8), 87.68665vw 364.25318vh rgba(255, 255, 255, 0.8), 11.02254vw 249.52319vh rgba(255, 255, 255, 0.8), 11.02254vw 549.52319vh rgba(255, 255, 255, 0.8), 77.85455vw 76.94451vh rgba(255, 255, 255, 0.8), 77.85455vw 376.94451vh rgba(255, 255, 255, 0.8), 34.06824vw 218.15998vh rgba(255, 255, 255, 0.8), 34.06824vw 518.15998vh rgba(255, 255, 255, 0.8), 18.0547vw 69.94775vh rgba(255, 255, 255, 0.8), 18.0547vw 369.94775vh rgba(255, 255, 255, 0.8), 19.32592vw 220.35255vh rgba(255, 255, 255, 0.8), 19.32592vw 520.35255vh rgba(255, 255, 255, 0.8), 72.48865vw 287.26826vh rgba(255, 255, 255, 0.8), 72.48865vw 587.26826vh rgba(255, 255, 255, 0.8), 22.14409vw 179.66799vh rgba(255, 255, 255, 0.8), 22.14409vw 479.66799vh rgba(255, 255, 255, 0.8), 23.9237vw 155.76226vh rgba(255, 255, 255, 0.8), 23.9237vw 455.76226vh rgba(255, 255, 255, 0.8), 47.29806vw 209.94739vh rgba(255, 255, 255, 0.8), 47.29806vw 509.94739vh rgba(255, 255, 255, 0.8), 18.35855vw 162.07255vh rgba(255, 255, 255, 0.8), 18.35855vw 462.07255vh rgba(255, 255, 255, 0.8), 14.90633vw 53.43779vh rgba(255, 255, 255, 0.8), 14.90633vw 353.43779vh rgba(255, 255, 255, 0.8), 35.05484vw 14.82238vh rgba(255, 255, 255, 0.8), 35.05484vw 314.82238vh rgba(255, 255, 255, 0.8), 74.68529vw 285.1215vh rgba(255, 255, 255, 0.8), 74.68529vw 585.1215vh rgba(255, 255, 255, 0.8), 2.01787vw 8.44054vh rgba(255, 255, 255, 0.8), 2.01787vw 308.44054vh rgba(255, 255, 255, 0.8), 75.86686vw 93.03489vh rgba(255, 255, 255, 0.8), 75.86686vw 393.03489vh rgba(255, 255, 255, 0.8), 87.23493vw 255.41546vh rgba(255, 255, 255, 0.8), 87.23493vw 555.41546vh rgba(255, 255, 255, 0.8);
}
.snow:after {
  width: 1.1vmin;
  height: 8px;
  -webkit-animation-duration: 6s;
  animation-duration: 6s;
}

@-webkit-keyframes snow {
  from {
    -webkit-transform: rotate(10deg) translateY(-300vh);
    transform: rotate(10deg) translateY(-300vh);
  }
  to {
    -webkit-transform: rotate(10deg) translateY(0);
    transform: rotate(10deg) translateY(0);
  }
}

@keyframes snow {
  from {
    -webkit-transform: rotate(10deg) translateY(-300vh);
    transform: rotate(10deg) translateY(-300vh);
  }
  to {
    -webkit-transform: rotate(10deg) translateY(0);
    transform: rotate(10deg) translateY(0);
  }
}
@-webkit-keyframes squigglevision {
  0% {
    -webkit-filter: url("#squiggly-0");
    filter: url("#squiggly-0");
  }
  25% {
    -webkit-filter: url("#squiggly-1");
    filter: url("#squiggly-1");
  }
  50% {
    -webkit-filter: url("#squiggly-2");
    filter: url("#squiggly-2");
  }
  75% {
    -webkit-filter: url("#squiggly-3");
    filter: url("#squiggly-3");
  }
  100% {
    -webkit-filter: url("#squiggly-4");
    filter: url("#squiggly-4");
  }
}
@keyframes squigglevision {
  0% {
    -webkit-filter: url("#squiggly-0");
    filter: url("#squiggly-0");
  }
  25% {
    -webkit-filter: url("#squiggly-1");
    filter: url("#squiggly-1");
  }
  50% {
    -webkit-filter: url("#squiggly-2");
    filter: url("#squiggly-2");
  }
  75% {
    -webkit-filter: url("#squiggly-3");
    filter: url("#squiggly-3");
  }
  100% {
    -webkit-filter: url("#squiggly-4");
    filter: url("#squiggly-4");
  }
}
*, *:before, *:after {
  box-sizing: border-box;
  position: relative;
}
</style>
<script>
import {mapState} from 'vuex'
export default {
  data(){
    return {

    }
  },
  computed:{
  },
  methods:{
    add(){
     var uname=localStorage.getItem('uname')
      this.axios.get(`/users/style?uname=${uname}&styif=1`).then(res=>{
        if(res.data.sax==1){
          localStorage.setItem('style','1')
        }
        this.$router.push('/index')
     
      })
    }
  },
  mounted(){

  }
}
</script>