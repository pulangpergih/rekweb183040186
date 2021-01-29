<?= $this->extend('layouts/template'); ?>

<?= $this->Section('content'); ?>
<!-- breadcumb -->
<div class="container">
    <div class="row">
        <div class="col">
            <ul class="breadcrumb">
                <h5>Details Product</h5>
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col">
            <div class="card card-details mb-3 " style="max-width: 540px;">
                <div class="row no-gutters">
                    <div class="col-md-4 ">
                        <img src="/Images/<?= $roti['sampul'] ?>" class="card-img-top" alt="...">
                    </div>
                    <div class="col-md-6">
                        <div class="card-body-details">
                            <h5 class="card-title-details"><?= $roti['jenis']; ?></h5>
                            <p class="card-text-details"><?= $roti['nama']; ?></p>
                            <p class="card-text-details"><?= $roti['harga']; ?></p>
                            <p class="card-text-details" style="color: green;">Stcok : <?= $roti['stock']; ?></p>
                            <a href="/breads/edit/<?= $roti['slug']; ?>" class="btn btn-primary-01">Edit</a>
                            <form action="/breads/<?= $roti['id']; ?>" method="POST" class="d-inline">
                                <?= csrf_field(); ?>
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-primary-02" onclick="return confirm('are you sure to delete ?')">Delete</button>
                            </form>
                            <hr>
                            <a href=" /breads">Back to Menu</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection('content'); ?>