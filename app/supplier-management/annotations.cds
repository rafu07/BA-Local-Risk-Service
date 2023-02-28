using SupplierService as service from '../../srv/external/SupplierService.csn';
annotate service.Suppliers with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'industry_sector',
            Value : industry_sector,
        },
        {
            $Type : 'UI.DataField',
            Label : 'tax_number',
            Value : tax_number,
        },
        {
            $Type : 'UI.DataField',
            Label : 'house_number',
            Value : house_number,
        },
        {
            $Type : 'UI.DataField',
            Label : 'street',
            Value : street,
        },
    ]
);
annotate service.Suppliers with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'industry_sector',
                Value : industry_sector,
            },
            {
                $Type : 'UI.DataField',
                Label : 'tax_number',
                Value : tax_number,
            },
            {
                $Type : 'UI.DataField',
                Label : 'house_number',
                Value : house_number,
            },
            {
                $Type : 'UI.DataField',
                Label : 'street',
                Value : street,
            },
            {
                $Type : 'UI.DataField',
                Label : 'post_code',
                Value : post_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'city',
                Value : city,
            },
            {
                $Type : 'UI.DataField',
                Label : 'country',
                Value : country,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
