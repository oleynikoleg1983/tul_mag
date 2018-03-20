 <table id="news_table">
     <thead>
         <tr>
             <th> Выбрать </th>
             <th>Name_product</th>
             <th>Text_product</th>
              <th>description</th>
         </tr>
     </thead>
     <tbody>     
      <?php for($i=0; $i<count($array); $i++)
                {?>
                <tr>
                    <td> <a href="/index/index?change=<?=$array[$i]['id'];?>"> изменить </a></td>
                    <td><?=$array[$i]['name'];     ?>  </td>
                    <td><?=$array[$i]['price'];          ?>   </td>
                    <td><?=$array[$i]['description'];          ?>   </td>
                </tr>
      <?php     }?>           
     </tbody>
 </table>
<div id="new_news">
    <form method="POST">
        Name<br />
            <input type="text" name="put_name"/> <br />
        Price<br />
            <input type="text" name="put_price"/> <br />
        Description<br />
             <textarea rows="10" cols="33" name="text"></textarea><br />
        <input type="submit" name="submit" value="Добавить" id="add_but"/>
    </form>
</div>


         