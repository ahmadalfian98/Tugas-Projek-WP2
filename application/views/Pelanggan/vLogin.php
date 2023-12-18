<!-- Page Add Section Begin -->
<section class="page-add">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="page-breadcrumb">
                    <h2>Login Pelanggan<span>.</span></h2>
                </div>
            </div>
            <div class="col-lg-8">
                <img src="img/add.jpg" alt="">
            </div>
        </div>
    </div>
</section>
<!-- Page Add Section End -->

<!-- Contact Section Begin -->
<div class="contact-section">
    <div class="container">
        <div class="row">
            <!-- Header Info Begin -->
            <?php
            if ($this->session->userdata('error')) {
            ?>
                <div class="header-info mb-5">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="header-item">
                                    <p><?= $this->session->userdata('error') ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php
            }
            ?>

            <div class="col-lg-12">

                <form action="<?= base_url('Pelanggan/cAuth') ?>" method="POST" class="contact-form">
                    <div class="row">
                        <div class="col-lg-6">
                            <?= form_error('username', '<p class="text-danger">', '</p>') ?>
                            <input type="text" name="username" value="pelanggan" placeholder="Username">
                        </div>
                        <div class="col-lg-6">
                            <?= form_error('password', '<p class="text-danger">', '</p>') ?>
                            <input type="password" name="password" value="pelanggan" placeholder="Password">
                        </div>
                        <div class="col-lg-12 text-right">
                            <button type="submit">Login</button>
                        </div>
                        <div class="col-lg-12 text-left">
                            <p>Apakah Anda Belum memiliki Akun? <a href="<?= base_url('Pelanggan/cAuth/register') ?>">Register Here!!!</a></p>
							<br><center><p>Repost by <a href='https://stokcoding.com/' title='StokCoding.com' target='_blank'>StokCoding.com</a></p></center>

                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Contact Section End -->
