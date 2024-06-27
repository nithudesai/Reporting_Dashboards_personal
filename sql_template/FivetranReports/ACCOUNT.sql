--liquibase formatted sql
--preconditions onFail:HALT onError:HALT

--changeset FIVETRAN_ACCOUNT:1 runOnChange:true stripComments:true
--labels: "FIVETRAN_ACCOUNT or GENERIC"

CREATE OR REPLACE VIEW   CDOPS_STATESTORE.REPORTING_EXT.VW_FIVETRAN_ACCOUNT AS
SELECT *
  FROM FIVETRAN_TERRAFORM_LAB_DB.FIVETRAN_LOG.ACCOUNT;

-- rollback DROP VIEW IF EXISTS CDOPS_STATESTORE.REPORTING_EXT.VW_FIVETRAN_ACCOUNT;