<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="<?php echo (!empty($admin['photo'])) ? '../images/'.$admin['photo'] : '../images/profile.jpg'; ?>" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p><?php echo $admin['firstname'].' '.$admin['lastname']; ?></p>
        <a><i class="fa fa-circle text-success"></i> Online</a>
      </div>
    </div>
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu" data-widget="tree">
      <li class="header">RAPPORTS</li>
      <li><a href="home.php"><i class="fa fa-dashboard"></i> <span>Tableau de bord</span></a></li>
      <li><a href="sales.php"><i class="fa fa-money"></i> <span>Ventes</span></a></li>
      <li class="header">GÉRER</li>
      <li><a href="users.php"><i class="fa fa-users"></i> <span>Utilisateurs</span></a></li>
      <li><a href="contact.php"><i class="fa fa-id-card"></i> <span>Contacts</span></a></li>
      <li><a href="abonne.php"><i class="fa fa-adn"></i> <span>Abonnés</span></a></li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-barcode"></i>
          <span>Produits</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="products.php"><i class="fa fa-circle-o"></i> Liste Des Produits</a></li>
          <li><a href="category.php"><i class="fa fa-circle-o"></i> Catégories</a></li>
        </ul>
      </li>
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>