        <?php session_start() ; ?>

        <!-- ===================================================Traitement message flash=============================================================== -->
        <?php if (isset($_SESSION['flash'])):  ?>
        <?php foreach ($_SESSION['flash'] as $type => $message): ?>
        <div class="col-md-8 col-md-offset-2">

            <div class="alert alert-<?= $type ?>">
                <?= $message ?>

            </div>
        </div>

        <?php endforeach;?>

        <?php unset($_SESSION['flash']) ?>
        <?php endif;?>
        <!-- ===================================================Fin Traitement message flash============================================================== -->

        <head>
            <link rel="stylesheet" href="./fontawesome/css/all.min.css">
            <link rel="stylesheet" href="./css/login.css">

        </head>

        <body>
            <div class="logo__esp">
                <img src="./images_khint/Picture1.png" alt="logo" width="50" height="50">
            </div>
            <header>
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                        <div class="navbar-header">
                        </div>
                        <!-- Menu de la barre de navigation-->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <form class="navbar-form navbar-left">
                                <!-- Mettre le bloc RECHERCHER A DOITE OU GAUCHE-->
                                <button type="submit" class="btn btn-default"><a href="#">Rechercher</a></button>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Recherche">
                                </div>
                            </form>
                            <div class="nav navbar-nav">
                                <button><a href="index.html">ACCUEIL</a></button>
                                <button><a href="./Forum.php">NOUS</a></button>
                                <button><a href="./Faq.php">ACTIVITE</a></button>
                                <button><a href="./contact.php">CONTACT</a></button>
                            </div>
                            <div class="nav navbar-nav navbar-right">
                                <button class="btn-signin"><a href="./login.php">Sign In</a></button>
                                <button class="active"><a href="./inscription.php">Sign Up</a></button>
                            </div>
                        </div>
                    </div>
                </nav>

            </header>
            <div class="ImageFond">
                <img src="./images/logimg.png" alt="fondEcran" width="350" height="650">
            </div>">

            <main>

                <div class="logger">
                    <!-- ========================================================================================== -->
                    <form action="./traiteConexion.php" class="form" method="POST" id="form">

                        <fieldset>


                            <div class="form-group">
                                <div class="user"><i class="fas fa-user"></i></div>
                                <input type="email" id="email" name="email" placeholder="email" required>
                                <i class="fas fa-check-circle"></i>
                                <i class="fas fa-exclamation"></i>
                                <small>Message d'erreur</small>
                            </div>
                            <div class="form-group">
                                <input type="password" id="password" name="password" placeholder="password" required>
                                <i class="fas fa-check-circle"></i>
                                <i class="fas fa-exclamation"></i>
                                <small>Message d'erreur</small>
                            </div>
                            <label for="remember-me" class="champ">
                                <input type="checkbox" id="remember-me">
                                <i class="fas fa-check-square"></i> Se souvenir de moi
                                <div class="Els">
                                    <a href="login.php">Mot de passe oublié ?</a>
                                </div>
                            </label>
                            <div class="validation_inscription">
                                <button type="submit" class="btn btn-primary" name="envoyer">
                                    LOGIN
                                </button>
                            </div>
                        </fieldset>
                    </form>


                </div>
            </main>
        </body>

        </html>