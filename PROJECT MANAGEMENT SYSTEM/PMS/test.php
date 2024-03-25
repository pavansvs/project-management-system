
    if(in_array($file_ext, $allowed))
    {
        if($file_error===0)
        {
            if($file_size<=9999999999)
            {
                $file_name_new=uniqid('',TRUE).'.'.$file_ext;
                $file_destination='../psf/'.$file_name_new;
                if(move_uploaded_file($file_temp, $file_destination))
                {
                    //echo $file_destination;
                    include '../connection.php';
                    $sql1 = "SELECT s_id FROM project WHERE s_id='$user'";
                    $checking = mysqli_query($conn, $sql);
                    if($checking==Null){
                        $sql1 = "INSERT INTO `project` (`p_id`, `name`, `domain`, `s_id`, `f_id`, `ppf`, `psf`, `remark`) VALUES ('', 'hello', 'hello', '$user', NULL, NULL, NULl, NULL);";
                        mysqli_query($conn, $sql1);
                    }else{
                        $sql = "UPDATE project SET psf='$file_name' WHERE s_id='$user'";
                        mysqli_query($conn, $sql);
                    }

                    $sql = "UPDATE project SET psf='$file_name' WHERE s_id='$user'";
                    mysqli_query($conn, $sql);
                    $conn->close();
                    header('Location:project.php'); 
                }
            }
        }
    }
}
}
 