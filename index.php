<?php
include './includes/header.php';
require_once './config/dbConfig.php';

$limit = 10;
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;
$start = ($page - 1) * $limit;

$stmt_movies = $pdo->prepare('SELECT * FROM tbl_movie LIMIT ?, ?');
$stmt_movies->bindValue(1, $start, PDO::PARAM_INT);
$stmt_movies->bindValue(2, $limit, PDO::PARAM_INT);
$stmt_movies->execute();
$movies = $stmt_movies->fetchAll(PDO::FETCH_ASSOC);

$stmt_series = $pdo->prepare('SELECT * FROM tbl_serie LIMIT ?, ?');
$stmt_series->bindValue(1, $start, PDO::PARAM_INT);
$stmt_series->bindValue(2, $limit, PDO::PARAM_INT);
$stmt_series->execute();
$series = $stmt_series->fetchAll(PDO::FETCH_ASSOC);
?>

<div class="home-wrapper">
    <div class="movies-wrapper">
        <?php foreach ($movies as $movie) : ?>
            <div class="movie">
                <h3><?php echo $movie['title']; ?></h3>
                <p><?php echo $movie['description']; ?></p>
                <p>Release Year: <?php echo $movie['release_year']; ?></p>
            </div>
        <?php endforeach; ?>
    </div>

    <div class="series-wrapper">
        <?php foreach ($series as $serie) : ?>
            <div class="serie">
                <h3><?php echo $serie['title']; ?></h3>
                <p>Release Year: <?php echo $serie['release_year']; ?></p>
            </div>
        <?php endforeach; ?>
    </div>

    <div class="pagination">
        <?php if ($page > 1) : ?>
            <a href="index.php?page=<?php echo $page - 1; ?>">Previous</a>
        <?php endif; ?>
        <?php if (count($movies) == $limit) : ?>
            <a href="index.php?page=<?php echo $page + 1; ?>">Next</a>
        <?php endif; ?>
    </div>
</div>

<?php
include './includes/footer.php';
?>
</div>