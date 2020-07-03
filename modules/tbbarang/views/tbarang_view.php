<html lang="id">

<head>
    <meta charset="utf-8">
    <title>Data tb_barang</title>
    <!--Load file bootstrap.css-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/css/bootstrap.css' ?>">
</head>

<body>

    <div class="container">
        <h1>Data <strong>tb_barang</strong></h1>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID Brg</th>
                    <th>Nama_Brg</th>
                    <th>Keterangan</th>
                </tr>
            </thead>
            <tbody>
                <!--Fetch data dari database-->
                <?php foreach ($data->result() as $row) : ?>
                    <tr>
                        <td><?php echo $row->id_brg; ?></td>
                        <td><?php echo $row->nama_brg; ?></td>
                        <td><?php echo $row->keterangan; ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <div class="row">
            <div class="col">
                <!--Tampilkan onlineshop-->
                <?php echo $onlineshop; ?>
            </div>
        </div>


    </div>
    <!--Load file bootstrap.js-->
    <script type="text/javascript" src="<?php echo base_url() . 'assets/js/bootstrap.js' ?>"></script>
</body>

</html>