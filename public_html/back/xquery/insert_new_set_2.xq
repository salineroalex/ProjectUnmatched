declare variable $name as xs:string external;
declare variable $desc as xs:string external;
declare variable $items as xs:string* external;

let $sets := doc("sets.xml")/sets
let $newSet :=
  <set>
    <name>{$name}</name>
    <description>{$desc}</description>
    {
      for $item in $items
      return <item>{$item}</item>
    }
  </set>
return
  if ($sets)
  then (
    modify (
      insert node $newSet as last into $sets
    ),
    $sets
  )
  else (
    <sets>{$newSet}</sets>
  )