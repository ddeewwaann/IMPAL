<html>
    <head>
        <title>Hanya Di Kost Sambi</title>
        <link rel="shortcut icon" href="<?php echo base_url('assets/img/logo-01.png')?>" type="image/x-icon">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
        <style>
            .form-group{
                color: #2d5066;
            }
            .form-control{
                border-color: #2d5066;
                border-width: 2px
            }
        </style>
    </head>
    <body>
        <section>
            <nav class="navbar fixed-top navbar-expand-sm" style="background-color:#2d5066">
                <div class="collapse navbar-collapse">
                    <a class="navbar-brand font-weight-bold" style="color: white;font-size:25px" href="<?php echo base_url('')?>">
                        <img src="<?php echo base_url('assets/img/logoputih.png')?>" width="50" height="50" alt="">
                        KOST SAMBI
                    </a>
                </div>
                <ul class="navbar-nav mr-auto ">
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item row">
                            <div class="dropdown col-6">
                                <a class="dropdown-toggle btn btn-secondary" style="background-color: #d66565; height:50px;width:80px;font-size:15px;" data-toggle="dropdown">
                                HAI <?php echo $this->session->userdata('username') ?>
                                </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item">PROFILE</a>
                                    <a class="dropdown-item" href="<?php echo base_url("index.php/webController/logout")?>">LOGOUT</a>
                                </div>
                            </div>
                            <img class="col-6" style="width:60px";height="60px" src="<?php echo base_url('assets/img/user.png')?>">
                        </li>
                        
                    </ul>
            </nav>
        </section>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <section>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-6 file-upload">
                        <form action="<?php echo base_url('index.php/webController/daftarkost_data')?>" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label><h6>Nama Kost</h6></label>
                                <input type="text" class="form-control" placeholder="Masukkan Nama Kost" name="namakost">
                            </div>
                            <div class="form-group">
                                <label><h6>Kode Kost</h6></label>
                                <input type="text" class="form-control" placeholder="Masukkan Nama Kode Kost" name="kodekost">
                            </div>
                            <div class="form-group">
                                <label><h6>Alamat</h6></label>
                                <input type="text" class="form-control" placeholder="Masukkan Alamat Kost" name="alamat">
                            </div>
                            <div class="form-group">
                                <label><h6>Fasilitas</h6></label>
                                <input type="text" class="form-control" placeholder="Masukkan Fasilitas Kost" name="fasilitas">
                            </div>
                            <div class="form-group">
                                <label><h6>Harga</h6></label>
                                <input type="text" class="form-control" placeholder="Masukkan Harga Kost" name="harga">
                            </div>
                            <div class="form-group">
                                <label><h6>Jenis Kost</h6></label>
                                <select class="form-control" name="jeniskost" >
                                    <option>Laki-Laki</option>
                                    <option>Perempuan</option>
                                    <option>Campur</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label><h6>Nama Pemilik</h6></label>
                                <input type="text" class="form-control" placeholder="<?php echo $this->session->userdata('username') ?>" name="namapemilik" value="<?php echo $this->session->userdata('username') ?>" readonly>
                            </div>
                            <div class="form-group">
                                <label><h6>No Telpon</h6></label>
                                <input type="text" class="form-control" placeholder="Masukkan No Telpon" name="contact">
                            </div>
                            <div class="form-group">
                                <label><h6>Masukkan Foto Kost</h6></label>
                                <input type="file" name="userfile" size="100" >
                            </div>
                            <button type="submit" name="upload" style="background-color:#2d5066;color :white" class="btn col-12">SUBMIT</button>
                        </form>
                    </div>
                    <div class="col-5">
                        <img style="height:500px;width:600px" src="<?php echo base_url('assets/img/hm.png')?>" >
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
