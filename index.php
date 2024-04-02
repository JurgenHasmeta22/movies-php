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

// echo json_encode(array('movies' => $movies, 'series' => $series));
?>

<div class="home-wrapper">
    <div class="movies-wrapper" id="movies-wrapper">
        <?php foreach ($movies as $movie) : ?>
            <div class="movie">
                <h3><?php echo $movie['title']; ?></h3>
                <p><?php echo $movie['description']; ?></p>
                <p>Release Year: <?php echo $movie['release_year']; ?></p>
            </div>
        <?php endforeach; ?>
    </div>

    <div class="series-wrapper" id="series-wrapper">
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
            <!-- <a href="javascript:void(0)" onclick="loadPage(<?php echo $page - 1; ?>)">Previous</a> -->
        <?php endif; ?>
        <?php if (count($movies) == $limit) : ?>
            <a href="index.php?page=<?php echo $page + 1; ?>">Next</a>
            <!-- <a href="javascript:void(0)" onclick="loadPage(<?php echo $page + 1; ?>)">Next</a> -->
        <?php endif; ?>
    </div>
</div>

<!-- <script>
    function loadPage(page) {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', 'index.php?page=' + page, true);
        xhr.onload = function() {
            if (this.status == 200) {
                var response = JSON.parse(this.responseText);
                displayData(response);
            }
        }
        xhr.send();
    }

    function displayData(data) {
        var moviesHtml = '';
        data.movies.forEach(function(movie) {
            moviesHtml += '<div class="movie">';
            moviesHtml += '<h3>' + movie.title + '</h3>';
            moviesHtml += '<p>' + movie.description + '</p>';
            moviesHtml += '<p>Release Year: ' + movie.release_year + '</p>';
            moviesHtml += '</div>';
        });
        document.getElementById('movies-wrapper').innerHTML = moviesHtml;

        var seriesHtml = '';
        data.series.forEach(function(serie) {
            seriesHtml += '<div class="serie">';
            seriesHtml += '<h3>' + serie.title + '</h3>';
            seriesHtml += '<p>Release Year: ' + serie.release_year + '</p>';
            seriesHtml += '</div>';
        });
        document.getElementById('series-wrapper').innerHTML = seriesHtml;
    }
</script> -->


<?php
include './includes/footer.php';
?>