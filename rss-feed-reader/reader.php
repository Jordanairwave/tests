<?php
    //Feed URL
    $feed = 'http://feeds.bbci.co.uk/news/technology/rss.xml';

    // Use cURL to fetch text
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $feed);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    $rss = curl_exec($ch);
    curl_close($ch);

    // Manipulate string into object
    $rss = simplexml_load_string($rss);

    $siteTitle = $rss->channel->title;
    echo $siteTitle;


    $cnt = count($rss->channel->item);

?>
    <table>
        <thead>
            <tr>
                <th class="title-cell">Title</th>
                <th class="date-cell">Description</th>
                <th class="link-cell">Link</th>
            </tr>
        </thead>
        <tbody>

<?php
    for($i=0; $i<$cnt; $i++):
        $url = $rss->channel->item[$i]->link;
        $title = $rss->channel->item[$i]->title;
        $desc = $rss->channel->item[$i]->description;
?>
        <tr>
            <td><?php echo $title; ?></td>
            <td><?php echo $desc; ?></td>
            <td><a href="<?php echo $url; ?>" title="Read more about <?php echo $title; ?>"><?php echo $url; ?></a></td>
        </tr>
<?php
    endfor;
?>

        </tbody>
    </table>