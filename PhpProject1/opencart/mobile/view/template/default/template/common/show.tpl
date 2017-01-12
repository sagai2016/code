
<!DOCTYPE html>
<html lang="en">
    <head></head>
    <meta charset="UTF-8"></meta>
    <body>
        <div>aaa</div>
        <?php foreach($getinfo as $v): ?>
        <a><?php echo $v['price'] ;?></a>
        <?php endforeach ?>
        <a>ggg</a>
    </body>
</html>