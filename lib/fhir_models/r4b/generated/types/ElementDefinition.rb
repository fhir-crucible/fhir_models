module FHIR
  module R4B
    class ElementDefinition < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      MULTIPLE_TYPES = {
        'defaultValue' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage'],
        'fixed' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage'],
        'pattern' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage'],
        'minValue' => ['date', 'dateTime', 'instant', 'time', 'decimal', 'integer', 'positiveInt', 'unsignedInt', 'Quantity'],
        'maxValue' => ['date', 'dateTime', 'instant', 'time', 'decimal', 'integer', 'positiveInt', 'unsignedInt', 'Quantity']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'ElementDefinition.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'ElementDefinition._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'ElementDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ElementDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'path' => {'type'=>'string', 'path'=>'ElementDefinition.path', 'min'=>1, 'max'=>1},
        '_path' => {'type'=>'Element', 'path'=>'ElementDefinition._path', 'min'=>0, 'max'=>1},
        'representation' => {'valid_codes'=>{'http://hl7.org/fhir/property-representation'=>['xmlAttr', 'xmlText', 'typeAttr', 'cdaText', 'xhtml']}, 'type'=>'code', 'path'=>'ElementDefinition.representation', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/property-representation'}},
        '_representation' => {'type'=>'Element', 'path'=>'ElementDefinition._representation', 'min'=>0, 'max'=>Float::INFINITY},
        'sliceName' => {'type'=>'string', 'path'=>'ElementDefinition.sliceName', 'min'=>0, 'max'=>1},
        '_sliceName' => {'type'=>'Element', 'path'=>'ElementDefinition._sliceName', 'min'=>0, 'max'=>1},
        'sliceIsConstraining' => {'type'=>'boolean', 'path'=>'ElementDefinition.sliceIsConstraining', 'min'=>0, 'max'=>1},
        '_sliceIsConstraining' => {'type'=>'Element', 'path'=>'ElementDefinition._sliceIsConstraining', 'min'=>0, 'max'=>1},
        'label' => {'type'=>'string', 'path'=>'ElementDefinition.label', 'min'=>0, 'max'=>1},
        '_label' => {'type'=>'Element', 'path'=>'ElementDefinition._label', 'min'=>0, 'max'=>1},
        'code' => {'valid_codes'=>{'http://loinc.org'=>['1-8', '10-9', '100-8', '1000-9', '10000-8', '100002-5', '100003-3', '100004-1', '100005-8', '100006-6', '100007-4', '100008-2', '100009-0', '10001-6', '100010-8', '100011-6', '100012-4', '100013-2', '100014-0', '100015-7', '100016-5', '100017-3', '100018-1', '100019-9', '10002-4', '100020-7', '100021-5', '100022-3', '100023-1', '100024-9', '100025-6', '100026-4', '100027-2', '100028-0', '100029-8', '10003-2', '100030-6', '100031-4', '100032-2', '100033-0', '100034-8', '100035-5', '100036-3', '100037-1', '100038-9', '100039-7', '10004-0', '100040-5', '100041-3', '100042-1', '100043-9', '100044-7', '100045-4', '100046-2', '100047-0', '100048-8', '100049-6', '10005-7', '100050-4', '100051-2', '100052-0', '100053-8', '100054-6', '100055-3', '100056-1', '100057-9', '100058-7', '100059-5', '10006-5', '100060-3', '100061-1', '100062-9', '100063-7', '100064-5', '100065-2', '100066-0', '100067-8', '100068-6', '100069-4', '10007-3', '100070-2', '100071-0', '100072-8', '100073-6', '100074-4', '100075-1', '100076-9', '100077-7', '100078-5', '100079-3', '10008-1', '100080-1', '100081-9', '100082-7', '100083-5', '100084-3', '100085-0', '100086-8', '100087-6', '100088-4', '100089-2', '10009-9', '100090-0', '100091-8', '100092-6', '100093-4', '100094-2', '100095-9', '100096-7', '100097-5', '100098-3', '100099-1', '1001-7', '10010-7', '100100-7', '100101-5', '100102-3', '100103-1', '100104-9', '100105-6', '100106-4', '100107-2', '100108-0', '100109-8', '10011-5', '100110-6', '100111-4', '100112-2', '100113-0', '100114-8', '100115-5', '100116-3', '100117-1', '100118-9', '100119-7', '10012-3', '100120-5', '100121-3', '100122-1', '100123-9', '100124-7', '100125-4', '100126-2', '100127-0', '100128-8', '100129-6', '10013-1', '100130-4', '100131-2', '100132-0', '100133-8', '100134-6', '100135-3', '100136-1', '100137-9', '100138-7', '100139-5', '10014-9', '100140-3', '100141-1', '100142-9', '100143-7', '100144-5', '100145-2', '100146-0', '100147-8', '100148-6', '100149-4', '10015-6', '100150-2', '100151-0', '100152-8', '100153-6', '100154-4', '100155-1', '100156-9', '100157-7', '10016-4', '10017-2', '10018-0', '10019-8', '1002-5', '10020-6', '10021-4', '10022-2', '10023-0', '10024-8', '10025-5', '10026-3', '10027-1', '10028-9', '10029-7', '1003-3', '10030-5', '10031-3', '10032-1', '10033-9', '10034-7', '10035-4', '10036-2', '10037-0', '10038-8', '10039-6', '1004-1', '10040-4', '10041-2', '10042-0', '10043-8', '10044-6', '10045-3', '10046-1', '10047-9', '10048-7', '10049-5', '1005-8', '10050-3', '10051-1', '10052-9', '10053-7', '10054-5', '10055-2', '10056-0', '10057-8', '10058-6', '10059-4', '1006-6', '10060-2', '10061-0', '10062-8', '10063-6', '10064-4', '10065-1', '10066-9', '10067-7', '10068-5', '10069-3', '1007-4', '10070-1', '10071-9', '10072-7', '10073-5', '10074-3', '10075-0', '10076-8', '10077-6', '10078-4', '10079-2', '1008-2', '10080-0', '10081-8', '10082-6', '10083-4', '10084-2', '10085-9', '10086-7', '10087-5', '10088-3', '10089-1', '1009-0', '10090-9', '10091-7', '10092-5', '10093-3', '10094-1', '10095-8', '10096-6', '10097-4', '10098-2', '10099-0', '101-6', '1010-8', '10100-6', '10101-4', '10102-2', '10103-0', '10104-8', '10105-5', '10106-3', '10107-1', '10108-9', '10109-7', '1011-6', '10110-5', '10111-3', '10112-1', '10113-9', '10114-7', '10115-4', '10116-2', '10117-0', '10118-8', '10119-6', '1012-4', '10120-4', '10121-2', '10122-0', '10123-8', '10124-6', '10125-3', '10126-1', '10127-9', '10128-7', '10129-5', '1013-2', '10130-3', '10131-1', '10132-9', '10133-7', '10134-5', '10135-2', '10136-0', '10137-8', '10138-6', '10139-4', '1014-0', '10140-2', '10141-0', '10142-8', '10143-6', '10144-4', '10145-1', '10146-9', '10147-7', '10148-5', '10149-3', '1015-7', '10150-1', '10151-9', '10152-7', '10153-5', '10154-3', '10155-0', '10156-8', '10157-6', '10158-4', '10159-2', '1016-5', '10160-0', '10161-8', '10162-6', '10163-4', '10164-2', '10165-9', '10166-7', '10167-5', '10168-3', '10169-1', '1017-3', '10170-9', '10171-7', '10172-5', '10173-3', '10174-1', '10175-8', '10176-6', '10177-4', '10178-2', '10179-0', '1018-1', '10180-8', '10181-6', '10182-4', '10183-2', '10184-0', '10185-7', '10186-5', '10187-3', '10188-1', '10189-9', '1019-9', '10190-7', '10191-5', '10192-3', '10193-1', '10194-9', '10195-6', '10196-4', '10197-2', '10198-0', '10199-8', '102-4', '1020-7', '10200-4', '10201-2', '10202-0', '10203-8', '10204-6', '10205-3', '10206-1', '10207-9', '10208-7', '10209-5', '1021-5', '10210-3', '10211-1', '10212-9', '10213-7', '10214-5', '10215-2', '10216-0', '10217-8', '10218-6', '10219-4', '1022-3', '10220-2', '10221-0', '10222-8', '10223-6', '10224-4', '10225-1', '10226-9', '10227-7', '10228-5', '10229-3', '1023-1', '10230-1', '10231-9', '10232-7', '10233-5', '10234-3', '10235-0', '10236-8', '10237-6', '10238-4', '10239-2', '1024-9', '10240-0', '10241-8', '10242-6', '10243-4', '10244-2', '10245-9', '10246-7', '10247-5', '10248-3', '10249-1', '1025-6', '10250-9', '10251-7', '10252-5', '10253-3', '10254-1', '10255-8', '10256-6', '10257-4', '10258-2', '10259-0', '1026-4', '10260-8', '10261-6', '10262-4', '10263-2', '10264-0', '10265-7', '10266-5', '10267-3', '10268-1', '10269-9', '1027-2', '10270-7', '10271-5', '10272-3', '10273-1', '10274-9', '10275-6', '10276-4', '10277-2', '10278-0', '10279-8', '1028-0', '10280-6', '10281-4', '10282-2', '10283-0', '10284-8', '10285-5', '10286-3', '10287-1', '10288-9', '10289-7', '1029-8', '10290-5', '10291-3', '10292-1', '10293-9', '10294-7', '10295-4', '10296-2', '10297-0', '10298-8', '10299-6', '103-2', '1030-6', '10300-2', '10301-0', '10302-8', '10303-6', '10304-4', '10305-1', '10306-9', '10307-7', '10308-5', '10309-3', '1031-4', '10310-1', '10311-9', '10312-7', '10313-5', '10314-3', '10315-0', '10316-8', '10317-6', '10318-4', '10319-2', '1032-2', '10320-0', '10321-8', '10322-6', '10323-4', '10324-2', '10325-9', '10326-7', '10327-5', '10328-3', '10329-1', '1033-0', '10330-9', '10331-7', '10332-5', '10333-3', '10334-1', '10335-8', '10336-6', '10337-4', '10338-2', '10339-0', '1034-8', '10340-8', '10341-6', '10342-4', '10343-2', '10344-0', '10345-7', '10346-5', '10347-3', '10348-1', '10349-9', '1035-5', '10350-7', '10351-5', '10352-3', '10353-1', '10354-9', '10355-6', '10356-4', '10357-2', '10358-0', '10359-8', '1036-3', '10360-6', '10361-4', '10362-2', '10363-0', '10364-8', '10365-5', '10366-3', '10367-1', '10368-9', '10369-7', '1037-1', '10370-5', '10371-3', '10372-1', '10373-9', '10374-7', '10375-4', '10376-2', '10377-0', '10378-8', '10379-6', '1038-9', '10380-4', '10381-2', '10382-0', '10383-8', '10384-6', '10385-3', '10386-1', '10387-9', '10388-7', '10389-5', '1039-7', '10390-3', '10391-1', '10392-9', '10393-7', '10394-5', '10395-2', '10396-0', '10397-8', '10398-6', '10399-4', '104-0', '1040-5', '10400-0', '10401-8', '10402-6', '10403-4', '10404-2', '10405-9', '10406-7', '10407-5', '10408-3', '10409-1', '1041-3', '10410-9', '10411-7', '10412-5', '10413-3', '10414-1', '10415-8', '10416-6', '10417-4', '10418-2', '10419-0', '1042-1', '10420-8', '10421-6', '10422-4', '10423-2', '10424-0', '10425-7', '10426-5', '10427-3', '10428-1', '10429-9', '1043-9', '10430-7', '10431-5', '10432-3', '10433-1', '10434-9', '10435-6', '10436-4', '10437-2', '10438-0', '10439-8', '1044-7', '10440-6', '10441-4', '10442-2', '10443-0', '10444-8', '10445-5', '10446-3', '10447-1', '10448-9', '10449-7', '1045-4', '10450-5', '10451-3', '10452-1', '10453-9', '10454-7', '10455-4', '10456-2', '10457-0', '10458-8', '10459-6', '1046-2', '10460-4', '10461-2', '10462-0', '10463-8', '10464-6', '10465-3', '10466-1', '10467-9', '10468-7', '10469-5', '1047-0', '10470-3', '10471-1', '10472-9', '10473-7', '10474-5', '10475-2', '10476-0', '10477-8', '10478-6', '10479-4', '1048-8', '10480-2', '10481-0', '10482-8', '10483-6', '10484-4', '10485-1', '10486-9', '10487-7', '10488-5', '10489-3', '1049-6', '10490-1', '10491-9', '10492-7', '10493-5', '10494-3', '10495-0', '10496-8', '10497-6', '10498-4', '10499-2', '105-7', '1050-4', '10500-7', '10501-5', '10502-3', '10503-1', '10504-9', '10505-6', '10506-4', '10507-2', '10508-0', '10509-8', '1051-2', '10510-6', '10511-4', '10512-2', '10513-0', '10514-8', '10515-5', '10516-3', '10517-1', '10518-9', '10519-7', '1052-0', '10520-5', '10521-3', '10522-1', '10523-9', '10524-7', '10525-4', '10526-2', '10527-0', '10528-8', '10529-6', '1053-8', '10530-4', '10531-2', '10532-0', '10533-8', '10534-6', '10535-3', '10536-1', '10537-9', '10538-7', '10539-5', '1054-6', '10540-3', '10541-1', '10542-9', '10543-7', '10544-5', '10545-2', '10546-0', '10547-8', '10548-6', '10549-4', '1055-3', '10550-2', '10551-0', '10552-8', '10553-6', '10554-4', '10555-1', '10556-9', '10557-7', '10558-5', '10559-3', '1056-1', '10560-1', '10561-9', '10562-7', '10563-5', '10564-3', '10565-0', '10566-8', '10567-6', '10568-4', '10569-2', '1057-9', '10570-0', '10571-8', '10572-6', '10573-4', '10574-2', '10575-9', '10576-7', '10577-5', '10578-3', '10579-1', '1058-7', '10580-9', '10581-7', '10582-5', '10583-3', '10584-1', '10585-8', '10586-6', '10587-4', '10588-2', '10589-0', '1059-5', '10590-8', '10591-6', '10592-4', '10593-2', '10594-0', '10595-7', '10596-5', '10597-3', '10598-1', '10599-9', '106-5', '1060-3', '10600-5', '10601-3', '10602-1', '10603-9', '10604-7', '10605-4', '10606-2', '10607-0', '10608-8', '10609-6', '1061-1', '10610-4', '10611-2', '10612-0', '10613-8', '10614-6', '10615-3', '10616-1', '10617-9', '10618-7', '10619-5', '1062-9', '10620-3', '10621-1', '10622-9', '10623-7', '10624-5', '10625-2', '10626-0', '10627-8', '10628-6', '10629-4', '1063-7', '10630-2', '10631-0', '10632-8', '10633-6', '10634-4', '10635-1', '10636-9', '10637-7', '10638-5', '10639-3', '1064-5', '10640-1', '10641-9', '10642-7', '10643-5', '10644-3', '10645-0', '10646-8', '10647-6', '10648-4', '10649-2', '1065-2', '10650-0', '10651-8', '10652-6', '10653-4', '10654-2', '10655-9', '10656-7', '10657-5', '10658-3', '10659-1', '1066-0', '10660-9', '10661-7', '10662-5', '10663-3', '10664-1', '10665-8', '10666-6', '10667-4', '10668-2', '10669-0', '1067-8', '10670-8', '10671-6', '10672-4', '10673-2', '10674-0', '10675-7', '10676-5', '10677-3', '10678-1', '10679-9', '1068-6', '10680-7', '10681-5', '10682-3', '10683-1', '10684-9', '10685-6', '10686-4', '10687-2', '10688-0', '10689-8', '1069-4', '10690-6', '10691-4', '10692-2', '10693-0', '10694-8', '10695-5', '10696-3', '10697-1', '10698-9', '10699-7', '107-3', '1070-2', '10700-3', '10701-1', '10702-9', '10703-7', '10704-5', '10705-2', '10706-0', '10707-8', '10708-6', '10709-4', '1071-0', '10710-2', '10711-0', '10712-8', '10713-6', '10714-4', '10715-1', '10716-9', '10717-7', '10718-5', '10719-3', '1072-8', '10720-1', '10721-9', '10722-7', '10723-5', '10724-3', '10725-0', '10726-8', '10727-6', '10728-4', '10729-2', '1073-6', '10730-0', '10731-8', '10732-6', '10733-4', '10734-2', '10735-9', '10736-7', '10737-5', '10738-3', '10739-1', '1074-4', '10740-9', '10741-7', '10742-5', '10743-3', '10744-1', '10745-8', '10746-6', '10747-4', '10748-2', '10749-0', '1075-1', '10750-8', '10751-6', '10752-4', '10753-2', '10754-0', '10755-7', '10756-5', '10757-3']}, 'type'=>'Coding', 'path'=>'ElementDefinition.code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/observation-codes'}},
        'slicing' => {'type'=>'ElementDefinition::Slicing', 'path'=>'ElementDefinition.slicing', 'min'=>0, 'max'=>1},
        'short' => {'type'=>'string', 'path'=>'ElementDefinition.short', 'min'=>0, 'max'=>1},
        '_short' => {'type'=>'Element', 'path'=>'ElementDefinition._short', 'min'=>0, 'max'=>1},
        'definition' => {'type'=>'markdown', 'path'=>'ElementDefinition.definition', 'min'=>0, 'max'=>1},
        '_definition' => {'type'=>'Element', 'path'=>'ElementDefinition._definition', 'min'=>0, 'max'=>1},
        'comment' => {'type'=>'markdown', 'path'=>'ElementDefinition.comment', 'min'=>0, 'max'=>1},
        '_comment' => {'type'=>'Element', 'path'=>'ElementDefinition._comment', 'min'=>0, 'max'=>1},
        'requirements' => {'type'=>'markdown', 'path'=>'ElementDefinition.requirements', 'min'=>0, 'max'=>1},
        '_requirements' => {'type'=>'Element', 'path'=>'ElementDefinition._requirements', 'min'=>0, 'max'=>1},
        'alias' => {'type'=>'string', 'path'=>'ElementDefinition.alias', 'min'=>0, 'max'=>Float::INFINITY},
        '_alias' => {'type'=>'Element', 'path'=>'ElementDefinition._alias', 'min'=>0, 'max'=>Float::INFINITY},
        'min' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.min', 'min'=>0, 'max'=>1},
        '_min' => {'type'=>'Element', 'path'=>'ElementDefinition._min', 'min'=>0, 'max'=>1},
        'max' => {'type'=>'string', 'path'=>'ElementDefinition.max', 'min'=>0, 'max'=>1},
        '_max' => {'type'=>'Element', 'path'=>'ElementDefinition._max', 'min'=>0, 'max'=>1},
        'base' => {'type'=>'ElementDefinition::Base', 'path'=>'ElementDefinition.base', 'min'=>0, 'max'=>1},
        'contentReference' => {'type'=>'uri', 'path'=>'ElementDefinition.contentReference', 'min'=>0, 'max'=>1},
        '_contentReference' => {'type'=>'Element', 'path'=>'ElementDefinition._contentReference', 'min'=>0, 'max'=>1},
        'type' => {'type'=>'ElementDefinition::Type', 'path'=>'ElementDefinition.type', 'min'=>0, 'max'=>Float::INFINITY},
        'defaultValueBase64Binary' => {'type'=>'base64Binary', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueBase64Binary' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueBoolean' => {'type'=>'boolean', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueBoolean' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueCanonical' => {'type'=>'canonical', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueCanonical' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueCode' => {'type'=>'code', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueCode' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueDate' => {'type'=>'date', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueDate' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueDateTime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueDateTime' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueDecimal' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueId' => {'type'=>'id', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueId' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueInstant' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueInteger' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueMarkdown' => {'type'=>'markdown', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueMarkdown' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueOid' => {'type'=>'oid', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueOid' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValuePositiveInt' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValuePositiveInt' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueString' => {'type'=>'string', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueString' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueTime' => {'type'=>'time', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueTime' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueUnsignedInt' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueUri' => {'type'=>'uri', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueUri' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueUrl' => {'type'=>'url', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueUrl' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueUuid' => {'type'=>'uuid', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        '_defaultValueUuid' => {'type'=>'Element', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueAddress' => {'type'=>'Address', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueAge' => {'type'=>'Age', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueAnnotation' => {'type'=>'Annotation', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueAttachment' => {'type'=>'Attachment', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueCodeableReference' => {'type'=>'CodeableReference', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueCoding' => {'type'=>'Coding', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueContactPoint' => {'type'=>'ContactPoint', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueCount' => {'type'=>'Count', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueDistance' => {'type'=>'Distance', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueDuration' => {'type'=>'Duration', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueHumanName' => {'type'=>'HumanName', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueIdentifier' => {'type'=>'Identifier', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueMoney' => {'type'=>'Money', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValuePeriod' => {'type'=>'Period', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueRange' => {'type'=>'Range', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueRatio' => {'type'=>'Ratio', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueRatioRange' => {'type'=>'RatioRange', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueReference' => {'type'=>'Reference', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueSampledData' => {'type'=>'SampledData', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueSignature' => {'type'=>'Signature', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueTiming' => {'type'=>'Timing', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueContactDetail' => {'type'=>'ContactDetail', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueContributor' => {'type'=>'Contributor', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueDataRequirement' => {'type'=>'DataRequirement', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueExpression' => {'type'=>'Expression', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueParameterDefinition' => {'type'=>'ParameterDefinition', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueRelatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueTriggerDefinition' => {'type'=>'TriggerDefinition', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueUsageContext' => {'type'=>'UsageContext', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'defaultValueDosage' => {'type'=>'Dosage', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
        'meaningWhenMissing' => {'type'=>'markdown', 'path'=>'ElementDefinition.meaningWhenMissing', 'min'=>0, 'max'=>1},
        '_meaningWhenMissing' => {'type'=>'Element', 'path'=>'ElementDefinition._meaningWhenMissing', 'min'=>0, 'max'=>1},
        'orderMeaning' => {'type'=>'string', 'path'=>'ElementDefinition.orderMeaning', 'min'=>0, 'max'=>1},
        '_orderMeaning' => {'type'=>'Element', 'path'=>'ElementDefinition._orderMeaning', 'min'=>0, 'max'=>1},
        'fixedBase64Binary' => {'type'=>'base64Binary', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedBase64Binary' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedBoolean' => {'type'=>'boolean', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedBoolean' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedCanonical' => {'type'=>'canonical', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedCanonical' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedCode' => {'type'=>'code', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedCode' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedDate' => {'type'=>'date', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedDate' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedDateTime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedDateTime' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedDecimal' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedId' => {'type'=>'id', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedId' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedInstant' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedInteger' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedMarkdown' => {'type'=>'markdown', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedMarkdown' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedOid' => {'type'=>'oid', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedOid' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedPositiveInt' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedPositiveInt' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedString' => {'type'=>'string', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedString' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedTime' => {'type'=>'time', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedTime' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedUnsignedInt' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedUri' => {'type'=>'uri', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedUri' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedUrl' => {'type'=>'url', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedUrl' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedUuid' => {'type'=>'uuid', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        '_fixedUuid' => {'type'=>'Element', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedAddress' => {'type'=>'Address', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedAge' => {'type'=>'Age', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedAnnotation' => {'type'=>'Annotation', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedAttachment' => {'type'=>'Attachment', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedCodeableReference' => {'type'=>'CodeableReference', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedCoding' => {'type'=>'Coding', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedContactPoint' => {'type'=>'ContactPoint', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedCount' => {'type'=>'Count', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedDistance' => {'type'=>'Distance', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedDuration' => {'type'=>'Duration', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedHumanName' => {'type'=>'HumanName', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedIdentifier' => {'type'=>'Identifier', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedMoney' => {'type'=>'Money', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedPeriod' => {'type'=>'Period', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedRange' => {'type'=>'Range', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedRatio' => {'type'=>'Ratio', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedRatioRange' => {'type'=>'RatioRange', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedReference' => {'type'=>'Reference', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedSampledData' => {'type'=>'SampledData', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedSignature' => {'type'=>'Signature', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedTiming' => {'type'=>'Timing', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedContactDetail' => {'type'=>'ContactDetail', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedContributor' => {'type'=>'Contributor', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedDataRequirement' => {'type'=>'DataRequirement', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedExpression' => {'type'=>'Expression', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedParameterDefinition' => {'type'=>'ParameterDefinition', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedRelatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedTriggerDefinition' => {'type'=>'TriggerDefinition', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedUsageContext' => {'type'=>'UsageContext', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'fixedDosage' => {'type'=>'Dosage', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
        'patternBase64Binary' => {'type'=>'base64Binary', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternBase64Binary' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternBoolean' => {'type'=>'boolean', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternBoolean' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternCanonical' => {'type'=>'canonical', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternCanonical' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternCode' => {'type'=>'code', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternCode' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternDate' => {'type'=>'date', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternDate' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternDateTime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternDateTime' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternDecimal' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternId' => {'type'=>'id', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternId' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternInstant' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternInteger' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternMarkdown' => {'type'=>'markdown', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternMarkdown' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternOid' => {'type'=>'oid', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternOid' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternPositiveInt' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternPositiveInt' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternString' => {'type'=>'string', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternString' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternTime' => {'type'=>'time', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternTime' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternUnsignedInt' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternUri' => {'type'=>'uri', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternUri' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternUrl' => {'type'=>'url', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternUrl' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternUuid' => {'type'=>'uuid', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        '_patternUuid' => {'type'=>'Element', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternAddress' => {'type'=>'Address', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternAge' => {'type'=>'Age', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternAnnotation' => {'type'=>'Annotation', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternAttachment' => {'type'=>'Attachment', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternCodeableReference' => {'type'=>'CodeableReference', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternCoding' => {'type'=>'Coding', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternContactPoint' => {'type'=>'ContactPoint', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternCount' => {'type'=>'Count', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternDistance' => {'type'=>'Distance', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternDuration' => {'type'=>'Duration', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternHumanName' => {'type'=>'HumanName', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternIdentifier' => {'type'=>'Identifier', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternMoney' => {'type'=>'Money', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternPeriod' => {'type'=>'Period', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternRange' => {'type'=>'Range', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternRatio' => {'type'=>'Ratio', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternRatioRange' => {'type'=>'RatioRange', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternReference' => {'type'=>'Reference', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternSampledData' => {'type'=>'SampledData', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternSignature' => {'type'=>'Signature', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternTiming' => {'type'=>'Timing', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternContactDetail' => {'type'=>'ContactDetail', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternContributor' => {'type'=>'Contributor', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternDataRequirement' => {'type'=>'DataRequirement', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternExpression' => {'type'=>'Expression', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternParameterDefinition' => {'type'=>'ParameterDefinition', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternRelatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternTriggerDefinition' => {'type'=>'TriggerDefinition', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternUsageContext' => {'type'=>'UsageContext', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'patternDosage' => {'type'=>'Dosage', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
        'example' => {'type'=>'ElementDefinition::Example', 'path'=>'ElementDefinition.example', 'min'=>0, 'max'=>Float::INFINITY},
        'minValueDate' => {'type'=>'date', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        '_minValueDate' => {'type'=>'Element', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        'minValueDateTime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        '_minValueDateTime' => {'type'=>'Element', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        'minValueInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        '_minValueInstant' => {'type'=>'Element', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        'minValueTime' => {'type'=>'time', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        '_minValueTime' => {'type'=>'Element', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        'minValueDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        '_minValueDecimal' => {'type'=>'Element', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        'minValueInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        '_minValueInteger' => {'type'=>'Element', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        'minValuePositiveInt' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        '_minValuePositiveInt' => {'type'=>'Element', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        'minValueUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        '_minValueUnsignedInt' => {'type'=>'Element', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        'minValueQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
        'maxValueDate' => {'type'=>'date', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        '_maxValueDate' => {'type'=>'Element', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        'maxValueDateTime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        '_maxValueDateTime' => {'type'=>'Element', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        'maxValueInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        '_maxValueInstant' => {'type'=>'Element', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        'maxValueTime' => {'type'=>'time', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        '_maxValueTime' => {'type'=>'Element', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        'maxValueDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        '_maxValueDecimal' => {'type'=>'Element', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        'maxValueInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        '_maxValueInteger' => {'type'=>'Element', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        'maxValuePositiveInt' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        '_maxValuePositiveInt' => {'type'=>'Element', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        'maxValueUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        '_maxValueUnsignedInt' => {'type'=>'Element', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        'maxValueQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
        'maxLength' => {'type'=>'integer', 'path'=>'ElementDefinition.maxLength', 'min'=>0, 'max'=>1},
        '_maxLength' => {'type'=>'Element', 'path'=>'ElementDefinition._maxLength', 'min'=>0, 'max'=>1},
        'condition' => {'type'=>'id', 'path'=>'ElementDefinition.condition', 'min'=>0, 'max'=>Float::INFINITY},
        '_condition' => {'type'=>'Element', 'path'=>'ElementDefinition._condition', 'min'=>0, 'max'=>Float::INFINITY},
        'constraint' => {'type'=>'ElementDefinition::Constraint', 'path'=>'ElementDefinition.constraint', 'min'=>0, 'max'=>Float::INFINITY},
        'mustSupport' => {'type'=>'boolean', 'path'=>'ElementDefinition.mustSupport', 'min'=>0, 'max'=>1},
        '_mustSupport' => {'type'=>'Element', 'path'=>'ElementDefinition._mustSupport', 'min'=>0, 'max'=>1},
        'isModifier' => {'type'=>'boolean', 'path'=>'ElementDefinition.isModifier', 'min'=>0, 'max'=>1},
        '_isModifier' => {'type'=>'Element', 'path'=>'ElementDefinition._isModifier', 'min'=>0, 'max'=>1},
        'isModifierReason' => {'type'=>'string', 'path'=>'ElementDefinition.isModifierReason', 'min'=>0, 'max'=>1},
        '_isModifierReason' => {'type'=>'Element', 'path'=>'ElementDefinition._isModifierReason', 'min'=>0, 'max'=>1},
        'isSummary' => {'type'=>'boolean', 'path'=>'ElementDefinition.isSummary', 'min'=>0, 'max'=>1},
        '_isSummary' => {'type'=>'Element', 'path'=>'ElementDefinition._isSummary', 'min'=>0, 'max'=>1},
        'binding' => {'type'=>'ElementDefinition::Binding', 'path'=>'ElementDefinition.binding', 'min'=>0, 'max'=>1},
        'mapping' => {'type'=>'ElementDefinition::Mapping', 'path'=>'ElementDefinition.mapping', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Slicing < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4B'
        end

        def module_version
          FHIR::R4B
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Slicing.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Slicing._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Slicing.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'discriminator' => {'type'=>'ElementDefinition::Slicing::Discriminator', 'path'=>'Slicing.discriminator', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'Slicing.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Slicing._description', 'min'=>0, 'max'=>1},
          'ordered' => {'type'=>'boolean', 'path'=>'Slicing.ordered', 'min'=>0, 'max'=>1},
          '_ordered' => {'type'=>'Element', 'path'=>'Slicing._ordered', 'min'=>0, 'max'=>1},
          'rules' => {'valid_codes'=>{'http://hl7.org/fhir/resource-slicing-rules'=>['closed', 'open', 'openAtEnd']}, 'type'=>'code', 'path'=>'Slicing.rules', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-slicing-rules'}},
          '_rules' => {'type'=>'Element', 'path'=>'Slicing._rules', 'min'=>0, 'max'=>1}
        }

        class Discriminator < FHIR::Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          def module_version_name
            'R4B'
          end

          def module_version
            FHIR::R4B
          end

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Discriminator.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Discriminator._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Discriminator.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/discriminator-type'=>['value', 'exists', 'pattern', 'type', 'profile']}, 'type'=>'code', 'path'=>'Discriminator.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/discriminator-type'}},
            '_type' => {'type'=>'Element', 'path'=>'Discriminator._type', 'min'=>0, 'max'=>1},
            'path' => {'type'=>'string', 'path'=>'Discriminator.path', 'min'=>1, 'max'=>1},
            '_path' => {'type'=>'Element', 'path'=>'Discriminator._path', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id        # 0-1 string
          attr_accessor :_id       # 0-1 Element
          attr_accessor :extension # 0-* [ Extension ]
          attr_accessor :type      # 1-1 code
          attr_accessor :_type     # 0-1 Element
          attr_accessor :path      # 1-1 string
          attr_accessor :_path     # 0-1 Element
        end

        attr_accessor :id            # 0-1 string
        attr_accessor :_id           # 0-1 Element
        attr_accessor :extension     # 0-* [ Extension ]
        attr_accessor :discriminator # 0-* [ ElementDefinition::Slicing::Discriminator ]
        attr_accessor :description   # 0-1 string
        attr_accessor :_description  # 0-1 Element
        attr_accessor :ordered       # 0-1 boolean
        attr_accessor :_ordered      # 0-1 Element
        attr_accessor :rules         # 1-1 code
        attr_accessor :_rules        # 0-1 Element
      end

      class Base < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4B'
        end

        def module_version
          FHIR::R4B
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Base.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Base._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Base.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'path' => {'type'=>'string', 'path'=>'Base.path', 'min'=>1, 'max'=>1},
          '_path' => {'type'=>'Element', 'path'=>'Base._path', 'min'=>0, 'max'=>1},
          'min' => {'type'=>'unsignedInt', 'path'=>'Base.min', 'min'=>1, 'max'=>1},
          '_min' => {'type'=>'Element', 'path'=>'Base._min', 'min'=>0, 'max'=>1},
          'max' => {'type'=>'string', 'path'=>'Base.max', 'min'=>1, 'max'=>1},
          '_max' => {'type'=>'Element', 'path'=>'Base._max', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id        # 0-1 string
        attr_accessor :_id       # 0-1 Element
        attr_accessor :extension # 0-* [ Extension ]
        attr_accessor :path      # 1-1 string
        attr_accessor :_path     # 0-1 Element
        attr_accessor :min       # 1-1 unsignedInt
        attr_accessor :_min      # 0-1 Element
        attr_accessor :max       # 1-1 string
        attr_accessor :_max      # 0-1 Element
      end

      class Type < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4B'
        end

        def module_version
          FHIR::R4B
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Type.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Type._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Type.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'type'=>'uri', 'path'=>'Type.code', 'min'=>1, 'max'=>1},
          '_code' => {'type'=>'Element', 'path'=>'Type._code', 'min'=>0, 'max'=>1},
          'profile' => {'type'=>'canonical', 'path'=>'Type.profile', 'min'=>0, 'max'=>Float::INFINITY},
          '_profile' => {'type'=>'Element', 'path'=>'Type._profile', 'min'=>0, 'max'=>Float::INFINITY},
          'targetProfile' => {'type'=>'canonical', 'path'=>'Type.targetProfile', 'min'=>0, 'max'=>Float::INFINITY},
          '_targetProfile' => {'type'=>'Element', 'path'=>'Type._targetProfile', 'min'=>0, 'max'=>Float::INFINITY},
          'aggregation' => {'valid_codes'=>{'http://hl7.org/fhir/resource-aggregation-mode'=>['contained', 'referenced', 'bundled']}, 'type'=>'code', 'path'=>'Type.aggregation', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-aggregation-mode'}},
          '_aggregation' => {'type'=>'Element', 'path'=>'Type._aggregation', 'min'=>0, 'max'=>Float::INFINITY},
          'versioning' => {'valid_codes'=>{'http://hl7.org/fhir/reference-version-rules'=>['either', 'independent', 'specific']}, 'type'=>'code', 'path'=>'Type.versioning', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/reference-version-rules'}},
          '_versioning' => {'type'=>'Element', 'path'=>'Type._versioning', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id             # 0-1 string
        attr_accessor :_id            # 0-1 Element
        attr_accessor :extension      # 0-* [ Extension ]
        attr_accessor :code           # 1-1 uri
        attr_accessor :_code          # 0-1 Element
        attr_accessor :profile        # 0-* [ canonical ]
        attr_accessor :_profile       # 0-* [ Element ]
        attr_accessor :targetProfile  # 0-* [ canonical ]
        attr_accessor :_targetProfile # 0-* [ Element ]
        attr_accessor :aggregation    # 0-* [ code ]
        attr_accessor :_aggregation   # 0-* [ Element ]
        attr_accessor :versioning     # 0-1 code
        attr_accessor :_versioning    # 0-1 Element
      end

      class Example < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4B'
        end

        def module_version
          FHIR::R4B
        end

        MULTIPLE_TYPES = {
          'value' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Example.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Example._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Example.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'label' => {'type'=>'string', 'path'=>'Example.label', 'min'=>1, 'max'=>1},
          '_label' => {'type'=>'Element', 'path'=>'Example._label', 'min'=>0, 'max'=>1},
          'valueBase64Binary' => {'type'=>'base64Binary', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueBase64Binary' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueBoolean' => {'type'=>'boolean', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueBoolean' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueCanonical' => {'type'=>'canonical', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueCanonical' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueCode' => {'type'=>'code', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueCode' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueDate' => {'type'=>'date', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueDate' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueDateTime' => {'type'=>'dateTime', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueDateTime' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueDecimal' => {'type'=>'decimal', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueDecimal' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueId' => {'type'=>'id', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueId' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueInstant' => {'type'=>'instant', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueInstant' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueInteger' => {'type'=>'integer', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueInteger' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueMarkdown' => {'type'=>'markdown', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueMarkdown' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueOid' => {'type'=>'oid', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueOid' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valuePositiveInt' => {'type'=>'positiveInt', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valuePositiveInt' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueString' => {'type'=>'string', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueString' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueTime' => {'type'=>'time', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueTime' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueUnsignedInt' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueUri' => {'type'=>'uri', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueUri' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueUrl' => {'type'=>'url', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueUrl' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueUuid' => {'type'=>'uuid', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          '_valueUuid' => {'type'=>'Element', 'path'=>'Example.value[x]', 'min'=>0, 'max'=>1},
          'valueAddress' => {'type'=>'Address', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueAge' => {'type'=>'Age', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueAnnotation' => {'type'=>'Annotation', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueAttachment' => {'type'=>'Attachment', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueCodeableReference' => {'type'=>'CodeableReference', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueCoding' => {'type'=>'Coding', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueContactPoint' => {'type'=>'ContactPoint', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueCount' => {'type'=>'Count', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueDistance' => {'type'=>'Distance', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueDuration' => {'type'=>'Duration', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueHumanName' => {'type'=>'HumanName', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueIdentifier' => {'type'=>'Identifier', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueMoney' => {'type'=>'Money', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valuePeriod' => {'type'=>'Period', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueRange' => {'type'=>'Range', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueRatio' => {'type'=>'Ratio', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueRatioRange' => {'type'=>'RatioRange', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueReference' => {'type'=>'Reference', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueSampledData' => {'type'=>'SampledData', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueSignature' => {'type'=>'Signature', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueTiming' => {'type'=>'Timing', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueContactDetail' => {'type'=>'ContactDetail', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueContributor' => {'type'=>'Contributor', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueDataRequirement' => {'type'=>'DataRequirement', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueExpression' => {'type'=>'Expression', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueParameterDefinition' => {'type'=>'ParameterDefinition', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueRelatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueTriggerDefinition' => {'type'=>'TriggerDefinition', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueUsageContext' => {'type'=>'UsageContext', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
          'valueDosage' => {'type'=>'Dosage', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :_id                      # 0-1 Element
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :label                    # 1-1 string
        attr_accessor :_label                   # 0-1 Element
        attr_accessor :valueBase64Binary        # 1-1 base64Binary
        attr_accessor :_valueBase64Binary       # 0-1 Element
        attr_accessor :valueBoolean             # 1-1 boolean
        attr_accessor :_valueBoolean            # 0-1 Element
        attr_accessor :valueCanonical           # 1-1 canonical
        attr_accessor :_valueCanonical          # 0-1 Element
        attr_accessor :valueCode                # 1-1 code
        attr_accessor :_valueCode               # 0-1 Element
        attr_accessor :valueDate                # 1-1 date
        attr_accessor :_valueDate               # 0-1 Element
        attr_accessor :valueDateTime            # 1-1 dateTime
        attr_accessor :_valueDateTime           # 0-1 Element
        attr_accessor :valueDecimal             # 1-1 decimal
        attr_accessor :_valueDecimal            # 0-1 Element
        attr_accessor :valueId                  # 1-1 id
        attr_accessor :_valueId                 # 0-1 Element
        attr_accessor :valueInstant             # 1-1 instant
        attr_accessor :_valueInstant            # 0-1 Element
        attr_accessor :valueInteger             # 1-1 integer
        attr_accessor :_valueInteger            # 0-1 Element
        attr_accessor :valueMarkdown            # 1-1 markdown
        attr_accessor :_valueMarkdown           # 0-1 Element
        attr_accessor :valueOid                 # 1-1 oid
        attr_accessor :_valueOid                # 0-1 Element
        attr_accessor :valuePositiveInt         # 1-1 positiveInt
        attr_accessor :_valuePositiveInt        # 0-1 Element
        attr_accessor :valueString              # 1-1 string
        attr_accessor :_valueString             # 0-1 Element
        attr_accessor :valueTime                # 1-1 time
        attr_accessor :_valueTime               # 0-1 Element
        attr_accessor :valueUnsignedInt         # 1-1 unsignedInt
        attr_accessor :_valueUnsignedInt        # 0-1 Element
        attr_accessor :valueUri                 # 1-1 uri
        attr_accessor :_valueUri                # 0-1 Element
        attr_accessor :valueUrl                 # 1-1 url
        attr_accessor :_valueUrl                # 0-1 Element
        attr_accessor :valueUuid                # 1-1 uuid
        attr_accessor :_valueUuid               # 0-1 Element
        attr_accessor :valueAddress             # 1-1 Address
        attr_accessor :valueAge                 # 1-1 Age
        attr_accessor :valueAnnotation          # 1-1 Annotation
        attr_accessor :valueAttachment          # 1-1 Attachment
        attr_accessor :valueCodeableConcept     # 1-1 CodeableConcept
        attr_accessor :valueCodeableReference   # 1-1 CodeableReference
        attr_accessor :valueCoding              # 1-1 Coding
        attr_accessor :valueContactPoint        # 1-1 ContactPoint
        attr_accessor :valueCount               # 1-1 Count
        attr_accessor :valueDistance            # 1-1 Distance
        attr_accessor :valueDuration            # 1-1 Duration
        attr_accessor :valueHumanName           # 1-1 HumanName
        attr_accessor :valueIdentifier          # 1-1 Identifier
        attr_accessor :valueMoney               # 1-1 Money
        attr_accessor :valuePeriod              # 1-1 Period
        attr_accessor :valueQuantity            # 1-1 Quantity
        attr_accessor :valueRange               # 1-1 Range
        attr_accessor :valueRatio               # 1-1 Ratio
        attr_accessor :valueRatioRange          # 1-1 RatioRange
        attr_accessor :valueReference           # 1-1 Reference()
        attr_accessor :valueSampledData         # 1-1 SampledData
        attr_accessor :valueSignature           # 1-1 Signature
        attr_accessor :valueTiming              # 1-1 Timing
        attr_accessor :valueContactDetail       # 1-1 ContactDetail
        attr_accessor :valueContributor         # 1-1 Contributor
        attr_accessor :valueDataRequirement     # 1-1 DataRequirement
        attr_accessor :valueExpression          # 1-1 Expression
        attr_accessor :valueParameterDefinition # 1-1 ParameterDefinition
        attr_accessor :valueRelatedArtifact     # 1-1 RelatedArtifact
        attr_accessor :valueTriggerDefinition   # 1-1 TriggerDefinition
        attr_accessor :valueUsageContext        # 1-1 UsageContext
        attr_accessor :valueDosage              # 1-1 Dosage
      end

      class Constraint < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4B'
        end

        def module_version
          FHIR::R4B
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Constraint.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Constraint._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Constraint.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'key' => {'type'=>'id', 'path'=>'Constraint.key', 'min'=>1, 'max'=>1},
          '_key' => {'type'=>'Element', 'path'=>'Constraint._key', 'min'=>0, 'max'=>1},
          'requirements' => {'type'=>'string', 'path'=>'Constraint.requirements', 'min'=>0, 'max'=>1},
          '_requirements' => {'type'=>'Element', 'path'=>'Constraint._requirements', 'min'=>0, 'max'=>1},
          'severity' => {'valid_codes'=>{'http://hl7.org/fhir/constraint-severity'=>['error', 'warning']}, 'type'=>'code', 'path'=>'Constraint.severity', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/constraint-severity'}},
          '_severity' => {'type'=>'Element', 'path'=>'Constraint._severity', 'min'=>0, 'max'=>1},
          'human' => {'type'=>'string', 'path'=>'Constraint.human', 'min'=>1, 'max'=>1},
          '_human' => {'type'=>'Element', 'path'=>'Constraint._human', 'min'=>0, 'max'=>1},
          'expression' => {'type'=>'string', 'path'=>'Constraint.expression', 'min'=>0, 'max'=>1},
          '_expression' => {'type'=>'Element', 'path'=>'Constraint._expression', 'min'=>0, 'max'=>1},
          'xpath' => {'type'=>'string', 'path'=>'Constraint.xpath', 'min'=>0, 'max'=>1},
          '_xpath' => {'type'=>'Element', 'path'=>'Constraint._xpath', 'min'=>0, 'max'=>1},
          'source' => {'type'=>'canonical', 'path'=>'Constraint.source', 'min'=>0, 'max'=>1},
          '_source' => {'type'=>'Element', 'path'=>'Constraint._source', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id            # 0-1 string
        attr_accessor :_id           # 0-1 Element
        attr_accessor :extension     # 0-* [ Extension ]
        attr_accessor :key           # 1-1 id
        attr_accessor :_key          # 0-1 Element
        attr_accessor :requirements  # 0-1 string
        attr_accessor :_requirements # 0-1 Element
        attr_accessor :severity      # 1-1 code
        attr_accessor :_severity     # 0-1 Element
        attr_accessor :human         # 1-1 string
        attr_accessor :_human        # 0-1 Element
        attr_accessor :expression    # 0-1 string
        attr_accessor :_expression   # 0-1 Element
        attr_accessor :xpath         # 0-1 string
        attr_accessor :_xpath        # 0-1 Element
        attr_accessor :source        # 0-1 canonical
        attr_accessor :_source       # 0-1 Element
      end

      class Binding < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4B'
        end

        def module_version
          FHIR::R4B
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Binding.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Binding._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Binding.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'strength' => {'valid_codes'=>{'http://hl7.org/fhir/binding-strength'=>['required', 'extensible', 'preferred', 'example']}, 'type'=>'code', 'path'=>'Binding.strength', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/binding-strength'}},
          '_strength' => {'type'=>'Element', 'path'=>'Binding._strength', 'min'=>0, 'max'=>1},
          'description' => {'type'=>'string', 'path'=>'Binding.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Binding._description', 'min'=>0, 'max'=>1},
          'valueSet' => {'type'=>'canonical', 'path'=>'Binding.valueSet', 'min'=>0, 'max'=>1},
          '_valueSet' => {'type'=>'Element', 'path'=>'Binding._valueSet', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id           # 0-1 string
        attr_accessor :_id          # 0-1 Element
        attr_accessor :extension    # 0-* [ Extension ]
        attr_accessor :strength     # 1-1 code
        attr_accessor :_strength    # 0-1 Element
        attr_accessor :description  # 0-1 string
        attr_accessor :_description # 0-1 Element
        attr_accessor :valueSet     # 0-1 canonical
        attr_accessor :_valueSet    # 0-1 Element
      end

      class Mapping < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4B'
        end

        def module_version
          FHIR::R4B
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Mapping.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Mapping._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Mapping.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identity' => {'type'=>'id', 'path'=>'Mapping.identity', 'min'=>1, 'max'=>1},
          '_identity' => {'type'=>'Element', 'path'=>'Mapping._identity', 'min'=>0, 'max'=>1},
          'language' => {'type'=>'code', 'path'=>'Mapping.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
          '_language' => {'type'=>'Element', 'path'=>'Mapping._language', 'min'=>0, 'max'=>1},
          'map' => {'type'=>'string', 'path'=>'Mapping.map', 'min'=>1, 'max'=>1},
          '_map' => {'type'=>'Element', 'path'=>'Mapping._map', 'min'=>0, 'max'=>1},
          'comment' => {'type'=>'string', 'path'=>'Mapping.comment', 'min'=>0, 'max'=>1},
          '_comment' => {'type'=>'Element', 'path'=>'Mapping._comment', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id        # 0-1 string
        attr_accessor :_id       # 0-1 Element
        attr_accessor :extension # 0-* [ Extension ]
        attr_accessor :identity  # 1-1 id
        attr_accessor :_identity # 0-1 Element
        attr_accessor :language  # 0-1 code
        attr_accessor :_language # 0-1 Element
        attr_accessor :map       # 1-1 string
        attr_accessor :_map      # 0-1 Element
        attr_accessor :comment   # 0-1 string
        attr_accessor :_comment  # 0-1 Element
      end

      attr_accessor :id                              # 0-1 string
      attr_accessor :_id                             # 0-1 Element
      attr_accessor :extension                       # 0-* [ Extension ]
      attr_accessor :modifierExtension               # 0-* [ Extension ]
      attr_accessor :path                            # 1-1 string
      attr_accessor :_path                           # 0-1 Element
      attr_accessor :representation                  # 0-* [ code ]
      attr_accessor :_representation                 # 0-* [ Element ]
      attr_accessor :sliceName                       # 0-1 string
      attr_accessor :_sliceName                      # 0-1 Element
      attr_accessor :sliceIsConstraining             # 0-1 boolean
      attr_accessor :_sliceIsConstraining            # 0-1 Element
      attr_accessor :label                           # 0-1 string
      attr_accessor :_label                          # 0-1 Element
      attr_accessor :code                            # 0-* [ Coding ]
      attr_accessor :slicing                         # 0-1 ElementDefinition::Slicing
      attr_accessor :short                           # 0-1 string
      attr_accessor :_short                          # 0-1 Element
      attr_accessor :definition                      # 0-1 markdown
      attr_accessor :_definition                     # 0-1 Element
      attr_accessor :comment                         # 0-1 markdown
      attr_accessor :_comment                        # 0-1 Element
      attr_accessor :requirements                    # 0-1 markdown
      attr_accessor :_requirements                   # 0-1 Element
      attr_accessor :alias                           # 0-* [ string ]
      attr_accessor :_alias                          # 0-* [ Element ]
      attr_accessor :min                             # 0-1 unsignedInt
      attr_accessor :_min                            # 0-1 Element
      attr_accessor :max                             # 0-1 string
      attr_accessor :_max                            # 0-1 Element
      attr_accessor :base                            # 0-1 ElementDefinition::Base
      attr_accessor :contentReference                # 0-1 uri
      attr_accessor :_contentReference               # 0-1 Element
      attr_accessor :type                            # 0-* [ ElementDefinition::Type ]
      attr_accessor :defaultValueBase64Binary        # 0-1 base64Binary
      attr_accessor :_defaultValueBase64Binary       # 0-1 Element
      attr_accessor :defaultValueBoolean             # 0-1 boolean
      attr_accessor :_defaultValueBoolean            # 0-1 Element
      attr_accessor :defaultValueCanonical           # 0-1 canonical
      attr_accessor :_defaultValueCanonical          # 0-1 Element
      attr_accessor :defaultValueCode                # 0-1 code
      attr_accessor :_defaultValueCode               # 0-1 Element
      attr_accessor :defaultValueDate                # 0-1 date
      attr_accessor :_defaultValueDate               # 0-1 Element
      attr_accessor :defaultValueDateTime            # 0-1 dateTime
      attr_accessor :_defaultValueDateTime           # 0-1 Element
      attr_accessor :defaultValueDecimal             # 0-1 decimal
      attr_accessor :_defaultValueDecimal            # 0-1 Element
      attr_accessor :defaultValueId                  # 0-1 id
      attr_accessor :_defaultValueId                 # 0-1 Element
      attr_accessor :defaultValueInstant             # 0-1 instant
      attr_accessor :_defaultValueInstant            # 0-1 Element
      attr_accessor :defaultValueInteger             # 0-1 integer
      attr_accessor :_defaultValueInteger            # 0-1 Element
      attr_accessor :defaultValueMarkdown            # 0-1 markdown
      attr_accessor :_defaultValueMarkdown           # 0-1 Element
      attr_accessor :defaultValueOid                 # 0-1 oid
      attr_accessor :_defaultValueOid                # 0-1 Element
      attr_accessor :defaultValuePositiveInt         # 0-1 positiveInt
      attr_accessor :_defaultValuePositiveInt        # 0-1 Element
      attr_accessor :defaultValueString              # 0-1 string
      attr_accessor :_defaultValueString             # 0-1 Element
      attr_accessor :defaultValueTime                # 0-1 time
      attr_accessor :_defaultValueTime               # 0-1 Element
      attr_accessor :defaultValueUnsignedInt         # 0-1 unsignedInt
      attr_accessor :_defaultValueUnsignedInt        # 0-1 Element
      attr_accessor :defaultValueUri                 # 0-1 uri
      attr_accessor :_defaultValueUri                # 0-1 Element
      attr_accessor :defaultValueUrl                 # 0-1 url
      attr_accessor :_defaultValueUrl                # 0-1 Element
      attr_accessor :defaultValueUuid                # 0-1 uuid
      attr_accessor :_defaultValueUuid               # 0-1 Element
      attr_accessor :defaultValueAddress             # 0-1 Address
      attr_accessor :defaultValueAge                 # 0-1 Age
      attr_accessor :defaultValueAnnotation          # 0-1 Annotation
      attr_accessor :defaultValueAttachment          # 0-1 Attachment
      attr_accessor :defaultValueCodeableConcept     # 0-1 CodeableConcept
      attr_accessor :defaultValueCodeableReference   # 0-1 CodeableReference
      attr_accessor :defaultValueCoding              # 0-1 Coding
      attr_accessor :defaultValueContactPoint        # 0-1 ContactPoint
      attr_accessor :defaultValueCount               # 0-1 Count
      attr_accessor :defaultValueDistance            # 0-1 Distance
      attr_accessor :defaultValueDuration            # 0-1 Duration
      attr_accessor :defaultValueHumanName           # 0-1 HumanName
      attr_accessor :defaultValueIdentifier          # 0-1 Identifier
      attr_accessor :defaultValueMoney               # 0-1 Money
      attr_accessor :defaultValuePeriod              # 0-1 Period
      attr_accessor :defaultValueQuantity            # 0-1 Quantity
      attr_accessor :defaultValueRange               # 0-1 Range
      attr_accessor :defaultValueRatio               # 0-1 Ratio
      attr_accessor :defaultValueRatioRange          # 0-1 RatioRange
      attr_accessor :defaultValueReference           # 0-1 Reference()
      attr_accessor :defaultValueSampledData         # 0-1 SampledData
      attr_accessor :defaultValueSignature           # 0-1 Signature
      attr_accessor :defaultValueTiming              # 0-1 Timing
      attr_accessor :defaultValueContactDetail       # 0-1 ContactDetail
      attr_accessor :defaultValueContributor         # 0-1 Contributor
      attr_accessor :defaultValueDataRequirement     # 0-1 DataRequirement
      attr_accessor :defaultValueExpression          # 0-1 Expression
      attr_accessor :defaultValueParameterDefinition # 0-1 ParameterDefinition
      attr_accessor :defaultValueRelatedArtifact     # 0-1 RelatedArtifact
      attr_accessor :defaultValueTriggerDefinition   # 0-1 TriggerDefinition
      attr_accessor :defaultValueUsageContext        # 0-1 UsageContext
      attr_accessor :defaultValueDosage              # 0-1 Dosage
      attr_accessor :meaningWhenMissing              # 0-1 markdown
      attr_accessor :_meaningWhenMissing             # 0-1 Element
      attr_accessor :orderMeaning                    # 0-1 string
      attr_accessor :_orderMeaning                   # 0-1 Element
      attr_accessor :fixedBase64Binary               # 0-1 base64Binary
      attr_accessor :_fixedBase64Binary              # 0-1 Element
      attr_accessor :fixedBoolean                    # 0-1 boolean
      attr_accessor :_fixedBoolean                   # 0-1 Element
      attr_accessor :fixedCanonical                  # 0-1 canonical
      attr_accessor :_fixedCanonical                 # 0-1 Element
      attr_accessor :fixedCode                       # 0-1 code
      attr_accessor :_fixedCode                      # 0-1 Element
      attr_accessor :fixedDate                       # 0-1 date
      attr_accessor :_fixedDate                      # 0-1 Element
      attr_accessor :fixedDateTime                   # 0-1 dateTime
      attr_accessor :_fixedDateTime                  # 0-1 Element
      attr_accessor :fixedDecimal                    # 0-1 decimal
      attr_accessor :_fixedDecimal                   # 0-1 Element
      attr_accessor :fixedId                         # 0-1 id
      attr_accessor :_fixedId                        # 0-1 Element
      attr_accessor :fixedInstant                    # 0-1 instant
      attr_accessor :_fixedInstant                   # 0-1 Element
      attr_accessor :fixedInteger                    # 0-1 integer
      attr_accessor :_fixedInteger                   # 0-1 Element
      attr_accessor :fixedMarkdown                   # 0-1 markdown
      attr_accessor :_fixedMarkdown                  # 0-1 Element
      attr_accessor :fixedOid                        # 0-1 oid
      attr_accessor :_fixedOid                       # 0-1 Element
      attr_accessor :fixedPositiveInt                # 0-1 positiveInt
      attr_accessor :_fixedPositiveInt               # 0-1 Element
      attr_accessor :fixedString                     # 0-1 string
      attr_accessor :_fixedString                    # 0-1 Element
      attr_accessor :fixedTime                       # 0-1 time
      attr_accessor :_fixedTime                      # 0-1 Element
      attr_accessor :fixedUnsignedInt                # 0-1 unsignedInt
      attr_accessor :_fixedUnsignedInt               # 0-1 Element
      attr_accessor :fixedUri                        # 0-1 uri
      attr_accessor :_fixedUri                       # 0-1 Element
      attr_accessor :fixedUrl                        # 0-1 url
      attr_accessor :_fixedUrl                       # 0-1 Element
      attr_accessor :fixedUuid                       # 0-1 uuid
      attr_accessor :_fixedUuid                      # 0-1 Element
      attr_accessor :fixedAddress                    # 0-1 Address
      attr_accessor :fixedAge                        # 0-1 Age
      attr_accessor :fixedAnnotation                 # 0-1 Annotation
      attr_accessor :fixedAttachment                 # 0-1 Attachment
      attr_accessor :fixedCodeableConcept            # 0-1 CodeableConcept
      attr_accessor :fixedCodeableReference          # 0-1 CodeableReference
      attr_accessor :fixedCoding                     # 0-1 Coding
      attr_accessor :fixedContactPoint               # 0-1 ContactPoint
      attr_accessor :fixedCount                      # 0-1 Count
      attr_accessor :fixedDistance                   # 0-1 Distance
      attr_accessor :fixedDuration                   # 0-1 Duration
      attr_accessor :fixedHumanName                  # 0-1 HumanName
      attr_accessor :fixedIdentifier                 # 0-1 Identifier
      attr_accessor :fixedMoney                      # 0-1 Money
      attr_accessor :fixedPeriod                     # 0-1 Period
      attr_accessor :fixedQuantity                   # 0-1 Quantity
      attr_accessor :fixedRange                      # 0-1 Range
      attr_accessor :fixedRatio                      # 0-1 Ratio
      attr_accessor :fixedRatioRange                 # 0-1 RatioRange
      attr_accessor :fixedReference                  # 0-1 Reference()
      attr_accessor :fixedSampledData                # 0-1 SampledData
      attr_accessor :fixedSignature                  # 0-1 Signature
      attr_accessor :fixedTiming                     # 0-1 Timing
      attr_accessor :fixedContactDetail              # 0-1 ContactDetail
      attr_accessor :fixedContributor                # 0-1 Contributor
      attr_accessor :fixedDataRequirement            # 0-1 DataRequirement
      attr_accessor :fixedExpression                 # 0-1 Expression
      attr_accessor :fixedParameterDefinition        # 0-1 ParameterDefinition
      attr_accessor :fixedRelatedArtifact            # 0-1 RelatedArtifact
      attr_accessor :fixedTriggerDefinition          # 0-1 TriggerDefinition
      attr_accessor :fixedUsageContext               # 0-1 UsageContext
      attr_accessor :fixedDosage                     # 0-1 Dosage
      attr_accessor :patternBase64Binary             # 0-1 base64Binary
      attr_accessor :_patternBase64Binary            # 0-1 Element
      attr_accessor :patternBoolean                  # 0-1 boolean
      attr_accessor :_patternBoolean                 # 0-1 Element
      attr_accessor :patternCanonical                # 0-1 canonical
      attr_accessor :_patternCanonical               # 0-1 Element
      attr_accessor :patternCode                     # 0-1 code
      attr_accessor :_patternCode                    # 0-1 Element
      attr_accessor :patternDate                     # 0-1 date
      attr_accessor :_patternDate                    # 0-1 Element
      attr_accessor :patternDateTime                 # 0-1 dateTime
      attr_accessor :_patternDateTime                # 0-1 Element
      attr_accessor :patternDecimal                  # 0-1 decimal
      attr_accessor :_patternDecimal                 # 0-1 Element
      attr_accessor :patternId                       # 0-1 id
      attr_accessor :_patternId                      # 0-1 Element
      attr_accessor :patternInstant                  # 0-1 instant
      attr_accessor :_patternInstant                 # 0-1 Element
      attr_accessor :patternInteger                  # 0-1 integer
      attr_accessor :_patternInteger                 # 0-1 Element
      attr_accessor :patternMarkdown                 # 0-1 markdown
      attr_accessor :_patternMarkdown                # 0-1 Element
      attr_accessor :patternOid                      # 0-1 oid
      attr_accessor :_patternOid                     # 0-1 Element
      attr_accessor :patternPositiveInt              # 0-1 positiveInt
      attr_accessor :_patternPositiveInt             # 0-1 Element
      attr_accessor :patternString                   # 0-1 string
      attr_accessor :_patternString                  # 0-1 Element
      attr_accessor :patternTime                     # 0-1 time
      attr_accessor :_patternTime                    # 0-1 Element
      attr_accessor :patternUnsignedInt              # 0-1 unsignedInt
      attr_accessor :_patternUnsignedInt             # 0-1 Element
      attr_accessor :patternUri                      # 0-1 uri
      attr_accessor :_patternUri                     # 0-1 Element
      attr_accessor :patternUrl                      # 0-1 url
      attr_accessor :_patternUrl                     # 0-1 Element
      attr_accessor :patternUuid                     # 0-1 uuid
      attr_accessor :_patternUuid                    # 0-1 Element
      attr_accessor :patternAddress                  # 0-1 Address
      attr_accessor :patternAge                      # 0-1 Age
      attr_accessor :patternAnnotation               # 0-1 Annotation
      attr_accessor :patternAttachment               # 0-1 Attachment
      attr_accessor :patternCodeableConcept          # 0-1 CodeableConcept
      attr_accessor :patternCodeableReference        # 0-1 CodeableReference
      attr_accessor :patternCoding                   # 0-1 Coding
      attr_accessor :patternContactPoint             # 0-1 ContactPoint
      attr_accessor :patternCount                    # 0-1 Count
      attr_accessor :patternDistance                 # 0-1 Distance
      attr_accessor :patternDuration                 # 0-1 Duration
      attr_accessor :patternHumanName                # 0-1 HumanName
      attr_accessor :patternIdentifier               # 0-1 Identifier
      attr_accessor :patternMoney                    # 0-1 Money
      attr_accessor :patternPeriod                   # 0-1 Period
      attr_accessor :patternQuantity                 # 0-1 Quantity
      attr_accessor :patternRange                    # 0-1 Range
      attr_accessor :patternRatio                    # 0-1 Ratio
      attr_accessor :patternRatioRange               # 0-1 RatioRange
      attr_accessor :patternReference                # 0-1 Reference()
      attr_accessor :patternSampledData              # 0-1 SampledData
      attr_accessor :patternSignature                # 0-1 Signature
      attr_accessor :patternTiming                   # 0-1 Timing
      attr_accessor :patternContactDetail            # 0-1 ContactDetail
      attr_accessor :patternContributor              # 0-1 Contributor
      attr_accessor :patternDataRequirement          # 0-1 DataRequirement
      attr_accessor :patternExpression               # 0-1 Expression
      attr_accessor :patternParameterDefinition      # 0-1 ParameterDefinition
      attr_accessor :patternRelatedArtifact          # 0-1 RelatedArtifact
      attr_accessor :patternTriggerDefinition        # 0-1 TriggerDefinition
      attr_accessor :patternUsageContext             # 0-1 UsageContext
      attr_accessor :patternDosage                   # 0-1 Dosage
      attr_accessor :example                         # 0-* [ ElementDefinition::Example ]
      attr_accessor :minValueDate                    # 0-1 date
      attr_accessor :_minValueDate                   # 0-1 Element
      attr_accessor :minValueDateTime                # 0-1 dateTime
      attr_accessor :_minValueDateTime               # 0-1 Element
      attr_accessor :minValueInstant                 # 0-1 instant
      attr_accessor :_minValueInstant                # 0-1 Element
      attr_accessor :minValueTime                    # 0-1 time
      attr_accessor :_minValueTime                   # 0-1 Element
      attr_accessor :minValueDecimal                 # 0-1 decimal
      attr_accessor :_minValueDecimal                # 0-1 Element
      attr_accessor :minValueInteger                 # 0-1 integer
      attr_accessor :_minValueInteger                # 0-1 Element
      attr_accessor :minValuePositiveInt             # 0-1 positiveInt
      attr_accessor :_minValuePositiveInt            # 0-1 Element
      attr_accessor :minValueUnsignedInt             # 0-1 unsignedInt
      attr_accessor :_minValueUnsignedInt            # 0-1 Element
      attr_accessor :minValueQuantity                # 0-1 Quantity
      attr_accessor :maxValueDate                    # 0-1 date
      attr_accessor :_maxValueDate                   # 0-1 Element
      attr_accessor :maxValueDateTime                # 0-1 dateTime
      attr_accessor :_maxValueDateTime               # 0-1 Element
      attr_accessor :maxValueInstant                 # 0-1 instant
      attr_accessor :_maxValueInstant                # 0-1 Element
      attr_accessor :maxValueTime                    # 0-1 time
      attr_accessor :_maxValueTime                   # 0-1 Element
      attr_accessor :maxValueDecimal                 # 0-1 decimal
      attr_accessor :_maxValueDecimal                # 0-1 Element
      attr_accessor :maxValueInteger                 # 0-1 integer
      attr_accessor :_maxValueInteger                # 0-1 Element
      attr_accessor :maxValuePositiveInt             # 0-1 positiveInt
      attr_accessor :_maxValuePositiveInt            # 0-1 Element
      attr_accessor :maxValueUnsignedInt             # 0-1 unsignedInt
      attr_accessor :_maxValueUnsignedInt            # 0-1 Element
      attr_accessor :maxValueQuantity                # 0-1 Quantity
      attr_accessor :maxLength                       # 0-1 integer
      attr_accessor :_maxLength                      # 0-1 Element
      attr_accessor :condition                       # 0-* [ id ]
      attr_accessor :_condition                      # 0-* [ Element ]
      attr_accessor :constraint                      # 0-* [ ElementDefinition::Constraint ]
      attr_accessor :mustSupport                     # 0-1 boolean
      attr_accessor :_mustSupport                    # 0-1 Element
      attr_accessor :isModifier                      # 0-1 boolean
      attr_accessor :_isModifier                     # 0-1 Element
      attr_accessor :isModifierReason                # 0-1 string
      attr_accessor :_isModifierReason               # 0-1 Element
      attr_accessor :isSummary                       # 0-1 boolean
      attr_accessor :_isSummary                      # 0-1 Element
      attr_accessor :binding                         # 0-1 ElementDefinition::Binding
      attr_accessor :mapping                         # 0-* [ ElementDefinition::Mapping ]
    end
  end
end