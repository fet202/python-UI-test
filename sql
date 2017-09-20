SELECT
     *
    FROM business_entity.business_entity ci
   WHERE ci.business_entity_type_guid IN (SELECT guid_revision
                                           FROM business_entity.business_entity_type
                                           WHERE code = 'inspection')

AND lower(actual_range) BETWEEN '2017-07-01'::DATE AND '2017-07-30'::DATE
