<?= $this->extend('layouts/template'); ?>

<?= $this->Section('content'); ?>
<!-- breadcumb -->
<div class="container">
    <div class="row">
        <div class="col">
            <ul class="breadcrumb">
                <h2>List Menu Bread</h2>
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col">
            <div class="button">
                <div class="col-md-4">
                    <a href="/breads/create" class="btn btn-primary">Add New Breads</a>
                    <?php if (session()->getFlashdata('Message')) : ?>
                        <div class="alert alert-success mt-3" role="alert">
                            <?= session()->getFlashdata('Message'); ?>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- list menu -->
<div class="container">
    <div class="row">
        <div class="col">
            <hr>
            <div class="card-deck">
                <?php foreach ($roti as $r) : ?>
                    <div class="col-md-3 col-xs-6">
                        <div class="card card-detail">
                            <img src="/images/<?= $r['sampul']; ?>" class="card-img-top" alt="...">
                            <div class="card-detail-link">
                                <h6 class="title"><?= $r['jenis']; ?></h6>
                                <p class="text"><?= $r['nama']; ?></p>
                                <p class="prince"><?= $r['harga']; ?></p>
                                <a href="/breads/<?= $r['slug']; ?>" class="btn btn-01">Details</a>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection('content'); ?>