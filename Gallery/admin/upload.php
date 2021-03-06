<?php
include("includes/header.php");
    if(!$session->is_signed_in()){
        redirect("login.php");
    }

    $message = "";
    if(isset($_FILES['file'])){

        $photo = new Photo();
        $photo->title = $_POST['title'];
        $photo->set_file($_FILES['file']);

        if($photo->save()){
            $message = "Photo {$photo->filename} uploaded sucessfully";
        
        }else{
            $message = join("<br>", $photo->errors);
        }
    }
?>


<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
   
    <?php include("includes/top_nav.php") ?>    
    <?php include("includes/side_nav.php"); ?>

</nav>

<div id="page-wrapper">
    <div class="container-fluid">
  
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    UPLOAD
                    <small></small>
                </h1>

                <div class="row">
                    <div class="col-md-6">
                        <?php echo $message; ?>
                        <form action="upload.php" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <input type="text" name="title" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="file" name="file" >
                            </div>

                            <input type="submit" name="submit" >
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <form action="upload.php" class="dropzone"></form>
                    </div>
                </div>
            </div>
        </div>

    </div>
   
</div>

<?php include("includes/footer.php"); ?>