xquery version "3.0";

declare namespace xs = "http://www.w3.org/2001/XMLSchema";

let $name := request:get-parameter("name", "")
let $characters := request:get-parameter("characters", "")
let $usd := request:get-parameter("USD", "")
let $eur := request:get-parameter("EUR", "")
let $gbp := request:get-parameter("GBP", "")
let $jpy := request:get-parameter("JPY", "")
let $date := request:get-parameter("date", "")
let $language1 := request:get-parameter("language1", "")
let $language2 := request:get-parameter("language2", "")
let $language3 := request:get-parameter("language3", "")
let $language4 := request:get-parameter("language4", "")
let $language5 := request:get-parameter("language5", "")
let $artistName := request:get-parameter("artistName", "")

let $newSet :=
    <set id="{generate-id()}" released="true">
        <name>{$name}</name>
        <numbCharacters>{xs:integer($characters)}</numbCharacters>
        <price>
            <USD>{xs:decimal($usd)}</USD>
            <EUR>{xs:decimal($eur)}</EUR>
            <GBP>{xs:decimal($gbp)}</GBP>
            <JPY>{xs:decimal($jpy)}</JPY>
        </price>
        <date>{$date}</date>
        <language>{if ($language1 ne "") then $language1 else "English"}</language>
        <language>{if ($language2 ne "") then $language2 else ()}</language>
        <language>{if ($language3 ne "") then $language3 else ()}</language>
        <language>{if ($language4 ne "") then $language4 else ()}</language>
        <language>{if ($language5 ne "") then $language5 else ()}</language>
        <artist>{$artistName}</artist>
    </set>

return
    insert nodes $newSet into doc("your-database.xml")//sets
