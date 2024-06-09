<?php
include_once './includes/functions.php';

// Définition des variables de connexion à la base de données
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "ensut"; 

try {
    // Connexion à la base de données
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "La connexion a échoué : " . $e->getMessage();
}

// Vérification du formulaire de connexion
if (!empty($_POST['email']) && !empty($_POST['password'])) {
    $username = $_POST['email'];
    $password = $_POST['password'];

    // Requête préparée pour la vérification de l'identifiant et du mot de passe
    $sql = "SELECT * FROM etudiant WHERE email = :email";
    $stmt = $conn->prepare($sql);
    $stmt->execute(['email' => $username]); // 
    $user = $stmt->fetch(PDO::FETCH_ASSOC);
// Traitement des messages flash
    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['auth'] = $user;
        $_SESSION['flash']['success'] = "Connexion effectuée avec succès";
        header("Location: membre.php"); //  redirection vers page perso
        exit();
    } else {
        $_SESSION['flash']['danger'] = "Identifiant ou mot de passe incorrect";
        header("Location: login.php"); // Reste sur la page
        exit();
    }
}

include_once './includes/header.html';
?>