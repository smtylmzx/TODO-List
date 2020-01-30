<!DOCTYPE html>
<html lang="tr" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>TODO LIST</title>
    <?php $this->load->view("dependencies/style"); ?>
  </head>
  <body>

    <div class="container">
      <h3 class="text-center">TODO LIST</h3>
      <div class="row">
        <div class="col-12">
          <form class="" action="<?php echo base_url("todo/insert"); ?>" method="post">
            <div class="row">
              <div class="form-group col-11">
                <input type="text" class="form-control" name="todo_title" value="">
              </div>
              <div class="col-1">
                <button class="btn btn-primary" name="button">Kaydet</button>
              </div>
            </div>
          </form>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <table class="table table-bordered table-hover table-stripped">
            <thead>
              <th class="text-center">Açıklama</th>
              <th class="text-center">Durum</th>
              <th class="text-center">Sil</th>
            </thead>
            <tbody>
              <?php foreach ($todos as $todo) { ?>
              <tr>
                  <td><?php echo $todo->title; ?></td>
                  <td class="text-center">
                    <input
                      type="checkbox"
                      data-url="<?php echo base_url("todo/iscompletedsetter/$todo->id"); ?>" 
                      class="js-switch" <?php echo ($todo->isCompleted) ? "checked" : ""; ?> />
                    </td>
                  <td class="text-center"><a href="<?php echo base_url("todo/delete/$todo->id"); ?>" class="btn btn-danger">Sil</a></td>
              </tr>
            <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>

    <?php $this->load->view("dependencies/scripts"); ?>
  </body>
</html>
