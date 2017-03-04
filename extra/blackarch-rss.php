<?php
#
# Execute this script in CLI for update the rss (after every new articles in the blog)
#

echo "[*] Start fetching https://blackarch.org/blog.html\n";
$content = file_get_contents("https://blackarch.org/blog.html");

//title
preg_match_all('/\<h4 itemprop\=\"name\"\>(.*)\<\/h4\>/', $content, $title);

//time
preg_match_all('/\<time itemprop\=\"datePublished\"\>(.*?)\<\/time\>/', $content, $time);

//description
preg_match_all('/\<div itemprop\=\"description"\>([\n\s\r<p>]?[\n\s\r<ul>])+(.+)([\n\r\s<\/p>]?[\n\r\s<\/ul>])+[\s]/', $content, $description);

//Escape chars
$description[2] = str_replace('"', '&quot;', $description[2]);
$description[2] = str_replace('<', '&lt;', $description[2]);
$description[2] = str_replace('>', '&gt;', $description[2]);
$description[2] = str_replace("'", '&apos;;', $description[2]);

//url
preg_match_all('/id\=p([0-9]+)/', $content, $url);

//Header
$head = '
<!--?xml version="1.0" ?-->
<rss version="2.0">
<channel>
<title>Blackarch blog</title>
<description>News and information for BlackArch Linux</description>
<link>https://blackarch.org</link>';

//For each article, create block item
file_put_contents('rss.xml', $head);

$no_row = count($title[1]) - 1;

$inc_row = 0;

    while ($inc_row < $no_row) {


        $item = '
<item>
<title>'.$title[1][$inc_row].'</title>
<description>'.$description[2][$inc_row].'</description>
<pubDate>'.$time[1][$inc_row].'</pubDate>
<link>https://blackarch.org/blog.html#p'.$url[1][$inc_row].'</link>
</item>';

        file_put_contents('rss.xml', $item, FILE_APPEND);

        $inc_row++;
    }

//Footer
$foot = '
</channel>
</rss>';

file_put_contents('rss.xml', $foot, FILE_APPEND);
echo "[*] Done -> rss.xml\n";
?>
