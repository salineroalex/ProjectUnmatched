xquery version "3.0";

declare namespace xs = "http://www.w3.org/2001/XMLSchema";

declare function local:deleteSet($setID as xs:string) {
  let $xml := doc("database.xml")
  let $sets := $xml//sets/set
  let $setToDelete := $sets[@id = $setID]
  return delete node $setToDelete
};

let $selectedSetID := request:get-parameter("set", "")
return local:deleteSet($selectedSetID)

