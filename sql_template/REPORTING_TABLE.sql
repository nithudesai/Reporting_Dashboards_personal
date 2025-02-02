--liquibase formatted sql
--preconditions onFail:HALT onError:HALT

--changeset MEMBER_RESOURCE_MAPPIN:1 runOnChange:true stripComments:true
--labels: MEMBER_RESOURCE_MAPPIN
Use warehouse cdops_report_wh;
CREATE TRANSIENT TABLE IF NOT EXISTS CDOPS_STATESTORE.REPORTING.MEMBER_RESOURCE_MAPPING (
    account varchar COLLATE 'LOWER',
    role varchar COLLATE 'LOWER',
    warehouse varchar,
    database varchar
);
