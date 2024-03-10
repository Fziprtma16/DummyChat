<?php
session_start();


 ?>
<div class="container-fluid h-100">

 <div class="row justify-content-center h-100">
   <div class="col-md-4 col-xl-3 chat"><div class="card mb-sm-3 mb-md-0 contacts_card">

     <!-- Header And Search Chat -->
     <div class="card-header">
       <div class="input-group">
         <input type="text" placeholder="Search..." name="" class="form-control search">
         <div class="input-group-prepend">
           <span class="input-group-text search_btn"><i class="fas fa-search"></i></span>
         </div>
       </div>
     </div>
     <!--  End Header And Search Chat -->

       <!-- List Chat -->

     <div class="card-body contacts_body">
       <ui id="KontakUser" class="contacts">




       </ui>
     </div>
     <!-- End List Chat -->

   <div class="card-footer"></div>
   </div></div>

   <!--Body Chat-->
   <div class="col-md-8 col-xl-6 chat">
     <div class="card">
       <div class="card-header msg_head">
         <div class="d-flex bd-highlight">
           <div class="img_cont">
             <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img">
             <span class="online_icon"></span>
           </div>
           <div class="user_info">
             <span>Admin</span>
             <p>Dokter</p>
           </div>
           <!-- <div class="video_cam">
             <span><i class="fas fa-video"></i></span>
             <span><i class="fas fa-phone"></i></span>
           </div> -->
         </div>
         <span id="action_menu_btn"><i class="fas fa-ellipsis-v"></i></span>
         <div class="action_menu">
           <ul>
             <li><i class="fas fa-user-circle"></i> View profile</li>
             <li><i class="fas fa-users"></i> Add to close friends</li>
             <li><i class="fas fa-plus"></i> Add to group</li>
             <li><i class="fas fa-ban"></i> Block</li>
           </ul>
         </div>
       </div>

       <!-- Start Chat Box -->
       <div class="card-body msg_card_body">

         <!-- Chat Client -->
         <div class="d-flex justify-content-start mb-4">
           <div class="img_cont_msg">
             <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img_msg">
           </div>
           <div class="msg_cotainer">
             Hi, how are you samim?
             <span class="msg_time">8:40 AM, Today</span>
           </div>
         </div>
       <!-- End Chat Client -->

       <!-- Chat User -->
         <div class="d-flex justify-content-end mb-4">
           <div class="msg_cotainer_send">
             Hi Khalid i am good tnx how about you?
             <span class="msg_time_send">8:55 AM, Today</span>
           </div>
           <div class="img_cont_msg">
         <img src="https://cdn-icons-png.flaticon.com/512/506/506185.png" class="rounded-circle user_img_msg">
           </div>
         </div>
         <!-- End Chat User -->

       </div>
      <!-- End Chat Box -->


       <div class="card-footer">

         <!-- Start Text Chat -->
         <div class="input-group">
           <div class="input-group-append">
             <span class="input-group-text attach_btn"><i class="fas fa-paperclip"></i></span>
           </div>
           <textarea name="" class="form-control type_msg" placeholder="Type your message..."></textarea>
           <div class="input-group-append">
             <span class="input-group-text send_btn"><i class="fas fa-location-arrow"></i></span>
           </div>
         </div>
         <!-- End Text Chat -->
       </div>


     </div>
   </div>
   <!-- End Div Body Chat -->
 </div>
</div>
