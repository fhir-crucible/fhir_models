module FHIR
  module R6
    class Composition < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['attester', 'author', 'category', 'date', 'encounter', 'entry', 'event-code', 'event-reference', 'identifier', 'patient', 'period', 'related', 'section', 'section-code-text', 'section-text', 'status', 'subject', 'title', 'type', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Composition.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Composition.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Composition.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'Composition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'Composition.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Composition.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Composition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Composition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'Composition.url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'Composition.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'Composition.version', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/composition-status'=>['registered', 'partial', 'preliminary', 'final', 'amended', 'corrected', 'appended', 'cancelled', 'entered-in-error', 'deprecated', 'unknown']}, 'type'=>'code', 'path'=>'Composition.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/composition-status'}},
        'type' => {'valid_codes'=>{'http://loinc.org'=>['100018-1', '100029-8', '100213-8', '100214-6', '100215-3', '100225-2', '100226-0', '100227-8', '100228-6', '100229-4', '100231-0', '100282-3', '100349-0', '100369-8', '100438-1', '100439-9', '100440-7', '100441-5', '100442-3', '100443-1', '100444-9', '100445-6', '100446-4', '100447-2', '100448-0', '100449-8', '100450-6', '100451-4', '100452-2', '100453-0', '100454-8', '100455-5', '100456-3', '100457-1', '100458-9', '100459-7', '100460-5', '100461-3', '100462-1', '100463-9', '100464-7', '100465-4', '100466-2', '100467-0', '100468-8', '100469-6', '100470-4', '100471-2', '100472-0', '100473-8', '100474-6', '100475-3', '100476-1', '100477-9', '100478-7', '100479-5', '100480-3', '100481-1', '100482-9', '100483-7', '100484-5', '100485-2', '100486-0', '100487-8', '100488-6', '100489-4', '100490-2', '100491-0', '100492-8', '100493-6', '100494-4', '100495-1', '100496-9', '100497-7', '100498-5', '100499-3', '100500-8', '100501-6', '100502-4', '100503-2', '100504-0', '100505-7', '100506-5', '100507-3', '100508-1', '100509-9', '100510-7', '100511-5', '100512-3', '100513-1', '100514-9', '100515-6', '100516-4', '100517-2', '100518-0', '100519-8', '100520-6', '100521-4', '100522-2', '100523-0', '100524-8', '100525-5', '100526-3', '100527-1', '100528-9', '100529-7', '100530-5', '100531-3', '100532-1', '100533-9', '100534-7', '100535-4', '100536-2', '100537-0', '100538-8', '100539-6', '100540-4', '100541-2', '100542-0', '100543-8', '100544-6', '100545-3', '100546-1', '100547-9', '100548-7', '100549-5', '100550-3', '100551-1', '100552-9', '100553-7', '100554-5', '100555-2', '100556-0', '100557-8', '100558-6', '100559-4', '100560-2', '100561-0', '100562-8', '100563-6', '100564-4', '100565-1', '100566-9', '100567-7', '100568-5', '100569-3', '100570-1', '100571-9', '100572-7', '100573-5', '100574-3', '100575-0', '100576-8', '100577-6', '100578-4', '100579-2', '100580-0', '100581-8', '100582-6', '100583-4', '100584-2', '100585-9', '100586-7', '100587-5', '100588-3', '100589-1', '100590-9', '100591-7', '100592-5', '100593-3', '100594-1', '100595-8', '100596-6', '100597-4', '100598-2', '100599-0', '100600-6', '100601-4', '100602-2', '100603-0', '100604-8', '100605-5', '100606-3', '100607-1', '100608-9', '100609-7', '100610-5', '100611-3', '100612-1', '100613-9', '100614-7', '100615-4', '100616-2', '100617-0', '100618-8', '100619-6', '100620-4', '100621-2', '100622-0', '100623-8', '100624-6', '100625-3', '100626-1', '100627-9', '100628-7', '100629-5', '100630-3', '100631-1', '100632-9', '100633-7', '100634-5', '100635-2', '100636-0', '100637-8', '100638-6', '100639-4', '100640-2', '100641-0', '100642-8', '100643-6', '100644-4', '100645-1', '100646-9', '100647-7', '100648-5', '100649-3', '100650-1', '100651-9', '100655-0', '100656-8', '100657-6', '100658-4', '100659-2', '100660-0', '100661-8', '100697-2', '100698-0', '100718-6', '100719-4', '100720-2', '100721-0', '100722-8', '100723-6', '100724-4', '100725-1', '100726-9', '100727-7', '100728-5', '100729-3', '100730-1', '100731-9', '100736-8', '100754-1', '100760-8', '100761-6', '100852-3', '100853-1', '100875-4', '100876-2', '100877-0', '100878-8', '100879-6', '100880-4', '100881-2', '100882-0', '100883-8', '100884-6', '100966-1', '100967-9', '100991-9', '100992-7', '100993-5', '101005-7', '101006-5', '101007-3', '101008-1', '101009-9', '101010-7', '101011-5', '101012-3', '101013-1', '101014-9', '101015-6', '101016-4', '101017-2', '101018-0', '101019-8', '101020-6', '101021-4', '101022-2', '101023-0', '101024-8', '101025-5', '101026-3', '101027-1', '101028-9', '101029-7', '101030-5', '101031-3', '101032-1', '101033-9', '101034-7', '101035-4', '101036-2', '101037-0', '101038-8', '101039-6', '101040-4', '101041-2', '101042-0', '101043-8', '101044-6', '101045-3', '101046-1', '101047-9', '101048-7', '101049-5', '101050-3', '101051-1', '101052-9', '101053-7', '101054-5', '101055-2', '101056-0', '101057-8', '101058-6', '101059-4', '101117-0', '101118-8', '101119-6', '101133-7', '101134-5', '101135-2', '101136-0', '101141-0', '101152-7', '101224-4', '101301-0', '101350-7', '101377-0', '101378-8', '101379-6', '101380-4', '101381-2', '101382-0', '101383-8', '101384-6', '101385-3', '101386-1', '101387-9', '101388-7', '101389-5', '101390-3', '101391-1', '101392-9', '101393-7', '101395-2', '101396-0', '101397-8', '101405-9', '101468-7', '101507-2', '101541-1', '101566-8', '101567-6', '101577-5', '101578-3', '101579-1', '101580-9', '101581-7', '101582-5', '101630-2', '101631-0', '101633-6', '101634-4', '101635-1', '101636-9', '101637-7', '101638-5', '101639-3', '101640-1', '101641-9', '101651-8', '101657-5', '101663-3', '101664-1', '101671-6', '101682-3', '101787-0', '101788-8', '101792-0', '101820-9', '101823-3', '101881-1', '101884-5', '101885-2', '101886-0', '101887-8', '101888-6', '101889-4', '101890-2', '101891-0', '101892-8', '101893-6', '101894-4', '101895-1', '101896-9', '101897-7', '101898-5', '101899-3', '101900-9', '101901-7', '101904-1', '101920-7', '101952-0', '101953-8', '101954-6', '101955-3', '101956-1', '101957-9', '101958-7', '101959-5', '101960-3', '101961-1', '101962-9', '101963-7', '101964-5', '101965-2', '101994-2', '102009-8', '102036-1', '102039-5', '102086-6', '102089-0', '102091-6', '102099-9', '102100-5', '102101-3', '103140-0', '103144-2', '103145-9', '103146-7', '103147-5', '103228-3', '103229-1', '103230-9', '103231-7', '103232-5', '103233-3', '103234-1', '103235-8', '103236-6', '103237-4', '103238-2', '103239-0', '103240-8', '103241-6', '103242-4', '103243-2', '103244-0', '103245-7', '103246-5', '103247-3', '103248-1', '103249-9', '103250-7', '103251-5', '103252-3', '103253-1', '103254-9', '103255-6', '103256-4', '103257-2', '103258-0', '103259-8', '103260-6', '103261-4', '103262-2', '103263-0', '103264-8', '103265-5', '103266-3', '103267-1', '103268-9', '103269-7', '103270-5', '103271-3', '103272-1', '103273-9', '103274-7', '103275-4', '103276-2', '103277-0', '103278-8', '103279-6', '103280-4', '103281-2', '103282-0', '103283-8', '103284-6', '103285-3', '103286-1', '103287-9', '103288-7', '103289-5', '103290-3', '103291-1', '103292-9', '103293-7', '103294-5', '103295-2', '103296-0', '103297-8', '103298-6', '103299-4', '103300-0', '103301-8', '103302-6', '103303-4', '103304-2', '103305-9', '103306-7', '103307-5', '103308-3', '103309-1', '103310-9', '103311-7', '103312-5', '103313-3', '103314-1', '103315-8', '103316-6', '103317-4', '103318-2', '103319-0', '103320-8', '103321-6', '103322-4', '103323-2', '103324-0', '103325-7', '103326-5', '103327-3', '103328-1', '103329-9', '103330-7', '103331-5', '103332-3', '103333-1', '103334-9', '103335-6', '103336-4', '103337-2', '103338-0', '103339-8', '103340-6', '103341-4', '103342-2', '103343-0', '103344-8', '103345-5', '103346-3', '103347-1', '103348-9', '103349-7', '103350-5', '103351-3', '103352-1', '103353-9', '103354-7', '103355-4', '103356-2', '103357-0', '103358-8', '103359-6', '103360-4', '103361-2', '103362-0', '103363-8', '103364-6', '103365-3', '103366-1', '103367-9', '103368-7', '103369-5', '103370-3', '103371-1', '103372-9', '103373-7', '103374-5', '103375-2', '103376-0', '103377-8', '103378-6', '103379-4', '103380-2', '103381-0', '103382-8', '103383-6', '103384-4', '103385-1', '103386-9', '103387-7', '103388-5', '103389-3', '103390-1', '103391-9', '103392-7', '103393-5', '103394-3', '103395-0', '103396-8', '103397-6', '103398-4', '103399-2', '103400-8', '103401-6', '103402-4', '103403-2', '103404-0', '103405-7', '103406-5', '103407-3', '103408-1', '103409-9', '103410-7', '103411-5', '103412-3', '103413-1', '103414-9', '103415-6', '103416-4', '103417-2', '103418-0', '103419-8', '103420-6', '103421-4', '103422-2', '103423-0', '103424-8', '103425-5', '103426-3', '103427-1', '103428-9', '103429-7', '103430-5', '103431-3', '103432-1', '103433-9', '103434-7', '103435-4', '103436-2', '103437-0', '103438-8', '103439-6', '103440-4', '103441-2', '103442-0', '103443-8', '103444-6', '103445-3', '103446-1', '103447-9', '103448-7', '103449-5', '103450-3', '103451-1', '103452-9', '103453-7', '103454-5', '103455-2', '103456-0', '103457-8', '103458-6', '103459-4', '103460-2', '103461-0', '103462-8', '103463-6', '103464-4', '103465-1', '103466-9', '103467-7', '103468-5', '103469-3', '103470-1', '103471-9', '103472-7', '103473-5', '103474-3', '103475-0', '103476-8', '103477-6', '103478-4', '103479-2', '103480-0', '103481-8', '103482-6', '103483-4', '103484-2', '103485-9', '103486-7', '103487-5', '103488-3', '103489-1', '103490-9', '103491-7', '103492-5', '103493-3', '103494-1', '103495-8', '103496-6', '103497-4', '103498-2', '103499-0', '103500-5', '103501-3', '103502-1', '103503-9', '103504-7', '103505-4', '103506-2', '103507-0', '103508-8', '103509-6', '103510-4', '103511-2', '103512-0', '103513-8', '103514-6', '103515-3', '103516-1', '103517-9', '103518-7', '103519-5', '103520-3', '103521-1', '103522-9', '103523-7', '103524-5', '103525-2', '103526-0', '103527-8', '103528-6', '103529-4', '103530-2', '103531-0', '103532-8', '103533-6', '103534-4', '103535-1', '103536-9', '103537-7', '103538-5', '103539-3', '103540-1', '103541-9', '103543-5', '103544-3', '103545-0', '103546-8', '103547-6', '103548-4', '103549-2', '103550-0', '103551-8', '103552-6', '103553-4', '103554-2', '103558-3', '103591-4', '103592-2', '103595-5', '103596-3', '103597-1', '103621-9', '103677-1', '103678-9', '103680-5', '103727-4', '103728-2', '103729-0', '103730-8', '103731-6', '103732-4', '103733-2', '103734-0', '103735-7', '103736-5', '103737-3', '103738-1', '103739-9', '103740-7', '103741-5', '103742-3', '103743-1', '103751-4', '103788-6', '103792-8', '103793-6', '103794-4', '103795-1', '103796-9', '103797-7', '103798-5', '103799-3', '103800-9', '103801-7', '103802-5', '103803-3', '103804-1', '103805-8', '103806-6', '103807-4', '103808-2', '103809-0', '103813-2', '103816-5', '103817-3', '103818-1', '103819-9', '103820-7', '103821-5', '103822-3', '103823-1', '103824-9', '103825-6', '103826-4', '103827-2', '103844-7', '103848-8', '103849-6', '103850-4', '103851-2', '103852-0', '103853-8', '103854-6', '103855-3', '103856-1', '103857-9', '103858-7', '103859-5', '103860-3', '103861-1', '103862-9', '103863-7', '103864-5', '103865-2', '103866-0', '103867-8', '103868-6', '103869-4', '103870-2', '103871-0', '103872-8', '103873-6', '103874-4', '103875-1', '103876-9', '103877-7', '103878-5', '103879-3', '103880-1', '103881-9', '103882-7', '103883-5', '103884-3', '103885-0', '103886-8', '103887-6', '103888-4', '103889-2', '103890-0', '103891-8', '103892-6', '103893-4', '103894-2', '103895-9', '103896-7', '103897-5', '103898-3', '103899-1', '103900-7', '103901-5', '103902-3', '103903-1', '103904-9', '103905-6', '103906-4', '103907-2', '103908-0', '103909-8', '103910-6', '103911-4', '103912-2', '103913-0', '103914-8', '103915-5', '103916-3', '103917-1', '103918-9', '103919-7', '103920-5', '103921-3', '103922-1', '103923-9', '103924-7', '103925-4', '103926-2', '103927-0', '103928-8', '103944-5', '103945-2', '103950-2', '103951-0', '103952-8', '103953-6', '103954-4', '103955-1', '103956-9', '103957-7', '103964-3', '103965-0', '103966-8', '103967-6', '103968-4', '103969-2', '103970-0', '103971-8', '103972-6', '104062-5', '104065-8', '104066-6', '104067-4', '104068-2', '104069-0', '104070-8', '104071-6', '104121-9', '104122-7', '104123-5', '104124-3', '104125-0', '104126-8', '104128-4', '104129-2', '104130-0', '104131-8', '104144-1', '104167-2', '104168-0', '104169-8', '104198-7', '104199-5', '104200-1', '104211-8', '104212-6', '104213-4', '104214-2', '104215-9', '104216-7', '104238-1', '104239-9', '104240-7', '104241-5', '104242-3', '104268-8', '104289-4', '104323-1', '104391-8', '104483-3', '104484-1', '104485-8', '104486-6', '104487-4', '104488-2', '104489-0', '104530-1', '104531-9', '104577-2', '104578-0', '104579-8', '104580-6', '104581-4', '104582-2', '104583-0', '104584-8', '104585-5', '104586-3', '104587-1', '104588-9', '104589-7', '104590-5', '104591-3', '104592-1', '104593-9', '104594-7', '104605-1', '104670-5', '104867-7']}, 'type'=>'CodeableConcept', 'path'=>'Composition.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/doc-typecodes'}},
        'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/media-category'=>['image', 'video', 'audio', 'STYLESHEET', 'WORKFLOW_DEFINITION'], 'http://loinc.org'=>['100018-1', '100029-8', '100213-8', '100214-6', '100215-3', '100225-2', '100226-0', '100227-8', '100228-6', '100229-4', '100231-0', '100282-3', '100349-0', '100369-8', '100438-1', '100439-9', '100440-7', '100441-5', '100442-3', '100443-1', '100444-9', '100445-6', '100446-4', '100447-2', '100448-0', '100449-8', '100450-6', '100451-4', '100452-2', '100453-0', '100454-8', '100455-5', '100456-3', '100457-1', '100458-9', '100459-7', '100460-5', '100461-3', '100462-1', '100463-9', '100464-7', '100465-4', '100466-2', '100467-0', '100468-8', '100469-6', '100470-4', '100471-2', '100472-0', '100473-8', '100474-6', '100475-3', '100476-1', '100477-9', '100478-7', '100479-5', '100480-3', '100481-1', '100482-9', '100483-7', '100484-5', '100485-2', '100486-0', '100487-8', '100488-6', '100489-4', '100490-2', '100491-0', '100492-8', '100493-6', '100494-4', '100495-1', '100496-9', '100497-7', '100498-5', '100499-3', '100500-8', '100501-6', '100502-4', '100503-2', '100504-0', '100505-7', '100506-5', '100507-3', '100508-1', '100509-9', '100510-7', '100511-5', '100512-3', '100513-1', '100514-9', '100515-6', '100516-4', '100517-2', '100518-0', '100519-8', '100520-6', '100521-4', '100522-2', '100523-0', '100524-8', '100525-5', '100526-3', '100527-1', '100528-9', '100529-7', '100530-5', '100531-3', '100532-1', '100533-9', '100534-7', '100535-4', '100536-2', '100537-0', '100538-8', '100539-6', '100540-4', '100541-2', '100542-0', '100543-8', '100544-6', '100545-3', '100546-1', '100547-9', '100548-7', '100549-5', '100550-3', '100551-1', '100552-9', '100553-7', '100554-5', '100555-2', '100556-0', '100557-8', '100558-6', '100559-4', '100560-2', '100561-0', '100562-8', '100563-6', '100564-4', '100565-1', '100566-9', '100567-7', '100568-5', '100569-3', '100570-1', '100571-9', '100572-7', '100573-5', '100574-3', '100575-0', '100576-8', '100577-6', '100578-4', '100579-2', '100580-0', '100581-8', '100582-6', '100583-4', '100584-2', '100585-9', '100586-7', '100587-5', '100588-3', '100589-1', '100590-9', '100591-7', '100592-5', '100593-3', '100594-1', '100595-8', '100596-6', '100597-4', '100598-2', '100599-0', '100600-6', '100601-4', '100602-2', '100603-0', '100604-8', '100605-5', '100606-3', '100607-1', '100608-9', '100609-7', '100610-5', '100611-3', '100612-1', '100613-9', '100614-7', '100615-4', '100616-2', '100617-0', '100618-8', '100619-6', '100620-4', '100621-2', '100622-0', '100623-8', '100624-6', '100625-3', '100626-1', '100627-9', '100628-7', '100629-5', '100630-3', '100631-1', '100632-9', '100633-7', '100634-5', '100635-2', '100636-0', '100637-8', '100638-6', '100639-4', '100640-2', '100641-0', '100642-8', '100643-6', '100644-4', '100645-1', '100646-9', '100647-7', '100648-5', '100649-3', '100650-1', '100651-9', '100655-0', '100656-8', '100657-6', '100658-4', '100659-2', '100660-0', '100661-8', '100697-2', '100698-0', '100718-6', '100719-4', '100720-2', '100721-0', '100722-8', '100723-6', '100724-4', '100725-1', '100726-9', '100727-7', '100728-5', '100729-3', '100730-1', '100731-9', '100736-8', '100754-1', '100760-8', '100761-6', '100852-3', '100853-1', '100875-4', '100876-2', '100877-0', '100878-8', '100879-6', '100880-4', '100881-2', '100882-0', '100883-8', '100884-6', '100966-1', '100967-9', '100991-9', '100992-7', '100993-5', '101005-7', '101006-5', '101007-3', '101008-1', '101009-9', '101010-7', '101011-5', '101012-3', '101013-1', '101014-9', '101015-6', '101016-4', '101017-2', '101018-0', '101019-8', '101020-6', '101021-4', '101022-2', '101023-0', '101024-8', '101025-5', '101026-3', '101027-1', '101028-9', '101029-7', '101030-5', '101031-3', '101032-1', '101033-9', '101034-7', '101035-4', '101036-2', '101037-0', '101038-8', '101039-6', '101040-4', '101041-2', '101042-0', '101043-8', '101044-6', '101045-3', '101046-1', '101047-9', '101048-7', '101049-5', '101050-3', '101051-1', '101052-9', '101053-7', '101054-5', '101055-2', '101056-0', '101057-8', '101058-6', '101059-4', '101117-0', '101118-8', '101119-6', '101133-7', '101134-5', '101135-2', '101136-0', '101141-0', '101152-7', '101224-4', '101301-0', '101350-7', '101377-0', '101378-8', '101379-6', '101380-4', '101381-2', '101382-0', '101383-8', '101384-6', '101385-3', '101386-1', '101387-9', '101388-7', '101389-5', '101390-3', '101391-1', '101392-9', '101393-7', '101395-2', '101396-0', '101397-8', '101405-9', '101468-7', '101507-2', '101541-1', '101566-8', '101567-6', '101577-5', '101578-3', '101579-1', '101580-9', '101581-7', '101582-5', '101630-2', '101631-0', '101633-6', '101634-4', '101635-1', '101636-9', '101637-7', '101638-5', '101639-3', '101640-1', '101641-9', '101651-8', '101657-5', '101663-3', '101664-1', '101671-6', '101682-3', '101787-0', '101788-8', '101792-0', '101820-9', '101823-3', '101881-1', '101884-5', '101885-2', '101886-0', '101887-8', '101888-6', '101889-4', '101890-2', '101891-0', '101892-8', '101893-6', '101894-4', '101895-1', '101896-9', '101897-7', '101898-5', '101899-3', '101900-9', '101901-7', '101904-1', '101920-7', '101952-0', '101953-8', '101954-6', '101955-3', '101956-1', '101957-9', '101958-7', '101959-5', '101960-3', '101961-1', '101962-9', '101963-7', '101964-5', '101965-2', '101994-2', '102009-8', '102036-1', '102039-5', '102086-6', '102089-0', '102091-6', '102099-9', '102100-5', '102101-3', '103140-0', '103144-2', '103145-9', '103146-7', '103147-5', '103228-3', '103229-1', '103230-9', '103231-7', '103232-5', '103233-3', '103234-1', '103235-8', '103236-6', '103237-4', '103238-2', '103239-0', '103240-8', '103241-6', '103242-4', '103243-2', '103244-0', '103245-7', '103246-5', '103247-3', '103248-1', '103249-9', '103250-7', '103251-5', '103252-3', '103253-1', '103254-9', '103255-6', '103256-4', '103257-2', '103258-0', '103259-8', '103260-6', '103261-4', '103262-2', '103263-0', '103264-8', '103265-5', '103266-3', '103267-1', '103268-9', '103269-7', '103270-5', '103271-3', '103272-1', '103273-9', '103274-7', '103275-4', '103276-2', '103277-0', '103278-8', '103279-6', '103280-4', '103281-2', '103282-0', '103283-8', '103284-6', '103285-3', '103286-1', '103287-9', '103288-7', '103289-5', '103290-3', '103291-1', '103292-9', '103293-7', '103294-5', '103295-2', '103296-0', '103297-8', '103298-6', '103299-4', '103300-0', '103301-8', '103302-6', '103303-4', '103304-2', '103305-9', '103306-7', '103307-5', '103308-3', '103309-1', '103310-9', '103311-7', '103312-5', '103313-3', '103314-1', '103315-8', '103316-6', '103317-4', '103318-2', '103319-0', '103320-8', '103321-6', '103322-4', '103323-2', '103324-0', '103325-7', '103326-5', '103327-3', '103328-1', '103329-9', '103330-7', '103331-5', '103332-3', '103333-1', '103334-9', '103335-6', '103336-4', '103337-2', '103338-0', '103339-8', '103340-6', '103341-4', '103342-2', '103343-0', '103344-8', '103345-5', '103346-3', '103347-1', '103348-9', '103349-7', '103350-5', '103351-3', '103352-1', '103353-9', '103354-7', '103355-4', '103356-2', '103357-0', '103358-8', '103359-6', '103360-4', '103361-2', '103362-0', '103363-8', '103364-6', '103365-3', '103366-1', '103367-9', '103368-7', '103369-5', '103370-3', '103371-1', '103372-9', '103373-7', '103374-5', '103375-2', '103376-0', '103377-8', '103378-6', '103379-4', '103380-2', '103381-0', '103382-8', '103383-6', '103384-4', '103385-1', '103386-9', '103387-7', '103388-5', '103389-3', '103390-1', '103391-9', '103392-7', '103393-5', '103394-3', '103395-0', '103396-8', '103397-6', '103398-4', '103399-2', '103400-8', '103401-6', '103402-4', '103403-2', '103404-0', '103405-7', '103406-5', '103407-3', '103408-1', '103409-9', '103410-7', '103411-5', '103412-3', '103413-1', '103414-9', '103415-6', '103416-4', '103417-2', '103418-0', '103419-8', '103420-6', '103421-4', '103422-2', '103423-0', '103424-8', '103425-5', '103426-3', '103427-1', '103428-9', '103429-7', '103430-5', '103431-3', '103432-1', '103433-9', '103434-7', '103435-4', '103436-2', '103437-0', '103438-8', '103439-6', '103440-4', '103441-2', '103442-0', '103443-8', '103444-6', '103445-3', '103446-1', '103447-9', '103448-7', '103449-5', '103450-3', '103451-1', '103452-9', '103453-7', '103454-5', '103455-2', '103456-0', '103457-8', '103458-6', '103459-4', '103460-2', '103461-0', '103462-8', '103463-6', '103464-4', '103465-1', '103466-9', '103467-7', '103468-5', '103469-3', '103470-1', '103471-9', '103472-7', '103473-5', '103474-3', '103475-0', '103476-8', '103477-6', '103478-4', '103479-2', '103480-0', '103481-8', '103482-6', '103483-4', '103484-2', '103485-9', '103486-7', '103487-5', '103488-3', '103489-1', '103490-9', '103491-7', '103492-5', '103493-3', '103494-1', '103495-8', '103496-6', '103497-4', '103498-2', '103499-0', '103500-5', '103501-3', '103502-1', '103503-9', '103504-7', '103505-4', '103506-2', '103507-0', '103508-8', '103509-6', '103510-4', '103511-2', '103512-0', '103513-8', '103514-6', '103515-3', '103516-1', '103517-9', '103518-7', '103519-5', '103520-3', '103521-1', '103522-9', '103523-7', '103524-5', '103525-2', '103526-0', '103527-8', '103528-6', '103529-4', '103530-2', '103531-0', '103532-8', '103533-6', '103534-4', '103535-1', '103536-9', '103537-7', '103538-5', '103539-3', '103540-1', '103541-9', '103543-5', '103544-3', '103545-0', '103546-8', '103547-6', '103548-4', '103549-2', '103550-0', '103551-8', '103552-6', '103553-4', '103554-2', '103558-3', '103591-4', '103592-2', '103595-5', '103596-3', '103597-1', '103621-9', '103677-1', '103678-9', '103680-5', '103727-4', '103728-2', '103729-0', '103730-8', '103731-6', '103732-4', '103733-2', '103734-0', '103735-7', '103736-5', '103737-3', '103738-1', '103739-9', '103740-7', '103741-5', '103742-3', '103743-1', '103751-4', '103788-6', '103792-8', '103793-6', '103794-4', '103795-1', '103796-9', '103797-7', '103798-5', '103799-3', '103800-9', '103801-7', '103802-5', '103803-3', '103804-1', '103805-8', '103806-6', '103807-4', '103808-2', '103809-0', '103813-2', '103816-5', '103817-3', '103818-1', '103819-9', '103820-7', '103821-5', '103822-3', '103823-1', '103824-9', '103825-6', '103826-4', '103827-2', '103844-7', '103848-8', '103849-6', '103850-4', '103851-2', '103852-0', '103853-8', '103854-6', '103855-3', '103856-1', '103857-9', '103858-7', '103859-5', '103860-3', '103861-1', '103862-9', '103863-7', '103864-5', '103865-2', '103866-0', '103867-8', '103868-6', '103869-4', '103870-2', '103871-0', '103872-8', '103873-6', '103874-4', '103875-1', '103876-9', '103877-7', '103878-5', '103879-3', '103880-1', '103881-9', '103882-7', '103883-5', '103884-3', '103885-0', '103886-8', '103887-6', '103888-4', '103889-2', '103890-0', '103891-8', '103892-6', '103893-4', '103894-2', '103895-9', '103896-7', '103897-5', '103898-3', '103899-1', '103900-7', '103901-5', '103902-3', '103903-1', '103904-9', '103905-6', '103906-4', '103907-2', '103908-0', '103909-8', '103910-6', '103911-4', '103912-2', '103913-0', '103914-8', '103915-5', '103916-3', '103917-1', '103918-9', '103919-7', '103920-5', '103921-3', '103922-1', '103923-9', '103924-7', '103925-4', '103926-2', '103927-0', '103928-8', '103944-5', '103945-2', '103950-2', '103951-0', '103952-8', '103953-6', '103954-4', '103955-1', '103956-9', '103957-7', '103964-3', '103965-0', '103966-8', '103967-6', '103968-4', '103969-2', '103970-0', '103971-8', '103972-6', '104062-5', '104065-8', '104066-6', '104067-4', '104068-2', '104069-0', '104070-8', '104071-6', '104121-9', '104122-7', '104123-5', '104124-3', '104125-0', '104126-8', '104128-4', '104129-2', '104130-0', '104131-8', '104144-1', '104167-2', '104168-0', '104169-8', '104198-7', '104199-5', '104200-1', '104211-8', '104212-6', '104213-4', '104214-2', '104215-9', '104216-7', '104238-1', '104239-9', '104240-7', '104241-5', '104242-3', '104268-8', '104289-4', '104323-1', '104391-8', '104483-3', '104484-1', '104485-8', '104486-6', '104487-4', '104488-2', '104489-0', '104530-1', '104531-9', '104577-2', '104578-0', '104579-8', '104580-6', '104581-4', '104582-2', '104583-0', '104584-8', '104585-5', '104586-3', '104587-1', '104588-9', '104589-7', '104590-5', '104591-3', '104592-1']}, 'type'=>'CodeableConcept', 'path'=>'Composition.category', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/referenced-item-category'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Composition.subject', 'min'=>0, 'max'=>Float::INFINITY},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'type'=>'Reference', 'path'=>'Composition.encounter', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'Composition.date', 'min'=>1, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'Composition.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Composition.author', 'min'=>1, 'max'=>Float::INFINITY},
        'name' => {'type'=>'string', 'path'=>'Composition.name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'Composition.title', 'min'=>1, 'max'=>1},
        'note' => {'type'=>'Annotation', 'path'=>'Composition.note', 'min'=>0, 'max'=>Float::INFINITY},
        'attester' => {'type'=>'Composition::Attester', 'path'=>'Composition.attester', 'min'=>0, 'max'=>Float::INFINITY},
        'custodian' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Composition.custodian', 'min'=>0, 'max'=>1},
        'relatesTo' => {'type'=>'RelatedArtifact', 'path'=>'Composition.relatesTo', 'min'=>0, 'max'=>Float::INFINITY},
        'event' => {'type'=>'Composition::Event', 'path'=>'Composition.event', 'min'=>0, 'max'=>Float::INFINITY},
        'section' => {'type'=>'Composition::Section', 'path'=>'Composition.section', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Attester < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Attester.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Attester.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Attester.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'mode' => {'valid_codes'=>{'http://hl7.org/fhir/composition-attestation-mode'=>['personal', 'professional', 'legal', 'official']}, 'type'=>'CodeableConcept', 'path'=>'Attester.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/composition-attestation-mode'}},
          'time' => {'type'=>'dateTime', 'path'=>'Attester.time', 'min'=>0, 'max'=>1},
          'party' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Attester.party', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :mode              # 1-1 CodeableConcept
        attr_accessor :time              # 0-1 dateTime
        attr_accessor :party             # 0-1 Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Organization)
      end

      class Event < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Event.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Event.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Event.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'period' => {'type'=>'Period', 'path'=>'Event.period', 'min'=>0, 'max'=>1},
          'detail' => {'type'=>'CodeableReference', 'path'=>'Event.detail', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :period            # 0-1 Period
        attr_accessor :detail            # 0-* [ CodeableReference ]
      end

      class Section < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Section.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Section.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Section.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'title' => {'type'=>'string', 'path'=>'Section.title', 'min'=>0, 'max'=>1},
          'code' => {'valid_codes'=>{'http://loinc.org'=>['10154-3', '10157-6', '10160-0', '10164-2', '10183-2', '10184-0', '10187-3', '10210-3', '10216-0', '10218-6', '10223-6', '10222-8', '11329-0', '11348-0', '11369-6', '57852-6', '11493-4', '11535-2', '11537-8', '18776-5', '18841-7', '29299-5', '29545-1', '29549-3', '29554-3', '29762-2', '30954-2', '42344-2', '42346-7', '42348-3', '42349-1', '46240-8', '46241-6', '46264-8', '47420-5', '47519-4', '48765-2', '48768-6', '51848-0', '55109-3', '55122-6', '59768-2', '59769-0', '59770-8', '59771-6', '59772-4', '59773-2', '59775-7', '59776-5', '61149-1', '61150-9', '69730-0', '8648-8', '8653-8', '8716-3']}, 'type'=>'CodeableConcept', 'path'=>'Section.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/doc-section-codes'}},
          'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Section.author', 'min'=>0, 'max'=>Float::INFINITY},
          'focus' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Section.focus', 'min'=>0, 'max'=>1},
          'text' => {'type'=>'Narrative', 'path'=>'Section.text', 'min'=>0, 'max'=>1},
          'orderedBy' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/list-order'=>['user', 'system', 'event-date', 'entry-date', 'priority', 'alphabetic', 'category', 'patient']}, 'type'=>'CodeableConcept', 'path'=>'Section.orderedBy', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/list-order'}},
          'entry' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Section.entry', 'min'=>0, 'max'=>Float::INFINITY},
          'emptyReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/list-empty-reason'=>['nilknown', 'notasked', 'withheld', 'unavailable', 'notstarted', 'closed']}, 'type'=>'CodeableConcept', 'path'=>'Section.emptyReason', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/list-empty-reason'}},
          'section' => {'type'=>'Composition::Section', 'path'=>'Section.section', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :title             # 0-1 string
        attr_accessor :code              # 0-1 CodeableConcept
        attr_accessor :author            # 0-* [ Reference(Practitioner|PractitionerRole|Device|Patient|RelatedPerson|Organization) ]
        attr_accessor :focus             # 0-1 Reference(Resource)
        attr_accessor :text              # 0-1 Narrative
        attr_accessor :orderedBy         # 0-1 CodeableConcept
        attr_accessor :entry             # 0-* [ Reference(Resource) ]
        attr_accessor :emptyReason       # 0-1 CodeableConcept
        attr_accessor :section           # 0-* [ Composition::Section ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :url               # 0-1 uri
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :version           # 0-1 string
      attr_accessor :status            # 1-1 code
      attr_accessor :type              # 1-1 CodeableConcept
      attr_accessor :category          # 0-* [ CodeableConcept ]
      attr_accessor :subject           # 0-* [ Reference(Resource) ]
      attr_accessor :encounter         # 0-1 Reference(Encounter)
      attr_accessor :date              # 1-1 dateTime
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :author            # 1-* [ Reference(Practitioner|PractitionerRole|Device|Patient|RelatedPerson|Organization) ]
      attr_accessor :name              # 0-1 string
      attr_accessor :title             # 1-1 string
      attr_accessor :note              # 0-* [ Annotation ]
      attr_accessor :attester          # 0-* [ Composition::Attester ]
      attr_accessor :custodian         # 0-1 Reference(Organization)
      attr_accessor :relatesTo         # 0-* [ RelatedArtifact ]
      attr_accessor :event             # 0-* [ Composition::Event ]
      attr_accessor :section           # 0-* [ Composition::Section ]

      def resourceType
        'Composition'
      end
    end
  end
end