using app.entities from '../db/entities';

service Service_Entities {
    entity OrderHeaders as projection on entities.OrderHeaders;
    entity OrderItems   as projection on entities.OrderItems;
    entity Materials    as projection on entities.Materials;
}
