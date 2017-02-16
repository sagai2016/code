

<?php if (!isset($redirect)) { ?>
<div class="confirm">

    <p>商品</p>
    <div>
    <?php foreach ($products as $product) { ?>
    
        <ul>
            <li><span><?php echo $product['name']; ?></span></li>
            <li></span><span><?php echo $product['model']; ?></span></li>
            <li class="price">
                <span><strong><?php echo $column_price; ?></strong><?php echo $product['price']; ?></span>
                <span><strong><?php echo $column_quantity; ?></strong><?php echo $product['quantity']; ?></span>
                <span><strong><?php echo $column_total; ?></strong><?php echo $product['total']; ?></span>
            </li>
        </ul>
        <?php } ?>
    </div>
    
    <p>总价</p>
    <ul class="total">
        <li class="price">
            <?php foreach ($totals as $total) { ?>
            <span><strong><?php echo $total['title']; ?></strong><?php echo $total['text']; ?></span>
            <?php } ?>
        </li>
    </ul>
</div>
<?php echo $payment; ?>
<?php } else { ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script>
<?php } ?>