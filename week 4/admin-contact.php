<?php include('header.php');?>
<?php include('admin-nav.php');?>
    <?php
        session_start();
        $_SESSION['loginErrorMessage'] ="";
        if($_SESSION['admin_id'] > 0){
            $_SESSION['loginErrorMessage'] ="";
        }else{
            $_SESSION['loginErrorMessage'] ="<div class='alert alert-danger'>You have not login, Please login to proceed...</div>";
            header('Location: admin.php');
        }
    ?>
       
        <div class="content">
            <div class="content">
                <h1>Welcome to Local Restaurant</h1>

                <h2>All Contact Details</h2>

                <table border="1">
                <tr>
                  <th>Contact ID</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Email</th>
                  <th>Phone Number</th>
                  <th>Subject</th>
                  <th>Message</th>
                  <th>Action</th>
                </tr>

              <?php
                $conn = mysqli_connect("localhost", "root", "", "restaurant_db");
                $sql = mysqli_query($conn, "SELECT * FROM `contact`");

                while($data = mysqli_fetch_array($sql)){
                    $contact_id = $data['contact_id']; 
                  echo "<tr>";
                    echo "<td>".$contact_id."</td>";
                    echo "<td>".$data['first_name']."</td>";
                    echo "<td>".$data['last_name']."</td>";
                    echo "<td>".$data['email']."</td>";
                    echo "<td>".$data['phone_number']."</td>";
                    echo "<td>".$data['subject']."</td>";
                    echo "<td>".$data['message']."</td>";
                    echo "<td><a href='processing/admin-delete-contact.php?contact_id=$contact_id'>Delete</a></td>";
                  echo "</tr>";
                }
                      
              ?>
            </table>
 
            </div>


        </div>

<?php include('footer.php');?>