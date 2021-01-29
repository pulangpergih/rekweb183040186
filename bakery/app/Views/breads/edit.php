<?= $this->extend('layouts/template'); ?>

<?= $this->Section('content'); ?>
<!-- breadcumb -->
<div class="container">
    <div class="row">
        <div class="col">
            <ul class="breadcrumb">
                <h5>Form Edit Product</h5>
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-6">
            <div class="section-create">
                <form action="/breads/update/<?= $roti['id']; ?>" method="post" enctype="multipart/form-data">
                    <?= csrf_field(); ?>
                    <input type="hidden" name="slug" value="<?= $roti['slug']; ?>">
                    <input type="hidde" name="sampulLama" value="<?= $roti['sampul']; ?>">
                    <div class="form-group row">
                        <label for="jenis" class="col-sm-2 col-form-label">Jenis</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control " id="jenis" name="jenis" autofocus value="<?= (old('jenis')) ? old('jenis') : $roti['jenis'] ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nama" class="col-sm-2 col-form-label">Nama</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control <?= ($validation->hasError('nama')) ? 'is-invalid' : ''; ?>" id="nama" name="nama" value="<?= (old('nama')) ? old('nama') : $roti['nama'] ?>">
                            <div class="invalid-feedback">
                                <?= $validation->getError('nama'); ?>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="harga" class="col-sm-2 col-form-label">Harga</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="harga" name="harga" value="<?= (old('harga')) ? old('harga') : $roti['harga'] ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="stock" class="col-sm-2 col-form-label">Stcok</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="stock" name="stock" value="<?= (old('stock')) ? old('stock') : $roti['stock'] ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="sampul" class="col-sm-2 col-form-label">Sampul</label>
                        <div class="col-sm-2">
                            <img src="/images/<?= $roti['sampul']; ?>" class="img-thumbnail img-preview" alt="">
                        </div>
                        <div class="col-sm-8">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input <?= ($validation->hasError('sampul')) ? 'is-invalid' : ''; ?>" id="sampul" name="sampul" onchange="previewImg()">
                                <div class="invalid-feedback">
                                    <?= $validation->getError('sampul'); ?>
                                </div>
                                <label class="custom-file-label" for="sampul"><?= $roti['sampul']; ?></label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-10">
                            <button type="submit" class="btn btn-primary">Edit</button>
                            <a href="/breads" class="btn btn-danger">Cancel</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection('content'); ?>