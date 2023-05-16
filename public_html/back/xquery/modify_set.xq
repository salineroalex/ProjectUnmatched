xquery version "3.1";

declare variable $setID as xs:string external;
declare variable $newPrice as xs:decimal external;
declare variable $selectedCurrency as xs:string external;

let $newSet := 
  <set id="{$setID}" released="true">
    <name>Modified Set Name</name>
    <numbCharacters>10</numbCharacters>
    <price>
      <USD>{if ($selectedCurrency = 'USD/$') then $newPrice else $oldPrice}</USD>
      <EUR>{if ($selectedCurrency = 'EUR/€') then $newPrice else $oldPrice}</EUR>
      <GBP>{if ($selectedCurrency = 'GBP/£') then $newPrice else $oldPrice}</GBP>
      <JPY>{if ($selectedCurrency = 'JPY/¥') then $newPrice else $oldPrice}</JPY>
    </price>
    <date>2023-05-16</date>
    <language>English</language>
    <artist>Modified Artist Name</artist>
  </set>

let $updatedData :=
  copy $newSetData := $newSet
  modify (
    delete node /unmatched/sets/set[@id = $setID],
    insert node $newSetData as last into /unmatched/sets
  )
  return $newSetData

return $updatedData


