declare namespace xsi = "http://www.w3.org/2001/XMLSchema-instance";

declare variable $sets := doc("database.xml")/unmatched/sets;



let $new-set :=
  <set xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" id="NEW" released="true">
    <name>New Set Name</name>
    <numbCharacters>2</numbCharacters>
    <price>
      <USD>29.99</USD>
      <EUR>24.99</EUR>
      <GBP>21.99</GBP>
      <JPY>3699.99</JPY>
    </price>
    <date>05/2023</date>
    <language>English</language>
    <language>Spanish</language>
    <language>German</language>
    <artist>New Artist</artist>
  </set>

return insert node $new-set as last into $sets