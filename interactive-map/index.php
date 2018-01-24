<html>
    <head>
        <title>Interative Map Test</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <article>
            <header>
                <h1>UK Regions and Details Test</h1>
            </header>
            <aside>
                <h2>Enter your postcode</h2>
                <form id="postCode" name="postcode" action="#">
                    <fieldset>
                        <label>
                            Enter your post code
                        </label>
                        <input type="text" name="postCode" />
                    </fieldset>
                    <fieldset>
                        <input type="submit" value="Enter" />
                    </fieldset>
                </form>
            </aside>
            <section>
                <?php echo file_get_contents("uk-regions-test.svg"); ?>
            </section>
            <footer>
                <p>Jordan Haines / Factor 3</p>
            </footer>
        </article>
    </body>
</html>