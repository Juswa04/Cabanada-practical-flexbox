<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flexbox2</title>
</head>
<style>
    * {
        margin: 0px;
        padding: 0px;
    }

    body {
        padding: 4px;
        height: calc(100vh - 8px);
        display: flex;
        flex-direction: column;
        gap: 4px;

    }

    nav,
    main,
    aside,
    footer {
        border: 1px solid black;
        padding: 4px;
    }

    nav {
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
    }

    .hey {
        display: flex;
        align-items: center;
        margin: 2px;
        gap: 2px;
    }

    .navboxone {
        background-color: red;
        height: 40px;
        width: 40px;
    }

    .navt {
        display: flex;
        gap: 2px;
        margin: 2px;
    }

    .navtwoboxes {
        background-color: red;
        height: 30px;
        width: 50px;
    }

    .middle {
        display: flex;
        gap: 4px;
        flex-grow: 1;

    }

    main {
        display: flex;
        flex-grow: 1;
        gap: 4px;
    }


    .kulong {
        display: flex;
        flex-grow: 1;
    }

    .middlefirst {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
        flex-grow: 1;
        width: 50%;
        border: 1px solid black;
    }

    .middlefirstboxes1 {
        border: 1px solid black;
        height: 150px;
        width: 180px;
        margin: 2px;

    }

    .middlefirstboxes2 {
        border: 1px solid black;
        height: 150px;
        width: 180px;
        margin: 2px;

    }


    .middlesecond {
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        align-content: flex-start;
        width: 50%;
        gap: 4px;
        padding: 4px;
        border: 1px solid black;
    }

    .middlesecondboxes {
        border: 1px solid black;
        height: 80px;
        width: 80px;


    }

    aside {
        display: flex;
        flex-direction: column;
        gap: 4px;
    }

    .asideboxes {
        border: 1px solid black;
        margin: 2px;
        height: 20px;
        width: 15vw;
    }

    .footerfirst {
        display: flex;
        gap: 2px;
        margin: 4px;
        align-items: center;
    }

    .footerbox {
        background-color: red;
        height: 40px;
        width: 40px;
    }

    .footersecond {
        display: flex;
        gap: 2px;
        margin: 4px;
        border: 1px solid rgb(103, 100, 100);
    }

    .footerboxes {
        display: flex;
        gap: 4px;
        justify-content: center;
    }

    .footercubes {
        background-color: red;
        height: 25px;
        width: 25px;
    }

    .footercopyright {
        display: flex;
        justify-content: center;
    }
</style>

<body>



    <nav>
        <div class="hey">
            <div class="navboxone"></div>
            <div class="navflexbox">Flexbox</div>
        </div>
        <div class="navt">
            <div class="navtwoboxes"></div>
            <div class="navtwoboxes"></div>
        </div>
    </nav>

    <div class="middle">
        <main>
            <div class="kulong">
                <div class="middlefirst">
                    <div class="middleboxes1">
                        <div class="middlefirstboxes1"></div>
                        <div class="middlefirstboxes1"></div>
                    </div>
                    <div class="middleboxes2">
                        <div class="middlefirstboxes2"></div>
                        <div class="middlefirstboxes2"></div>
                    </div>
                </div>
            </div>

            <div class="middlesecond">
                <div class="middlesecondboxes"></div>
                <div class="middlesecondboxes"></div>
                <div class="middlesecondboxes"></div>
                <div class="middlesecondboxes"></div>
                <div class="middlesecondboxes"></div>
                <div class="middlesecondboxes"></div>
                <div class="middlesecondboxes"></div>
                <div class="middlesecondboxes"></div>
                <div class="middlesecondboxes"></div>
                <div class="middlesecondboxes"></div>
                <div class="middlesecondboxes"></div>
                <div class="middlesecondboxes"></div>
                <div class="middlesecondboxes"></div>
                <div class="middlesecondboxes"></div>
                <div class="middlesecondboxes"></div>
            </div>
        </main>

        <aside>
            <div class="asideboxes"></div>
            <div class="asideboxes"></div>
            <div class="asideboxes"></div>
            <div class="asideboxes"></div>
            <div class="asideboxes"></div>
            <div class="asideboxes"></div>
            <div class="asideboxes"></div>
            <div class="asideboxes"></div>
            <div class="asideboxes"></div>
            <div class="asideboxes"></div>
        </aside>
    </div>

    <footer>
        <div class="footerfirst">
            <div class="footerbox"></div>
            <div class="footerflexbox">Flexbox</div>
        </div>

        <div class="footersecond"></div>

        <div class="footerthird">
            <div class="footerboxes">
                <div class="footercubes"></div>
                <div class="footercubes"></div>
                <div class="footercubes"></div>
                <div class="footercubes"></div>
                <div class="footercubes"></div>
            </div>

            <div class="footercopyright">©Copyrights All rights reserved</div>
        </div>
    </footer>



</body>

</html>
