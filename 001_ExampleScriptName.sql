-- TO DO - SE E' PRESENTE LO SCRIPT - STOP EXECUTION
INSERT INTO `DbScriptMigration` (`MigrationId`, `MigrationName`, `MigrationDate`)
SELECT * FROM (SELECT UUID(),'001_ExampleScriptName',NOW()) AS tmp
WHERE NOT EXISTS (
    SELECT `MigrationName` FROM `DbScriptMigration` WHERE `MigrationName` = '001_ExampleScriptName'
) LIMIT 1;
